code Main

var
    customers : Semaphore = new Semaphore
    barbers   : Semaphore = new Semaphore
    mutex     : Semaphore = new Semaphore
    chairs    : int = 5
    
---------------------------  Customer  --------------------------
  function barber (x : int)
    print("lalala")
        while true
            debug
            print ("Barrrbara")

        endWhile

    endFunction
---------------------------  Barber  --------------------------
  function customer (id: int)
        debug
        print("Hey!")
        ThreadFinish ()
    endFunction
---------------------------  Sleeping Barber  --------------------------
const customer_n = 3

  function sleepingBarber ()
      var threadB : Thread = new Thread
    --      i : int = 0
    --      thArr: array [customer_n] of Thread = new array of Thread {customer_n of new Thread }

    --    customers.Init (0)
    --    barbers.Init (0)
    --    mutex.Init (1)
    
      threadB.Init ("Barber")
      debug
      threadB.Fork (customer, 0)
      currentThread.Yeild ()
      
    --    for i=0 to customer_n by 1
    --          thArr[i].Init ("Customer "+i)
    --          thArr[i].Fork (customer, i)
    --      endFor
    endFunction

-----------------------------  Main  ---------------------------------
  function main ()
      InitializeScheduler ()
      sleepingBarber ()
      print ("HI\n")

      ThreadFinish ()
    endFunction

endCode