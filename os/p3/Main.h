header Main

  uses System, Thread, Synch

  functions
    main ()
    sleepingBarber ()

  class CustomerGroup
    superclass Object
    fields
      dicesNeeded: int
      isAllowed: bool
      --  thread: Thread
    methods
      Init (needed: int)
      Allow ()

  class FontDesk
    superclass Object
    fields
      --  status: array [5] of int             -- For each philosopher: HUNGRY, EATING, or THINKING
      cv: Condition
      mut: Mutex
      dices: int
      waiting: List[CustomerGroup]
    methods
      Init (numberOfDice: int)
      Request (numberOfDice: int)
      Return (numberOfDice: int)
  endClass

endHeader