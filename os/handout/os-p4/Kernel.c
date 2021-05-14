code Kernel

  -- Aeirya Mohammadi

-----------------------------  HoareCondition  ---------------------------------

 behavior HoareCondition

    -- This class provides the following methods:
    --    Wait(mutex)
    --      This method assumes you have the mutex locked
    --      It adds the thread to the waitng threads list
    --      It also awakens the signaller (if exists)
    --         
    --    Signal(mutex)
    --      Awakens a thread if any thread is waiting
    --      It adds current thraed to waiting signallers (to be awakened later)
    --
    --    Farewell(mutex)
    --      Either awakens the signaller (if exists) or unlock the mutex
    --
    --    Init()
    --         Init two lists for keeping threads behind wait, and signaller stack

      ----------  HoareCondition . Init  ----------

      method Init ()
          waitingThreads = new List [Thread]
          waitingSignallers = new List [Thread]
        endMethod

      ----------  HoareCondition . Wait  ----------

      method Wait (mutex: ptr to Mutex)
          var
            oldIntStat: int
            t: ptr to Thread

          if ! mutex.IsHeldByCurrentThread ()
            FatalError ("Attempt to wait on condition when mutex is not held")
          endIf

          oldIntStat = SetInterruptsTo (DISABLED)

          -- queue before sleep
          waitingThreads.AddToEnd (currentThread)
          
          if waitingSignallers.IsEmpty ()
          -- if i'm a free soul unlock
            mutex.Unlock ()
          else
          -- go back to my signaller
            t = waitingSignallers.Remove ()
            readyList.AddToEnd (t)
          endIf
          -- go to sleep
          currentThread.Sleep ()

          mutex.Lock ()

          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

      ----------  HoareCondition . Signal  ----------

      method Signal (mutex: ptr to Mutex)
          var
            oldIntStat: int
            t: ptr to Thread

          if ! mutex.IsHeldByCurrentThread ()
            FatalError ("Attempt to signal a condition when mutex is not held")
          endIf

          oldIntStat = SetInterruptsTo (DISABLED)

          -- if there is anybody waiting, awaken them
          t = waitingThreads.Remove ()
          if t
            -- current thread is the signaller (therefore is stored in the stack)
            waitingSignallers.AddToFront (currentThread)
            t.status = READY
            readyList.AddToEnd (t)
          endIf

          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod
      
      ----------  HoareCondition . Farewell  ----------

      method Farewell (mutex: ptr to Mutex) 
      ---
      --- This method should be called upon exiting an entry point
      --- It assumes you have the mutex locked
      --- You do NOT need to unlock mutex lock after calling this
      ---
          var
            t: ptr to Thread

          oldIntStat = SetInterruptsTo (DISABLED)

          if waitingSignallers.IsEmpty ()
            mutex.Unlock ()
          else  
            t = waitingSignallers.Remove ()
            readyList.AddToEnd (t)
          endIf

          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod

  endBehavior

-----------------------------  ThreadManager  ---------------------------------

  behavior ThreadManager

      ----------  ThreadManager . Init  ----------

      method Init ()
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "ThreadManager" object.
        -- 
          var i: int
              th : ptr to Thread
              name : String
          print ("Initializing Thread Manager...\n")
          threadTable = new array of Thread {MAX_NUMBER_OF_PROCESSES of new Thread}
          freeList = new List [Thread]
          for i = 0 to MAX_NUMBER_OF_PROCESSES - 1
            name = "Thread  "
            name[7] = intToChar (i + 26)
    
            th = & threadTable[i]
            th.Init (name)
            th.status = UNUSED
            freeList.AddToEnd (th)
          endFor

          lock = new Mutex
          lock.Init ()
          bell = new Condition
          bell.Init ()
        endMethod

      ----------  ThreadManager . GetANewThread  ----------

      method GetANewThread () returns ptr to Thread
        -- 
        -- This method returns a new Thread; it will wait
        -- until one is available.
        -- 
          var th: ptr to Thread
          lock.Lock ()
          while freeList.IsEmpty ()
              bell.Wait (&lock)
            endWhile
          th = freeList.Remove()
          th.status = JUST_CREATED
          lock.Unlock ()
          return th
        endMethod

      ----------  ThreadManager . FreeThread  ----------

      method FreeThread (th: ptr to Thread)
        -- 
        -- This method is passed a ptr to a Thread;  It moves it
        -- to the FREE list.
        -- 
          lock.Lock ()
          th.status = UNUSED
          freeList.AddToEnd (th)
          bell.Broadcast (&lock)
          lock.Unlock ()
        endMethod

    endBehavior

--------------------------  ProcessControlBlock  ------------------------------

  behavior ProcessControlBlock

      ----------  ProcessControlBlock . Init  ----------
      --
      -- This method is called once for every PCB at startup time.
      --
      method Init ()
          pid = -1
          status = FREE
          addrSpace = new AddrSpace
          addrSpace.Init ()
