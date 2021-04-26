header Main

  uses System, Thread, Synch

  -- sleeping barber constants
  const 
    CHAIRS = 5        -- number of chairs :))
    CUST_N = 20         -- number of customers
    twoDigit = true   -- two-digit print style
  -- customer cunstants
  const 
    N_CUTS = 10       -- number of cuts each customer wants to get
    try_again = false -- return back to shop if full

  functions
    main ()
    sleepingBarber ()
    gamingParlor (dieNumber: int)


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

    methods
      Init ()

      Start ()
      End ()
      
      Serve (id: int)
      Standup ()

      Sit (id: int)
      Unsit (id: int)

      Enter (id: int)
      Exit (id: int)

      PrintHeader ()
      PrintState ()

      Dequeue ()
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