header Main

  uses System, Thread, Synch

  functions
    main ()
    --  sleepingBarber ()

  class CustomerGroup
    superclass Listable

    fields
      dicesNeeded: int
      isAllowed: bool
      --  thread: Thread
    methods
      Init (needed: int)
      Allow ()
  endClass

  class FrontDeskMonitor
    superclass Object
    fields
      --  status: array [5] of int             -- For each philosopher: HUNGRY, EATING, or THINKING
      cv: Condition
      mut: Mutex
      dices: int
      waiting: List [CustomerGroup]
    methods
      Init (numberOfDice: int)
      Request (numNeeded: int)
      Return (numReturned: int)
      Print (str: String, count: int)

      AddCustomer (dicesNeeded: int) returns ptr to CustomerGroup
      AskPermission ()
      Withdraw(x: int)
      Deposit(x: int)
  endClass

endHeader