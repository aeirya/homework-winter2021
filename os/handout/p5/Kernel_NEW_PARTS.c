
-----------------------------  Handle_Sys_Exit  ---------------------------------

  function Handle_Sys_Exit (returnStatus: int)
      -- NOT IMPLEMENTED
      print ("Handle_Sys_Exit invoked!")
      nl ()
      print ("exit code: ")
      printInt (returnStatus)
      nl ()
    endFunction

-----------------------------  Handle_Sys_Shutdown  ---------------------------------

  function Handle_Sys_Shutdown ()
    FatalError ("Syscall \'Shutdown\' was invoked by a user thread")
    endFunction

-----------------------------  Handle_Sys_Yield  ---------------------------------

  function Handle_Sys_Yield ()
      -- NOT IMPLEMENTED
    print ("Handle_Sys_Yield invoked!")
    nl ()
    endFunction

-----------------------------  Handle_Sys_Fork  ---------------------------------

  function Handle_Sys_Fork () returns int
      -- NOT IMPLEMENTED
      print ("Handle_Sys_Fork invoked!")
      nl ()
      return 1000
    endFunction

-----------------------------  Handle_Sys_Join  ---------------------------------

  function Handle_Sys_Join (processID: int) returns int
      -- NOT IMPLEMENTED
      print ("Handle_Sys_Join invoked!")
      nl ()
      print ("\t ProcessID: ")
      printInt (processID)
      nl ()
      return 2000
    endFunction

-----------------------------  Handle_Sys_Exec  ---------------------------------

  function Handle_Sys_Exec (filename: ptr to array of char) returns int
      -- NOT IMPLEMENTED
      var i : int
      print ("Handle_Sys_Exec invoked!")
      nl ()

      --  print ("\t filename: ")
      --  i = currentThread.myProcess.addrSpace.GetStringFromVirtual (& strBuffer, filename asInteger, MAX_STRING_SIZE)
      --  if i == -1
      --    print ("! cannot copy string \n")
      --    return -1
      --  else
      --    print (& strBuffer)
      --    nl ()
      --  endIf

      i = Exec (filename)
      if i == -1
        print ("! exec fail \n")
        return -1
      endIf
      return 3000
    endFunction

-----------------------------  Handle_Sys_Create  ---------------------------------

  function Handle_Sys_Create (filename: ptr to array of char) returns int
      -- NOT IMPLEMENTED
      var i : int
      print ("Handle_Sys_Create invoked!")
      nl ()
      print ("\t virt addr of filename: ")
      printHex (filename asInteger)
      nl ()
      print ("\t filename: ")
      i = currentThread.myProcess.addrSpace.GetStringFromVirtual (& strBuffer, filename asInteger, MAX_STRING_SIZE)
      print (& strBuffer)
      nl ()
      return 4000
    endFunction

-----------------------------  Handle_Sys_Open  ---------------------------------

  function Handle_Sys_Open (filename: ptr to array of char) returns int
      -- NOT IMPLEMENTED
      var i : int
      print ("Handle_Sys_Open invoked!")
      nl ()
      print ("\t virt addr of filename: ")
      printHex (filename asInteger)
      nl ()
      print ("\t filename: ")
      i = currentThread.myProcess.addrSpace.GetStringFromVirtual (& strBuffer, filename asInteger, MAX_STRING_SIZE)
      print (& strBuffer)
      return 5000
    endFunction

