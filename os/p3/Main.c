code Main

--  var
--      customers : Semaphore = new Semaphore
--      barbers   : Semaphore = new Semaphore
--      mutex     : Semaphore = new Semaphore
--      printer   : Mutex = new Mutex
--      waiting   : int = 0
--  const 
--      CHAIRS = 5  
--      CUST_N = 3

--  ---------------------------  Barber  --------------------------
--  function barber ()
--      while true
--          customers.Down ()
--          mutex.Down ()
--          waiting = waiting - 1
--          print ("barber start\n")
--          barbers.Up ()
--          mutex.Up ()
        
--          -- CutHair()
--          print ("barber end\n")
--      endWhile

--  endFunction

--  ---------------------------  Customer  --------------------------
--  function customer (id: int)
--      mutex.Down ()
--      print ("customer enter\n")
--      if waiting < CHAIRS
--          waiting = waiting + 1
--          customers.Up ()
--          print ("customer sit\n")
--          mutex.Up ()
--          barbers.Down ()
--          print ("customer begin\n")

--          -- GetHaircut ()
--          print ("customer finish\n")
--      else
--          print ("customer leave\n")
--          mutex.Up ()
--      endIf
--      ThreadFinish ()
--  endFunction

--  ---------------------------  Sleeping Barber  --------------------------
--  var 
--      threadB : Thread = new Thread
--      thArr: array [CUST_N] of Thread = new array of Thread {CUST_N of new Thread }

--  function sleepingBarber ()
--      -- Iterator variable
--      var i: int = 0
--      -- Zeros waiting customer
--      customers.Init (0)
--      -- Barber not ready
--      barbers.Init (0)
--      -- Mutual Exclusion (waiting lock)
--      mutex.Init (1)
--      -- Printer lock
--      printer.Init ()
--      -- Init Barber Thread
--      threadB.Init ("Barber")
--      threadB.Fork (barber, 0)
--      -- Init Customer Threads
--      for i=0 to CUST_N-1 by 1
--          thArr[i].Init ("Customer "+i)
--          thArr[i].Fork (customer, i)
--      endFor
--  endFunction

-----------------------------  Customer Group  ---------------------------------
behavior CustomerGroup
    method Init (needed: int)
        dicesNeeded = needed
        isAllowed = false
    endMethod
    
    method Allow ()
        isAllowed = true
    endMethod
endBehavior

-----------------------------  Front Desk  ---------------------------------   
behavior FrontDeskMonitor
    method Init (numberOfDice: int)
        dices = numberOfDice
        waiting = new List [CustomerGroup]
        -- Init cv
        cv = new Condition
        cv.Init ()
        -- Init mut
        mut = new Mutex
        mut.Init ()
    endMethod
    
    method Request (numNeeded: int)
        var c: ptr to CustomerGroup
        mut.Lock ()
        self.Print ("requests", numNeeded)
        c = self.AddCustomer (numNeeded)
        self.AskPermission ()
        while !c.isAllowed
            cv.Wait (&mut)
        endWhile
        self.Withdraw (numNeeded)
        self.Print ("proceeds with", numNeeded)
        mut.Unlock ()
    endMethod

    method Return (numReturned: int)
        mut.Lock ()
        self.Print ("releases and adds back", numReturned)
        self.Deposit (numReturned)
        self.AskPermission ()  
        cv.Broadcast (&mut)
        mut.Unlock ()
    endMethod

    --
    -- This method prints the current thread's name and the arguments. 
    -- It also prints the current number of dice available.
    --
    method Print (str: String, count: int) 
        -- print (currentThread.name)
        print (" ")
        print (str)
        print (" ")
        printInt (count)
        nl ()
        print ("------------------------------Number of dice now avail = ") 
        printInt (dices)
        nl ()
    endMethod

    method AddCustomer (dicesNeeded: int) returns ptr to CustomerGroup
        var c: CustomerGroup = new CustomerGroup
        c.Init (dicesNeeded)
        waiting.AddToEnd (&c)
        return &c
    endMethod

    method AskPermission ()
        var c : ptr to CustomerGroup
        if !waiting.IsEmpty ()
            c = waiting.Remove ()
            printInt(c.dicesNeeded)
            debug
            if c.dicesNeeded <= dices
                c.Allow ()
            else
                waiting.AddToFront (c)
            endIf
        endIf
    endMethod
    
    method Withdraw(x: int)
        dices = dices - x
    endMethod

    method Deposit(x: int)
        dices = dices + x
    endMethod
endBehavior

-----------------------------  Gaming Parlor  ---------------------------------
-- Number of customers --
const 
    customerN = 8
    gameIterations = 5

-- Games --
const
    Backgammon = 4
    Risk = 5
    Monopoly = 2
    Pictionary = 1
var 
    customers: array [customerN] of Thread = new array of Thread {customerN of new Thread }
    games: array[customerN] of int = new array of int {
        Backgammon, Backgammon, Risk, Risk, Monopoly, Monopoly, Pictionary, Pictionary
    }
    mon: FrontDeskMonitor

function gamingParlor(dieNumber: int) 
    var i: int
    -- desk
    mon = new FrontDeskMonitor
    mon.Init (dieNumber)
    -- cusotmers 
    for i=0 to customerN-1 by 1
        customers[i].Init ("Customer"+i )
        customers[i].Fork (customer, games[i])
    endFor    
endFunction

--  Customer Thread  --
function customer (game: int)
    var i: int
    -- game: the number of die the game needs
    -- iter: number of times the game is played
    for i = 1 to gameIterations by 1
        mon.Request (game)
        currentThread.Yield ()
        mon.Return (game)
    endFor
    ThreadFinish ()
endFunction

-----------------------------  Main  ---------------------------------
function main ()
    InitializeScheduler ()
    --  sleepingBarber ()
    gamingParlor (8)
    ThreadFinish ()
endFunction

endCode