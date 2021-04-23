header Main

  uses System, Thread, Synch

  functions
    main ()
    sleepingBarber ()

  class Barber
    superclass Object
    fields
      customers: Semaphore
    methods
      Init ()
      CutHair ()
      Loop ()
    endClass

  class Customer 
    superclass Object
    fields
      id: int
    methods
      Init (customerID: int)
      GetHaircut ()
    endClass

/*
  class Barbersohp
    superclass Object
    fields
      customers: List[Customer]
      barber: Barber

    methods
      CustomerEnter ()
*/

endHeader
