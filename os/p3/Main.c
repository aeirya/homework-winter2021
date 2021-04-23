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

    -----------------------------  Main  ---------------------------------
    function main ()
        InitializeScheduler ()
        sleepingBarber ()
        ThreadFinish ()
    endFunction

endCode