-----------------------------  Handle_Sys_Read  ---------------------------------

  function Handle_Sys_Read (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
      -- NOT IMPLEMENTED
      print ("Handle_Sys_Read invoked!")
      nl ()
      print ("\t file desc: ")
      printInt (fileDesc)
      nl ()
      print ("\t virt addr of buffer: ")
      printHex (buffer asInteger)
      nl ()
      print ("\t read size: ")
      printInt (sizeInBytes)
      nl ()
      return 6000
    endFunction

-----------------------------  Handle_Sys_Write  ---------------------------------

  function Handle_Sys_Write (fileDesc: int, buffer: ptr to char, sizeInBytes: int) returns int
      -- NOT IMPLEMENTED
      var i : int
      print ("Handle_Sys_Write invoked!")
      nl ()
      print ("sys write file desc: ")
      printInt (fileDesc)
      nl ()
      print ("virt addr of buffer: ")
      printHex (buffer asInteger)
      nl ()
      print ("buffer current content: ")
      i = currentThread.myProcess.addrSpace.GetStringFromVirtual (& strBuffer, buffer asInteger, MAX_STRING_SIZE)
      print (& strBuffer)
      nl ()
      print ("size: ")
      printInt (sizeInBytes)
      nl ()
      return 7000
    endFunction

-----------------------------  Handle_Sys_Seek  ---------------------------------

  function Handle_Sys_Seek (fileDesc: int, newCurrentPos: int) returns int
      -- NOT IMPLEMENTED
      print ("Handle_Sys_Seek invoked!")
      nl ()
      print ("sys seek file desc: ")
      printInt (fileDesc)
      nl ()
      print ("sys seek new position: ")
      printInt (newCurrentPos)
      nl ()
      return 8000
    endFunction

-----------------------------  Handle_Sys_Close  ---------------------------------

  function Handle_Sys_Close (fileDesc: int)
      -- NOT IMPLEMENTED
      print ("Handle_Sys_Close invoked!")
      nl ()
      print ("sys close file desc: ")
      printInt (fileDesc)
      nl ()
    endFunction


----------------------------------------------------------------------------------
------------------------------  User Code Stuff  ---------------------------------
----------------------------------------------------------------------------------

-----------------------------  StartUserProcess  ---------------------------------
  function StartUserProcess (arg: int)
      var 
        pcb : ptr to ProcessControlBlock
        openFile : ptr to OpenFile
        initPC : int
        initUserStack : int
        initSystemStack : int
        oldIntStat : int
      
      --  make process
      pcb = processManager.GetANewProcess ()
      --  connect pcb and thread
      pcb.myThread = currentThread
      currentThread.myProcess = pcb
      
      --  open exec file
      openFile = fileManager.Open ("TestProgram1")
      --  load exec file (into process adress space)
      initPC = openFile.LoadExecutable (& pcb.addrSpace)
      --  check for error
      if initPC < 0
        FatalError ("error at loading the exec")
      endIf
      -- close file
      fileManager.Close (openFile)

      -- HERE I SHOULD BE SETTING USER STACK TOP
      initUserStack = pcb.addrSpace.numberOfPages * PAGE_SIZE
      -- HERE I SHOULD BE SETTING SYSTEM STACK TOP
      initSystemStack = (& currentThread.systemStack[SYSTEM_STACK_SIZE-1]) asInteger

      --  (1) disable interrupt
      oldIntStat = SetInterruptsTo (DISABLED)
      --  (2) init page regs
      pcb.addrSpace.SetToThisPageTable ()
      -- (3) is user thread
      currentThread.isUserThread = true
      -- (4)->(9) call assembly routine
      BecomeUserThread (initUserStack, initPC, initSystemStack)

    endFunction

-----------------------------  InitFirstProcess  ---------------------------------
    function InitFirstProcess ()
        var 
          th : ptr to Thread
          
        th = threadManager.GetANewThread ()
        th.Init ("UserProgram")
        th.Fork (StartUserProcess, 0)
      endFunction


-----------------------------  LoadExecutable  ---------------------------------
    --  function LoadExecutable (filename: String, addrSpace: ptr to AddrSpace) returns int
    --      var
          

          
    --        -- return starting program counter
    --        return initPC
    --    endFunction

-----------------------------  Exec  ---------------------------------
    var
      strBuffer: array [MAX_STRING_SIZE] of char = new array of char {MAX_STRING_SIZE of ' '}

    function Exec (filename: String) returns int
        var
          pcb: ptr to ProcessControlBlock
          newAddrSpace: AddrSpace
          -- loading the executable
          initPC: int
          openFile : ptr to OpenFile
          -- get string from virutal result
          i: int
          -- used for switching (similar to user process)
          initUserStack : int
          initSystemStack : int
          oldIntStat : int
        
        pcb = currentThread.myProcess
        newAddrSpace = new AddrSpace
        newAddrSpace.Init ()

        -- buffer filename in kernel
        i = pcb.addrSpace.GetStringFromVirtual (& strBuffer, filename asInteger, MAX_STRING_SIZE)
        if i < 0
          print ("!\tcannot get string from virutal\n")
          return -1
        endIf

        --  open exec file
        openFile = fileManager.Open (& strBuffer)
        -- check if exists
        if ! openFile
          print("!\tfile does not exitst\n")
          return -1
        endIf

        --  load exec file (into process adress space)
        initPC = openFile.LoadExecutable (& newAddrSpace)
        -- close file
        fileManager.Close (openFile)

        if initPC < 0
          print ("!\tcannot load executable\n")
          return -1
        endIf

        -- FREE PREVIOUS ADDRESS SPACE
        frameManager.ReturnAllFrames (& pcb.addrSpace)
        -- replace address space
        pcb.addrSpace = newAddrSpace

        -- HERE I SHOULD BE SETTING USER STACK TOP
        initUserStack = pcb.addrSpace.numberOfPages * PAGE_SIZE
        -- HERE I SHOULD BE SETTING SYSTEM STACK TOP
        initSystemStack = (& currentThread.systemStack[SYSTEM_STACK_SIZE-1]) asInteger

        --  (1) disable interrupt
        oldIntStat = SetInterruptsTo (DISABLED)
        --  (2) init page regs
        pcb.addrSpace.SetToThisPageTable ()
        -- (3) is user thread
        currentThread.isUserThread = true
        -- (4)->(9) call assembly routine
        BecomeUserThread (initUserStack, initPC, initSystemStack)

        return 0
      endFunction

endCode