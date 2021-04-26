code Main

-- 
-- varibles used by the customer and barber threads
--
var
    customersSem : Semaphore = new Semaphore
    barbers   : Semaphore = new Semaphore
    mutex     : Semaphore = new Semaphore
    waiting   : int = 0
    shop      : Barbershop

behavior Barbershop
    --
    --  Class used to print the state of barbershop on every change
    --
    method Init () 
        -- cutting hair and getting haircut semaphores (not used)
        Start = new Semaphore
        Fin = new Semaphore
        Start.Init (0)
        Fin.Init (0)
        -- mutual exclusion
        mut = new Mutex
        mut.Init ()
        -- state variables (-1 indicates non-existance)
        working = false     -- if the barber awake
        current = -1        -- the current person whose hair is being cut
        enter = -1          -- the person inside the door
        exit = -1           -- the person outside the door
        finished = -1       -- the person who just finished his cut
        chairs = CHAIRS     -- number of chairs
        -- array used to keep state of each chair
        Cust = new array of int {CHAIRS of -1}
        -- not used states
        waitingN = 0        -- number of customers waiting
        
        self.PrintHeader ()
    endMethod

    method Start ()
    --
    --  the barber wakes up
    --
        mut.Lock ()
            working = true
            self.PrintState ()
        mut.Unlock ()
    endMethod

    --
    --  the barber goes to sleep
    --
    method End ()
        mut.Lock ()
            working = false
            self.PrintState ()
        mut.Unlock ()
    endMethod

    method Enter (id: int)
    --
    --  customer comes inside
    --
        mut.Lock ()
        enter = id
        self.PrintState ()
        enter = -1
        mut.Unlock ()
    endMethod

    method Exit (id: int) 
    --
    --  customer goes outside
    --
        mut.Lock ()
        exit = id
        if finished == id
            finished = -1
        endIf
        self.PrintState ()
        exit = -1
        mut.Unlock ()
    endMethod

    --  
    --  this method assumes there is place to sit
    --
    method Sit (id: int) 
    -- 
    --  the customer sits in the queue
    --
        var i: int
            flag: bool = true
        mut.Lock ()
        for i=0 to chairs-1 by 1
            if Cust[i] == -1
                Cust[i] = id
                flag = false
                break
            endIf
        endFor
        self.PrintState()
        if flag
            FatalError("There was no place to sit")
        endIf
        mut.Unlock ()
    endMethod
    
    --
    --  method called when customer is about to be served
    --  this method assumes id is already sitting
    --
    method Unsit (id: int)
    --
    --  customer leaves the queue
    --
        var i: int
        mut.Lock ()
        for i=0 to chairs-1 by 1
            if Cust[i] == id
                Cust[i] = -1
                break
            endIf
        endFor
        mut.Unlock ()
    endMethod

    method Serve (id: int)
    --
    --  the customer starts getting their hair cut
    --
        mut.Lock ()
        current = id
        self.Unsit (id)
        self.PrintState ()
        mut.Unlock ()
    endMethod

    -- 
    -- finish/opposite of serve 
    --
    method Standup()
    --
    --  the customer being server stands up beside the chair
    --
        mut.Lock ()
        if finished == -1
            FatalError("No customer to finish")
        endIf
        finished = current
        current = -1
        self.PrintState ()
        mut.Unlock ()
    endMethod
    
    --
    --  The output is formatted this way:
    --  Idle    Chair   Waiting     In <-> Out
    --  zZz     [ ]     1|2|3|4      5 <-> 6
    --         ![1]     -|2|3|4      5 <-> 6
    --
    method PrintHeader ()
        var i: int
        print("Idle  Chair  ")
        if twoDigit 
            print("   ")
        endIf
        print("Waiting")
        for i = 1 to CHAIRS-3 by 1
            if twoDigit
                print(" ")
            endIf
            if i != CHAIRS-3
                print("  ")
            endIf
        endFor
        print(" ")
        if twoDigit
            print(" ")
        endIf
        print("In")
        print(" <-> ")
        print("Out")
        nl()
    endMethod

    method PrintState ()
        var i: int
        -- barber
        if !working
            print("zZz   ")
        else 
            print("     !")
        endIf

        -- main chair
        print("[")
        if current > -1
            if twoDigit && current < 10
                printInt(0)
            endIf
            printInt(current)
        else
            print(" ")
            if twoDigit
                print(" ")
            endIf
        endIf
        print("]")

        -- finished
        print(" ")
        if finished > -1
            if twoDigit && finished < 10
                printInt(0)
            endIf
            printInt(finished)
        else
            print(" ")
            if twoDigit
                print(" ")
            endIf
        endIf

        -- wait chairs
        print("  ")
        for i=0 to chairs-1 by 1 
            if Cust[i] == -1
                print("-")
                if twoDigit
                    print("-")
                endIf
            else
                if twoDigit && Cust[i] < 10
                    printInt(0)
                endIf
                printInt(Cust[i])
            endIf
            if i != chairs-1
                print("|")
            endIf
        endFor

        -- door entrance
        print("  ")
        if enter > -1
            if twoDigit
                if enter < 10
                    printInt(0)
                endIf
            endIf
            printInt(enter)
        else   
            print(" ")
            if twoDigit
                print(" ")
            endIf
        endIf
        print(" <-> ")

        -- door exit
        if exit > -1
            if twoDigit && exit < 10
                printInt(0)
            endIf
            printInt(exit)
        else
            print("  ")
        endIf

        -- finish
        nl()
    endMethod
  endBehavior


