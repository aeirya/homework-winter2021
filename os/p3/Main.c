code Main

  -- OS Class: Project 3
  --
  -- AEIRYA MOHAMMADI
  -- 97103779

-----------------------------  Customer  ---------------------------------

  behavior Customer

    method Init (customerID: int)
        id = customerID
      endMethod

    method GetHaircut ()
        print ("Getting haircut\n")
      endMethod

  endBehavior

-----------------------------  Barber  ---------------------------------
  behavior Barber
    --  This class provides the following methods:
    --    Loop()
    --        Gets called in Init


    method Init ()
      -- Initialize customers semaphore
      customers = new Semaphore
      customers.Init (0)
      -- Initialize thread
      var t : Thread = new Thread
      t.Init ("barber")
      t.Fork (Loop)

      endMethod

    method CutHair ()
        print ("Cutting hair\n")
      endMethod

    method Loop ()

      endMethod

    endBehavior
    
-----------------------------  Sleeping Barber  ---------------------------------
  function sleepingBarber ()
      var 
        barber: Barber = new Barber
        customers: array [10] of Customer {10 of new Customer}
      barber : Barber = new Barber
      print ("zZzz\n")
    endFunction


-----------------------------  Main  ---------------------------------

  function main ()
      -- FatalError ("Need to implement")
      sleepingBarber ()
    endFunction

endCode
