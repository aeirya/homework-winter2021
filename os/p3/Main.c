code Main

var
    customersSem : Semaphore = new Semaphore
    barbers   : Semaphore = new Semaphore
    mutex     : Semaphore = new Semaphore
    --  printer   : Mutex = new Mutex
    waiting   : int = 0
const 
    CHAIRS = 5  
    CUST_N = 3

function WasteTime (duration: int)
    while duration > 0
        duration = duration - 1
    endWhile
endFunction

var
    StartSem: Semaphore = new Semaphore
    FinishSem: Semaphore = new Semaphore

    --------------------------- Print Functions ----------------------
function CutHair()
    -- print start of barber work
    StartSem.Up()
    WasteTime(10000)
    FinishSem.Down()
    -- print end of barber work
endFunction

function GetHaircut()
    StartSem.Down()
    -- print start of customer getting haircut
    WasteTime(10000)
    -- print end of customer getting haircut
    FinishSem.Up()
endFunction

---------------------------  Barber  --------------------------
function barber ()
    while true
        customersSem.Down ()
        mutex.Down ()
        waiting = waiting - 1
        --  print ("barber start\n")
        barbers.Up ()
        mutex.Up ()
        
        CutHair()
        --  print ("barber end\n")
    endWhile

endFunction

---------------------------  Customer  --------------------------
function customer (id: int)
    mutex.Down ()
    --  print ("customer enter\n")
    if waiting < CHAIRS
        waiting = waiting + 1
        customersSem.Up ()
        --  print ("customer sit\n")
        mutex.Up ()
        barbers.Down ()
        --  print ("customer begin\n")

        GetHaircut ()
        --  print ("customer finish\n")
    else
        --  print ("customer leave\n")
        mutex.Up ()
    endIf
    ThreadFinish ()
endFunction

---------------------------  Sleeping Barber  --------------------------
var 
    threadB : Thread = new Thread
    thArr: array [CUST_N] of Thread = new array of Thread {CUST_N of new Thread }

function sleepingBarber ()
    var 
        name_str: ptr to array of char = "C"
        i: int = 0  -- Iterator variable

    -- Print Semaphores
    StartSem.Init (0)
    FinishSem.Init (0)

    
    -- Zeros waiting customer
    customersSem.Init (0)
    -- Barber not ready
    barbers.Init (0)
    -- Mutual Exclusion (waiting lock)
    mutex.Init (1)
    -- Printer lock
    --  printer.Init ()
    -- Init Barber Thread
    threadB.Init ("Barber")
    threadB.Fork (barber, 0)
    -- Init Customer Threads
    for i=0 to CUST_N-1 by 1
        name_str[0] = intToChar(65+i)
        thArr[i].Init (name_str)
        thArr[i].Fork (customer, i)
    endFor
endFunction

--------------------------------------------------------------------------------
-------------------- Gaming Parlor ---------------------------------------------
--------------------------------------------------------------------------------

-----------------------------  Customer Group  ---------------------------------
--  behavior CustomerGroup
--      method Init (needed: int)
--          dicesNeeded = needed
--          isAllowed = false
--      endMethod
    
--      method Allow ()
--          isAllowed = true
--      endMethod
--  endBehavior

-----------------------------  Front Desk  ---------------------------------   

behavior FrontDeskMonitor
    method Init (numberOfDice: int)
        dices = numberOfDice
        -- Init cv
        mustWait = new Condition
        mustWait.Init ()
        dieReady = new Condition
        dieReady.Init ()
        -- Init mut
        mut = new Mutex
        mut.Init ()
        -- Wating 
        isDeskBusy = false
        needed = -1
    endMethod
    
    method Request (numNeeded: int)
        mut.Lock ()
        self.Print ("requests", numNeeded)
        
        if !isDeskBusy
            mustWait.Signal (&mut)
        endIf
        while isDeskBusy == true
            mustWait.Wait (&mut)
        endWhile
        isDeskBusy = true
        needed = numNeeded
        
        while numNeeded > dices
            dieReady.Wait (&mut)
        endWhile

        self.Withdraw (numNeeded)
        self.Print ("proceeds with", numNeeded)

        isDeskBusy = false
        mustWait.Signal (&mut)

        mut.Unlock ()
    endMethod

    method Return (numReturned: int)
        mut.Lock ()
        self.Deposit (numReturned)
        self.Print ("releases and adds back", numReturned)
        if isDeskBusy
            if needed <= dices
                dieReady.Signal (&mut)
            endIf
        endIf
        mut.Unlock ()
    endMethod

    --
    -- This method prints the current thread's name and the arguments. 
    -- It also prints the current number of dice available.
    --
    method Print (str: String, count: int) 
        print (currentThread.name)
        print (" ")
        print (str)
        print (" ")
        printInt (count)
        nl ()
        print ("------------------------------Number of dice now avail = ") 
        printInt (dices)
        nl ()
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
    customers[0].Init ("CustomerA")
    customers[1].Init ("CustomerB")
    customers[2].Init ("CustomerC")
    customers[3].Init ("CustomerD")
    customers[4].Init ("CustomerE")
    customers[5].Init ("CustomerF")
    customers[6].Init ("CustomerG")
    customers[7].Init ("CustomerH")

    for i=0 to customerN-1 by 1
        customers[i].Fork (customerGroup, games[i])
    endFor    
endFunction

--  Customer Thread  --
function customerGroup (game: int)
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