function WasteTime (duration: int)
    --  var x : int = 0
    --  while duration > 2000
    --      currentThread.Yield ()
    --      duration = duration - 2000
    --  endWhile
    while duration > 0
        --  x = x * 2
        duration = duration - 1
    endWhile
endFunction

var
    StartSem: Semaphore = new Semaphore
    FinishSem: Semaphore = new Semaphore

    --------------------------- Print Functions ----------------------
function CutHair()
    -- print start of barber work
    shop.Start ()
    StartSem.Up()
    WasteTime(10000)
    FinishSem.Down()
    -- print end of barber work
    shop.End ()
endFunction

function GetHaircut(id: int)
    StartSem.Down()
    -- print start of customer getting haircut
    shop.Serve (id)
    WasteTime(10000)
    -- print end of customer getting haircut
    shop.Standup ()
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
    var i: int = 0
    while i < N_CUTS
        mutex.Down ()
        --  print ("customer enter\n")
        shop.Enter (id)
        if waiting < CHAIRS
            waiting = waiting + 1
            customersSem.Up ()
            --  print ("customer sit\n")
            shop.Sit (id)
            mutex.Up ()
            barbers.Down ()
            --  print ("customer begin\n")
            GetHaircut (id)
            shop.Exit (id)
            --  print ("customer finish\n")
            i = i + 1
        else
            --  print ("customer leave\n")
            shop.Exit (id)
            mutex.Up ()
            if !try_again
                i = i + 1
            endIf
        endIf
    endWhile
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

    shop = new Barbershop
    shop.Init ()

    -- Print Semaphores
    StartSem.Init (0)
    FinishSem.Init (0)

    -- Zeros waiting customer
    customersSem.Init (0)
    -- Barber not ready
    barbers.Init (0)
    -- Mutual Exclusion (waiting lock)
    mutex.Init (1)
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

-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
--------------------------------- Gaming ----------------------------------------------------------
--------------------------------- Parlor ------------------------------------------------------------
-----------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------


-----------------------------  Front Desk  ---------------------------------   
behavior FrontDeskMonitor
    --
    --  This class acts as a monitor and manages all the requests and returns of dices 
    --  by using the state of the head of the queue, state of the queue itself,
    --  a mutex and two conditional variables
    --  
    --  Init ()
    --      dices: current dices in the desk
    --      needed: amound of die the head of the queue demands
    --
    --      mustWait: holds new requests in the entrance (prevents unordered permission)
    --      dieReady: condition variable for having enough dices to give to the head of queue
    --      mut: monitor mutex
    --
    --      isDeskBusy: true when someone is in queue
    --      inQueue: queue counter used to detect when to reset isDeskBusy
    --      
    --  Request ()
    --      Permits users to enter one by one,
    --      Gives them requested dice if available
    --      Else waits until ready
    --      And finally signal next waiting on exit
    --      
    --  Return ()
    --      Increases number of dices 
    --      And signals the waiting customer (if exists, and amount suffices)
    --      
    --  Withdraw (x)
    --      Decrease number of dices by x
    --
    --  Deposite (x)
    --      Increase number of dices by x
    --      
   
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
        inQueue = 0
        needed = -1
    endMethod
    
    method Request (numNeeded: int)
        mut.Lock ()
        self.Print ("requests", numNeeded)
        inQueue = inQueue + 1
        
        if isDeskBusy
            mustWait.Wait (&mut)
        endIf
        
        isDeskBusy = true
        needed = numNeeded
        
        while numNeeded > dices
            dieReady.Wait (&mut)
        endWhile

        self.Withdraw (numNeeded)
        self.Print ("proceeds with", numNeeded)

        inQueue = inQueue - 1
        if inQueue == 0
            isDeskBusy = false
        endIf
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

    method Withdraw(x: int)
        dices = dices - x
    endMethod

    method Deposit(x: int)
        dices = dices + x
    endMethod

    method Print (str: String, count: int) 
    --
    -- This method prints the current thread's name and the arguments. 
    -- It also prints the current number of dice available.
    --
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

-----------------------------  Customer Thread  ---------------------------------
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

-- function used for testing functionality of barbershop class
function barber_test ()
    --  var bar : Barbershop
    --  bar = new Barbershop
    --  bar.Init ()
    --  bar.PrintState ()
    --  bar.Enter (1)
    --  bar.Sit (1)
    --  bar.Start ()
    --  bar.Serve (1)
    --  bar.Standup ()
    --  bar.Finish ()
    --  bar.Enter (3)
    --  bar.Exit(1)
    --  bar.Sit (3)
    --  bar.Enter(21)
    --  bar.Sit(21)
    --  bar.Serve(21)
    --  bar.Exit (5)
endFunction

-----------------------------  Main  ---------------------------------
function main ()
    InitializeScheduler ()
    --  sleepingBarber ()
    gamingParlor (8)
    ThreadFinish ()
endFunction

endCode