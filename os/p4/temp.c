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
          waitingThreads.AddToEnd (currentThread)
          if waitingSignallers.IsEmpty ()
            -- if i'm a free soul
            mutex.Unlock ()
          else
            -- go back to my signaller
            t = waitingSignallers.Remove ()
            readyList.AddToEnd (t)
          endIf
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
          t = waitingThreads.Remove ()
          if t
            waitingSignallers.AddToFront (currentThread)
            t.status = READY
            readyList.AddToEnd (t)
          endIf
          oldIntStat = SetInterruptsTo (oldIntStat)
        endMethod
      
      ----------  HoareCondition . Farewell  ----------

      method Farewell (mutex: ptr to Mutex) 
          var
            t: ptr to Thread

          if waitingSignallers.IsEmpty ()
            mutex.Unlock ()
          else  
            t = waitingSignallers.Remove ()
            readyList.AddToEnd (t)
          endIf
        endMethod

  endBehavior