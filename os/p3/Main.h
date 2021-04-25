header Main

  uses System, Thread, Synch

  const 
    CHAIRS = 5  
    CUST_N = 9

  functions
    main ()
    --  sleepingBarber ()

  class Barbershop
    superclass Object
    fields
      Start: Semaphore
      Fin:   Semaphore
      Cust:  array[CHAIRS] of int
      waitingN: int
      mut: Mutex
      current: int
      working: bool
      chairs: int
      enter: int
      exit: int
      finished: int
      twoDigit: bool
      --  l: List [int]

    methods
      Init ()
      Start ()
      Finish ()
      PrintState ()
      Serve (id: int)
      Standup ()
      Sit (id: int)
      Unsit (id: int)
      Enter (id: int)
      Exit (id: int)
  endClass


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

      isDeskBusy: bool
      inQueue: int
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