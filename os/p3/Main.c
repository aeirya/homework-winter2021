code Main

    var
        customers : Semaphore = new Semaphore
        barbers   : Semaphore = new Semaphore
        mutex     : Semaphore = new Semaphore
        printer   : Mutex = new Mutex
        waiting   : int = 0
    const 
        CHAIRS = 5  
        CUST_N = 3

    ---------------------------  Barber  --------------------------
    function barber ()
        while true
            customers.Down ()
            mutex.Down ()
            waiting = waiting - 1
            print ("barber start\n")
            barbers.Up ()
            mutex.Up ()
            
            -- CutHair()
            print ("barber end\n")
        endWhile

    endFunction

    ---------------------------  Customer  --------------------------
    function customer (id: int)
        mutex.Down ()
        print ("customer enter\n")
        if waiting < CHAIRS
            waiting = waiting + 1
            customers.Up ()
            print ("customer sit\n")
            mutex.Up ()
            barbers.Down ()
            print ("customer begin\n")

            -- GetHaircut ()
            print ("customer finish\n")
        else
            print ("customer leave\n")
            mutex.Up ()
        endIf
        ThreadFinish ()
    endFunction

    ---------------------------  Sleeping Barber  --------------------------
    var 
        threadB : Thread = new Thread
        thArr: array [CUST_N] of Thread = new array of Thread {CUST_N of new Thread }

    function sleepingBarber ()
        -- Iterator variable
        var i: int = 0
        -- Zeros waiting customer
        customers.Init (0)
        -- Barber not ready
        barbers.Init (0)
        -- Mutual Exclusion (waiting lock)
        mutex.Init (1)
        -- Printer lock
        printer.Init ()
        -- Init Barber Thread
        threadB.Init ("Barber")
        threadB.Fork (barber, 0)
        -- Init Customer Threads
        for i=0 to CUST_N-1 by 1
            thArr[i].Init ("Customer "+i)
            thArr[i].Fork (customer, i)
        endFor

    endFunction
    
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
    behavior FrontDesk
        method Init (numberOfDice: int)
            dices = numberOfDice
        endMethod
        
        method Request (numberOfDice: int)
            var c : CustomerGroup
            mut.Lock ()
            c = self.AddCustomer (numberOfDice)
            self.AskPermission ()
            while !c.isAllowed ()
                cv.Wait (&mut)
            endWhile
            self.Withdraw (numberOfDice)
            mut.Unlock ()
        endMethod

        method Return (numberOfDice: int)
            mut.Lock ()
            self.Deposit (numberOfDice)
            self.AskPermission ()  
            cv.Broadcast (&mut)
            mut.Unlock ()
        endMethod

        method AddCustomer (dicesNeeded: int) returns CustomerGroup
            var c: CustomerGroup = new CustomerGroup
            c.Init (dicesNeeded)
            waiting.AddToEnd (c)
            return c
        endMethod

        method AskPermission ()
            var c : CustomerGroup
            c = waiting.Remove ()
            if c.dicesNeeded <= dices
                c.Allow ()
            else
                waiting.AddToFront (c)
            endIf
        endMethod
        
        method Withdraw(x: int)
            dices = dices - x
        endMethod

        method Deposit(x: int)
            dices = dices + x
        endMethod
    endBehavior
    -----------------------------  Games  ---------------------------------
    const
        Backgammon = 4
        Risk = 5
        Monopoly = 2
        Pictionary = 1
    -----------------------------  Gaming Parlor  ---------------------------------
    function customer (game: int, iter: int)
        var i: int
        -- game: the number of die the game needs
        -- iter: number of times the game is played
        for i = 0 to iter-1 by 1
            
        endFor
    endFunction

    -----------------------------  Main  ---------------------------------
    function main ()
        InitializeScheduler ()
        --  sleepingBarber ()
        ThreadFinish ()
    endFunction

endCode