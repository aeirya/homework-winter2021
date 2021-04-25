header Main

  uses System, Thread, Synch

  functions
    main ()
    --  sleepingBarber ()

  --  class CustomerGroup
  --    superclass Listable

  --    fields
  --      dicesNeeded: int
  --      isAllowed: bool
  --      --  thread: Thread
  --    methods
  --      Init (needed: int)
  --      Allow ()
  --  endClass

  class FrontDeskMonitor
    superclass Object
    fields
      --  status: array [5] of int             -- For each philosopher: HUNGRY, EATING, or THINKING
      mustWait: Condition
      dieReady: Condition
      mut: Mutex
      dices: int

      waiting: bool
      needed: int
    methods
      Init (numberOfDice: int)
      Request (numNeeded: int)
      Return (numReturned: int)
      Print (str: String, count: int)

      Withdraw(x: int)
      Deposit(x: int)
  endClass

endHeader