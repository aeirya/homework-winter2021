header Kernel

  ---------------  HoareCondition  ---------------

  class HoareCondition
    superclass Object
    fields
      waitingThreads: List [Thread]
      waitingSignallers: List [Thread]
    methods
      Init ()
      Wait (mutex: ptr to Mutex)
      Signal (mutex: ptr to Mutex)
      Farewell (mutex: ptr to Mutex)
  endClass

endHeader