-- Uncomment this code later...
/*
          fileDescriptor = new array of ptr to OpenFile
                      { MAX_FILES_PER_PROCESS of null }
*/
        endMethod

    endBehavior

-----------------------------  ProcessManager  ---------------------------------

  behavior ProcessManager

      ----------  ProcessManager . Init  ----------

      method Init ()
        --
        -- This method is called once at kernel startup time to initialize
        -- the one and only "processManager" object.  
        --
          var i: int = 0
          nextPid = 1
          processManagerLock = new Mutex
          processManagerLock.Init ()
          aProcessBecameFree = new Condition
          aProcessBecameFree.Init ()
          aProcessDied = new Condition
          aProcessDied.Init ()
          freeList = new List [ProcessControlBlock]
          processTable = new array of ProcessControlBlock {MAX_NUMBER_OF_PROCESSES of new ProcessControlBlock}
          -- init process control blocks
          for i = 0 to MAX_NUMBER_OF_PROCESSES-1
            processTable[i].Init ()
            processTable[i].status = FREE
            freeList.AddToFront (&processTable[i])
          endFor
        endMethod

      ----------  ProcessManager . GetANewProcess  ----------

      method GetANewProcess () returns ptr to ProcessControlBlock
        --
        -- This method returns a new ProcessControlBlock; it will wait
        -- until one is available.
        --
          var p : ptr to ProcessControlBlock
          processManagerLock.Lock ()
          -- wait for free block to return
          while freeList.IsEmpty ()
              aProcessBecameFree.Wait (&processManagerLock)
            endWhile
          p = freeList.Remove ()
          p.status = ACTIVE
          -- set pid and update next pid
          p.pid = nextPid
          nextPid = nextPid + 1
          processManagerLock.Unlock ()
          return p
        endMethod

      ----------  ProcessManager . FreeProcess  ----------

      method FreeProcess (p: ptr to ProcessControlBlock)
        --
        -- This method is passed a ptr to a Process;  It moves it
        -- to the FREE list.
        --
          processManagerLock.Lock ()
          p.status = FREE
          freeList.AddToEnd (p)
          aProcessBecameFree.Signal (&processManagerLock)
          processManagerLock.Unlock ()
        endMethod


    endBehavior

-----------------------------  FrameManager  ---------------------------------

  behavior FrameManager

      ----------  FrameManager . GetNewFrames  ----------

      method GetNewFrames (aPageTable: ptr to AddrSpace, numFramesNeeded: int)
        ---
        --- Allocate numFramesNeeded frames and store info in address space.
        --- If not enough frames ready, wait
        ---
          var i, f, frameAddr: int

          -- Acquire mutex lock
          frameManagerLock.Lock ()
          
          -- Wait for enough frames
          while numberFreeFrames < numFramesNeeded
            newFramesAvailable.Wait (&frameManagerLock)
          endWhile
          
          -- for each frame needed
          for i = 0 to numFramesNeeded - 1

            -- Find a free frame and allocate it
            f = framesInUse.FindZeroAndSet ()
            
            -- physical address of the frame
            frameAddr = PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME + (f * PAGE_SIZE)

            -- store address in table
            aPageTable.SetFrameAddr (i, frameAddr)
          endFor
          
          -- update free frames number
          numberFreeFrames = numberFreeFrames - numFramesNeeded
          -- set number of frames allocated
          aPageTable.numberOfPages = numFramesNeeded

          -- Release mutex lock
          frameManagerLock.Unlock()
        endMethod

      ----------  FrameManager . ReturnAllFrames  ----------

      method ReturnAllFrames (aPageTable: ptr to AddrSpace)
        --
        --  This method releases frames used by the adress space.
        --  for each frame it clears the bit 
        --
          var i, frameAddr, bitNumber, numFramesReturned: int
          
          -- Acquire lock
          frameManagerLock.Lock ()

          -- returning all of address space pages
          numFramesReturned = aPageTable.numberOfPages

          for i = 0 to numFramesReturned - 1
            -- get address
            frameAddr = aPageTable.ExtractFrameAddr (i)
            -- dev note: compare to line 1080
            bitNumber = (frameAddr - PHYSICAL_ADDRESS_OF_FIRST_PAGE_FRAME) / PAGE_SIZE
            -- clear 'is used' bit
            framesInUse.ClearBit (bitNumber)
          endFor

          -- update number of free frames
          numberFreeFrames = numberFreeFrames + numFramesReturned
          -- call all waiting threads (starvation alert!)
          newFramesAvailable.Broadcast (&frameManagerLock)
          -- unlock lock
          frameManagerLock.Unlock ()
        endMethod

    endBehavior

