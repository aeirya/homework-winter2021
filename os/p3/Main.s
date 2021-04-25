! Name of package being compiled: Main
! 
! Symbols from runtime.s
	.import	_putString
	.import	_heapInitialize
	.import	_heapAlloc
	.import	_heapFree
	.import	_IsKindOf
	.import	_RestoreCatchStack
	.import	_PerformThrow
	.import	_runtimeErrorOverflow
	.import	_runtimeErrorZeroDivide
	.import	_runtimeErrorNullPointer
	.import	_runtimeErrorUninitializedObject
	.import	_runtimeErrorWrongObject
	.import	_runtimeErrorWrongObject2
	.import	_runtimeErrorWrongObject3
	.import	_runtimeErrorBadObjectSize
	.import	_runtimeErrorDifferentArraySizes
	.import	_runtimeErrorWrongArraySize
	.import	_runtimeErrorUninitializedArray
	.import	_runtimeErrorBadArrayIndex
	.import	_runtimeErrorNullPointerDuringCall
	.import	_runtimeErrorArrayCountNotPositive
	.import	_runtimeErrorRestoreCatchStackError
	.text
! ErrorDecls
	.import	_Error_P_System_UncaughtThrowError
	.align
! Functions imported from other packages
	.import	print
	.import	printInt
	.import	printHex
	.import	printChar
	.import	printBool
	.import	_P_System_MemoryEqual
	.import	_P_System_StrEqual
	.import	_P_System_StrCopy
	.import	_P_System_StrCmp
	.import	_P_System_Min
	.import	_P_System_Max
	.import	_P_System_printIntVar
	.import	_P_System_printHexVar
	.import	_P_System_printBoolVar
	.import	_P_System_printCharVar
	.import	_P_System_printPtr
	.import	_P_System_nl
	.import	Cleari
	.import	Seti
	.import	Wait
	.import	RuntimeExit
	.import	getCatchStack
	.import	MemoryZero
	.import	MemoryCopy
	.import	_P_System_KPLSystemInitialize
	.import	_P_System_KPLMemoryAlloc
	.import	_P_System_KPLMemoryFree
	.import	_P_System_KPLUncaughtThrow
	.import	_P_System_KPLIsKindOf
	.import	_P_System_KPLSystemError
	.import	_P_Thread_InitializeScheduler
	.import	_P_Thread_Run
	.import	_P_Thread_PrintReadyList
	.import	_P_Thread_ThreadStartMain
	.import	_P_Thread_ThreadFinish
	.import	_P_Thread_FatalError
	.import	_P_Thread_SetInterruptsTo
	.import	_P_Thread_TimerInterruptHandler
	.import	Switch
	.import	ThreadStartUp
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from other packages
	.import	_P_Synch_Semaphore
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex
! The following class and its methods are from other packages
	.import	_P_Synch_Mutex2
! The following class and its methods are from other packages
	.import	_P_Synch_Condition
! The following class and its methods are from this package
	.export	_P_Main_Barbershop
	.export	_Method_P_Main_Barbershop_1
	.export	_Method_P_Main_Barbershop_2
	.export	_Method_P_Main_Barbershop_3
	.export	_Method_P_Main_Barbershop_4
	.export	_Method_P_Main_Barbershop_5
	.export	_Method_P_Main_Barbershop_6
	.export	_Method_P_Main_Barbershop_7
	.export	_Method_P_Main_Barbershop_8
	.export	_Method_P_Main_Barbershop_9
	.export	_Method_P_Main_Barbershop_10
! The following class and its methods are from this package
	.export	_P_Main_FrontDeskMonitor
	.export	_Method_P_Main_FrontDeskMonitor_1
	.export	_Method_P_Main_FrontDeskMonitor_2
	.export	_Method_P_Main_FrontDeskMonitor_3
	.export	_Method_P_Main_FrontDeskMonitor_4
	.export	_Method_P_Main_FrontDeskMonitor_5
	.export	_Method_P_Main_FrontDeskMonitor_6
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_Thread_readyList
	.import	_P_Thread_currentThread
	.import	_P_Thread_mainThread
	.import	_P_Thread_idleThread
	.import	_P_Thread_threadsToBeDestroyed
	.import	_P_Thread_currentInterruptStatus
! Global variables in this package
	.data
_Global_customersSem:
! Static object
	.word	_P_Synch_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_barbers:
! Static object
	.word	_P_Synch_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_mutex:
! Static object
	.word	_P_Synch_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_waiting:
	.word	0
_Global_shop:
	.skip	116
_Global_StartSem:
! Static object
	.word	_P_Synch_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_FinishSem:
! Static object
	.word	_P_Synch_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_threadB:
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
_Global_thArr:
! Static array
	.word	3		! number of elements
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
_Global_customers:
! Static array
	.word	8		! number of elements
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
! Static object
	.word	_P_Thread_Thread
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.align
_Global_games:
! Static array
	.word	8		! number of elements
	.word	0x00000004		! decimal value = 4
	.word	0x00000004		! decimal value = 4
	.word	0x00000005		! decimal value = 5
	.word	0x00000005		! decimal value = 5
	.word	0x00000002		! decimal value = 2
	.word	0x00000002		! decimal value = 2
	.word	0x00000001		! decimal value = 1
	.word	0x00000001		! decimal value = 1
	.align
_Global_mon:
	.skip	72
	.align
! String constants
_StringConst_30:
	.word	57			! length
	.ascii	"------------------------------Number of dice now avail = "
	.align
_StringConst_29:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_28:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_27:
	.word	22			! length
	.ascii	"releases and adds back"
	.align
_StringConst_26:
	.word	13			! length
	.ascii	"proceeds with"
	.align
_StringConst_25:
	.word	8			! length
	.ascii	"requests"
	.align
_StringConst_24:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_23:
	.word	5			! length
	.ascii	" <-> "
	.align
_StringConst_22:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_21:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_20:
	.word	1			! length
	.ascii	"|"
	.align
_StringConst_19:
	.word	1			! length
	.ascii	"-"
	.align
_StringConst_18:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_17:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_16:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_15:
	.word	1			! length
	.ascii	"]"
	.align
_StringConst_14:
	.word	1			! length
	.ascii	" "
	.align
_StringConst_13:
	.word	1			! length
	.ascii	"["
	.align
_StringConst_12:
	.word	6			! length
	.ascii	"     !"
	.align
_StringConst_11:
	.word	6			! length
	.ascii	"zZz   "
	.align
_StringConst_10:
	.word	9			! length
	.ascii	"CustomerH"
	.align
_StringConst_9:
	.word	9			! length
	.ascii	"CustomerG"
	.align
_StringConst_8:
	.word	9			! length
	.ascii	"CustomerF"
	.align
_StringConst_7:
	.word	9			! length
	.ascii	"CustomerE"
	.align
_StringConst_6:
	.word	9			! length
	.ascii	"CustomerD"
	.align
_StringConst_5:
	.word	9			! length
	.ascii	"CustomerC"
	.align
_StringConst_4:
	.word	9			! length
	.ascii	"CustomerB"
	.align
_StringConst_3:
	.word	9			! length
	.ascii	"CustomerA"
	.align
_StringConst_2:
	.word	6			! length
	.ascii	"Barber"
	.align
_StringConst_1:
	.word	1			! length
	.ascii	"C"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xe538cc06,r3		! .  hashVal = -449262586
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_39		! .
	ret				! .
_Label_39:				! .
	call	_heapInitialize
	jmp	main
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Main.c\0"
_packageName:
	.ascii	"Main\0"
	.align
!
! CheckVersion
!
!     This routine is passed:
!       r2 = ptr to the name of the 'using' package
!       r3 = the expected hashVal for 'used' package (myPackage)
!     It prints an error message if the expected hashVal is not correct
!     It then checks all the packages that 'myPackage' uses.
!
!     This routine returns:
!       r1:  0=No problems, 1=Problems
!
!     Registers modified: r1-r4
!
_CheckVersion_P_Main_:
	.export	_CheckVersion_P_Main_
	set	0xe538cc06,r4		! myHashVal = -449262586
	cmp	r3,r4
	be	_Label_40
	set	_CVMess1,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess2,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess3,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess4,r1
	call	_putString
	mov	r2,r1			! print using package
	call	_putString
	set	_CVMess5,r1
	call	_putString
	set	_packageName,r1		! print myPackage
	call	_putString
	set	_CVMess6,r1
	call	_putString
	mov	1,r1
	ret	
_Label_40:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_41
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_41
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_41
! Make sure _P_Synch_ has hash value 0x8e356f6d (decimal -1909100691)
	set	_packageName,r2
	set	0x8e356f6d,r3
	call	_CheckVersion_P_Synch_
	.import	_CheckVersion_P_Synch_
	cmp	r1,0
	bne	_Label_41
_Label_41:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION WasteTime  ===============
! 
_function_38_WasteTime:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_38_WasteTime,r1
	push	r1
	mov	159,r13		! source line 159
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0WH",r10
_Label_42:
!   if duration <= 0 then goto _Label_44		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_44
!	jmp	_Label_43
_Label_43:
	mov	160,r13		! source line 160
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	161,r13		! source line 161
	mov	"\0\0AS",r10
!   duration = duration - 1		(int)
	load	[r14+8],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+8]
! END WHILE...
	jmp	_Label_42
_Label_44:
! RETURN STATEMENT...
	mov	160,r13		! source line 160
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_38_WasteTime:
	.word	_sourceFileName
	.word	_Label_45
	.word	4		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_46
	.word	8
	.word	4
	.word	0
_Label_45:
	.ascii	"WasteTime\0"
	.align
_Label_46:
	.byte	'I'
	.ascii	"duration\0"
	.align
! 
! ===============  FUNCTION CutHair  ===============
! 
_function_37_CutHair:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_37_CutHair,r1
	push	r1
	mov	5,r1
_Label_569:
	push	r0
	sub	r1,1,r1
	bne	_Label_569
	mov	170,r13		! source line 170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	172,r13		! source line 172
	mov	"\0\0SE",r10
!   _temp_47 = &_Global_shop
	set	_Global_shop,r1
	store	r1,[r14+-24]
!   Send message Start
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	173,r13		! source line 173
	mov	"\0\0SE",r10
!   _temp_48 = &_Global_StartSem
	set	_Global_StartSem,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+0]
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CA",r10
	call	_function_38_WasteTime
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_49 = &_Global_FinishSem
	set	_Global_FinishSem,r1
	store	r1,[r14+-16]
!   Send message Down
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0SE",r10
!   _temp_50 = &_Global_shop
	set	_Global_shop,r1
	store	r1,[r14+-12]
!   Send message Finish
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	177,r13		! source line 177
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_37_CutHair:
	.word	_sourceFileName
	.word	_Label_51
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_52
	.word	-12
	.word	4
	.word	_Label_53
	.word	-16
	.word	4
	.word	_Label_54
	.word	-20
	.word	4
	.word	_Label_55
	.word	-24
	.word	4
	.word	0
_Label_51:
	.ascii	"CutHair\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
! 
! ===============  FUNCTION GetHaircut  ===============
! 
_function_36_GetHaircut:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_36_GetHaircut,r1
	push	r1
	mov	6,r1
_Label_570:
	push	r0
	sub	r1,1,r1
	bne	_Label_570
	mov	180,r13		! source line 180
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0SE",r10
!   _temp_56 = &_Global_StartSem
	set	_Global_StartSem,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_57 = &_Global_shop
	set	_Global_shop,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Serve
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=10000  sizeInBytes=4
	mov	10000,r1
	store	r1,[r15+0]
!   Call the function
	mov	184,r13		! source line 184
	mov	"\0\0CA",r10
	call	_function_38_WasteTime
! SEND STATEMENT...
	mov	186,r13		! source line 186
	mov	"\0\0SE",r10
!   _temp_58 = &_Global_shop
	set	_Global_shop,r1
	store	r1,[r14+-16]
!   Send message Standup
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0SE",r10
!   _temp_59 = &_Global_FinishSem
	set	_Global_FinishSem,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	187,r13		! source line 187
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_36_GetHaircut:
	.word	_sourceFileName
	.word	_Label_60
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_61
	.word	8
	.word	4
	.word	_Label_62
	.word	-12
	.word	4
	.word	_Label_63
	.word	-16
	.word	4
	.word	_Label_64
	.word	-20
	.word	4
	.word	_Label_65
	.word	-24
	.word	4
	.word	0
_Label_60:
	.ascii	"GetHaircut\0"
	.align
_Label_61:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_62:
	.byte	'?'
	.ascii	"_temp_59\0"
	.align
_Label_63:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_64:
	.byte	'?'
	.ascii	"_temp_57\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
! 
! ===============  FUNCTION barber  ===============
! 
_function_35_barber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_35_barber,r1
	push	r1
	mov	5,r1
_Label_571:
	push	r0
	sub	r1,1,r1
	bne	_Label_571
	mov	191,r13		! source line 191
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	192,r13		! source line 192
	mov	"\0\0WH",r10
_Label_66:
!	jmp	_Label_67
_Label_67:
	mov	192,r13		! source line 192
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0SE",r10
!   _temp_69 = &_Global_customersSem
	set	_Global_customersSem,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0SE",r10
!   _temp_70 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-20]
!   Send message Down
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _Global_waiting = _Global_waiting - 1		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0SE",r10
!   _temp_71 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-16]
!   Send message Up
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0SE",r10
!   _temp_72 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	200,r13		! source line 200
	mov	"\0\0CA",r10
	call	_function_37_CutHair
! END WHILE...
	jmp	_Label_66
_Label_68:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_35_barber:
	.word	_sourceFileName
	.word	_Label_73
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_74
	.word	-12
	.word	4
	.word	_Label_75
	.word	-16
	.word	4
	.word	_Label_76
	.word	-20
	.word	4
	.word	_Label_77
	.word	-24
	.word	4
	.word	0
_Label_73:
	.ascii	"barber\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
! 
! ===============  FUNCTION customer  ===============
! 
_function_34_customer:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_34_customer,r1
	push	r1
	mov	10,r1
_Label_572:
	push	r0
	sub	r1,1,r1
	bne	_Label_572
	mov	207,r13		! source line 207
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	208,r13		! source line 208
	mov	"\0\0SE",r10
!   _temp_78 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0SE",r10
!   _temp_79 = &_Global_shop
	set	_Global_shop,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Enter
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
! IF STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0IF",r10
!   if _Global_waiting >= 5 then goto _Label_81		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	5,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_81
!	jmp	_Label_80
_Label_80:
! THEN...
	mov	212,r13		! source line 212
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0AS",r10
!   _Global_waiting = _Global_waiting + 1		(int)
	set	_Global_waiting,r1
	load	[r1],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_waiting,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0SE",r10
!   _temp_82 = &_Global_customersSem
	set	_Global_customersSem,r1
	store	r1,[r14+-32]
!   Send message Up
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0SE",r10
!   _temp_83 = &_Global_shop
	set	_Global_shop,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Sit
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_84 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-24]
!   Send message Up
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0SE",r10
!   _temp_85 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-20]
!   Send message Down
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	219,r13		! source line 219
	mov	"\0\0CA",r10
	call	_function_36_GetHaircut
	jmp	_Label_86
_Label_81:
! ELSE...
	mov	223,r13		! source line 223
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0SE",r10
!   _temp_87 = &_Global_shop
	set	_Global_shop,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Exit
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_88 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-12]
!   Send message Up
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_86:
! CALL STATEMENT...
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_34_customer:
	.word	_sourceFileName
	.word	_Label_89
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_90
	.word	8
	.word	4
	.word	_Label_91
	.word	-12
	.word	4
	.word	_Label_92
	.word	-16
	.word	4
	.word	_Label_93
	.word	-20
	.word	4
	.word	_Label_94
	.word	-24
	.word	4
	.word	_Label_95
	.word	-28
	.word	4
	.word	_Label_96
	.word	-32
	.word	4
	.word	_Label_97
	.word	-36
	.word	4
	.word	_Label_98
	.word	-40
	.word	4
	.word	0
_Label_89:
	.ascii	"customer\0"
	.align
_Label_90:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_84\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_83\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
! 
! ===============  FUNCTION sleepingBarber  ===============
! 
_function_33_sleepingBarber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_33_sleepingBarber,r1
	push	r1
	mov	26,r1
_Label_573:
	push	r0
	sub	r1,1,r1
	bne	_Label_573
	mov	234,r13		! source line 234
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! name_str
!   name_str = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-96]
! i
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
! ASSIGNMENT STATEMENT...
	mov	239,r13		! source line 239
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_shop = zeros  (sizeInBytes=116)
	set	_Global_shop,r4
	mov	29,r3
_Label_574:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_574
!   _Global_shop = _P_Main_Barbershop
	set	_P_Main_Barbershop,r1
	set	_Global_shop,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	240,r13		! source line 240
	mov	"\0\0SE",r10
!   _temp_100 = &_Global_shop
	set	_Global_shop,r1
	store	r1,[r14+-88]
!   Send message Init
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	243,r13		! source line 243
	mov	"\0\0SE",r10
!   _temp_101 = &_Global_StartSem
	set	_Global_StartSem,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0SE",r10
!   _temp_102 = &_Global_FinishSem
	set	_Global_FinishSem,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0SE",r10
!   _temp_103 = &_Global_customersSem
	set	_Global_customersSem,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	249,r13		! source line 249
	mov	"\0\0SE",r10
!   _temp_104 = &_Global_barbers
	set	_Global_barbers,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_105 = &_Global_mutex
	set	_Global_mutex,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_106 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-64]
!   _temp_107 = &_Global_threadB
	set	_Global_threadB,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=_temp_106  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_108 = _function_35_barber
	set	_function_35_barber,r1
	store	r1,[r14+-56]
!   _temp_109 = &_Global_threadB
	set	_Global_threadB,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_108  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_114 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_115 = 2		(4 bytes)
	mov	2,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_114  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-100]
_Label_110:
!   Perform the FOR-LOOP termination test
!   if i > _temp_115 then goto _Label_113		
	load	[r14+-100],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_113
_Label_111:
	mov	258,r13		! source line 258
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	259,r13		! source line 259
	mov	"\0\0AS",r10
!   if intIsZero (name_str) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of name_str [0 ] into _temp_116
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	1,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_118 = 65 + i		(int)
	mov	65,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   _temp_117 = intToChar (_temp_118)
	load	[r14+-36],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_116 = _temp_117  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-40],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	260,r13		! source line 260
	mov	"\0\0SE",r10
!   _temp_119 = &_Global_thArr
	set	_Global_thArr,r1
	store	r1,[r14+-32]
!   Move address of _temp_119 [i ] into _temp_120
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Prepare Argument: offset=12  value=name_str  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0SE",r10
!   _temp_121 = _function_34_customer
	set	_function_34_customer,r1
	store	r1,[r14+-24]
!   _temp_122 = &_Global_thArr
	set	_Global_thArr,r1
	store	r1,[r14+-20]
!   Move address of _temp_122 [i ] into _temp_123
!     make sure index expr is >= 0
	load	[r14+-100],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-20],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_121  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_112:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_110
! END FOR
_Label_113:
! RETURN STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_33_sleepingBarber:
	.word	_sourceFileName
	.word	_Label_124
	.word	0		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_125
	.word	-16
	.word	4
	.word	_Label_126
	.word	-20
	.word	4
	.word	_Label_127
	.word	-24
	.word	4
	.word	_Label_128
	.word	-28
	.word	4
	.word	_Label_129
	.word	-32
	.word	4
	.word	_Label_130
	.word	-36
	.word	4
	.word	_Label_131
	.word	-9
	.word	1
	.word	_Label_132
	.word	-40
	.word	4
	.word	_Label_133
	.word	-44
	.word	4
	.word	_Label_134
	.word	-48
	.word	4
	.word	_Label_135
	.word	-52
	.word	4
	.word	_Label_136
	.word	-56
	.word	4
	.word	_Label_137
	.word	-60
	.word	4
	.word	_Label_138
	.word	-64
	.word	4
	.word	_Label_139
	.word	-68
	.word	4
	.word	_Label_140
	.word	-72
	.word	4
	.word	_Label_141
	.word	-76
	.word	4
	.word	_Label_142
	.word	-80
	.word	4
	.word	_Label_143
	.word	-84
	.word	4
	.word	_Label_144
	.word	-88
	.word	4
	.word	_Label_145
	.word	-92
	.word	4
	.word	_Label_146
	.word	-96
	.word	4
	.word	_Label_147
	.word	-100
	.word	4
	.word	0
_Label_124:
	.ascii	"sleepingBarber\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_123\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_122\0"
	.align
_Label_127:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_128:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_129:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_130:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_131:
	.byte	'C'
	.ascii	"_temp_117\0"
	.align
_Label_132:
	.byte	'?'
	.ascii	"_temp_116\0"
	.align
_Label_133:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_134:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_135:
	.byte	'?'
	.ascii	"_temp_109\0"
	.align
_Label_136:
	.byte	'?'
	.ascii	"_temp_108\0"
	.align
_Label_137:
	.byte	'?'
	.ascii	"_temp_107\0"
	.align
_Label_138:
	.byte	'?'
	.ascii	"_temp_106\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_105\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_100\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_99\0"
	.align
_Label_146:
	.byte	'P'
	.ascii	"name_str\0"
	.align
_Label_147:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION gamingParlor  ===============
! 
_function_32_gamingParlor:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_32_gamingParlor,r1
	push	r1
	mov	38,r1
_Label_575:
	push	r0
	sub	r1,1,r1
	bne	_Label_575
	mov	388,r13		! source line 388
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	391,r13		! source line 391
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _Global_mon = zeros  (sizeInBytes=72)
	set	_Global_mon,r4
	mov	18,r3
_Label_576:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_576
!   _Global_mon = _P_Main_FrontDeskMonitor
	set	_P_Main_FrontDeskMonitor,r1
	set	_Global_mon,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
!   _temp_149 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=12  value=dieNumber  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-140],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0SE",r10
!   _temp_150 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-136]
!   _temp_151 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-132]
!   Move address of _temp_151 [0 ] into _temp_152
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-132],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-128]
!   Prepare Argument: offset=12  value=_temp_150  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-128],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_153 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-124]
!   _temp_154 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-120]
!   Move address of _temp_154 [1 ] into _temp_155
!     make sure index expr is >= 0
	mov	1,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-120],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-116]
!   Prepare Argument: offset=12  value=_temp_153  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   _temp_156 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-112]
!   _temp_157 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-108]
!   Move address of _temp_157 [2 ] into _temp_158
!     make sure index expr is >= 0
	mov	2,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-108],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-104]
!   Prepare Argument: offset=12  value=_temp_156  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   _temp_159 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-100]
!   _temp_160 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-96]
!   Move address of _temp_160 [3 ] into _temp_161
!     make sure index expr is >= 0
	mov	3,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-96],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-92]
!   Prepare Argument: offset=12  value=_temp_159  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   _temp_162 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-88]
!   _temp_163 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-84]
!   Move address of _temp_163 [4 ] into _temp_164
!     make sure index expr is >= 0
	mov	4,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-84],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-80]
!   Prepare Argument: offset=12  value=_temp_162  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0SE",r10
!   _temp_165 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-76]
!   _temp_166 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-72]
!   Move address of _temp_166 [5 ] into _temp_167
!     make sure index expr is >= 0
	mov	5,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-72],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_165  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0SE",r10
!   _temp_168 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-64]
!   _temp_169 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-60]
!   Move address of _temp_169 [6 ] into _temp_170
!     make sure index expr is >= 0
	mov	6,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-60],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_168  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0SE",r10
!   _temp_171 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-52]
!   _temp_172 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-48]
!   Move address of _temp_172 [7 ] into _temp_173
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-48],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_171  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_178 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_179 = 7		(4 bytes)
	mov	7,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_178  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-148]
_Label_174:
!   Perform the FOR-LOOP termination test
!   if i > _temp_179 then goto _Label_177		
	load	[r14+-148],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_177
_Label_175:
	mov	403,r13		! source line 403
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0SE",r10
!   _temp_180 = _function_31_customerGroup
	set	_function_31_customerGroup,r1
	store	r1,[r14+-32]
!   _temp_182 = &_Global_games
	set	_Global_games,r1
	store	r1,[r14+-24]
!   Move address of _temp_182 [i ] into _temp_183
!     make sure index expr is >= 0
	load	[r14+-148],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_181 = *_temp_183  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_184 = &_Global_customers
	set	_Global_customers,r1
	store	r1,[r14+-16]
!   Move address of _temp_184 [i ] into _temp_185
!     make sure index expr is >= 0
	load	[r14+-148],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4092,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_180  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_181  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_176:
!   i = i + 1
	load	[r14+-148],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-148]
	jmp	_Label_174
! END FOR
_Label_177:
! RETURN STATEMENT...
	mov	403,r13		! source line 403
	mov	"\0\0RE",r10
	add	r15,156,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_32_gamingParlor:
	.word	_sourceFileName
	.word	_Label_186
	.word	4		! total size of parameters
	.word	152		! frame size = 152
	.word	_Label_187
	.word	8
	.word	4
	.word	_Label_188
	.word	-12
	.word	4
	.word	_Label_189
	.word	-16
	.word	4
	.word	_Label_190
	.word	-20
	.word	4
	.word	_Label_191
	.word	-24
	.word	4
	.word	_Label_192
	.word	-28
	.word	4
	.word	_Label_193
	.word	-32
	.word	4
	.word	_Label_194
	.word	-36
	.word	4
	.word	_Label_195
	.word	-40
	.word	4
	.word	_Label_196
	.word	-44
	.word	4
	.word	_Label_197
	.word	-48
	.word	4
	.word	_Label_198
	.word	-52
	.word	4
	.word	_Label_199
	.word	-56
	.word	4
	.word	_Label_200
	.word	-60
	.word	4
	.word	_Label_201
	.word	-64
	.word	4
	.word	_Label_202
	.word	-68
	.word	4
	.word	_Label_203
	.word	-72
	.word	4
	.word	_Label_204
	.word	-76
	.word	4
	.word	_Label_205
	.word	-80
	.word	4
	.word	_Label_206
	.word	-84
	.word	4
	.word	_Label_207
	.word	-88
	.word	4
	.word	_Label_208
	.word	-92
	.word	4
	.word	_Label_209
	.word	-96
	.word	4
	.word	_Label_210
	.word	-100
	.word	4
	.word	_Label_211
	.word	-104
	.word	4
	.word	_Label_212
	.word	-108
	.word	4
	.word	_Label_213
	.word	-112
	.word	4
	.word	_Label_214
	.word	-116
	.word	4
	.word	_Label_215
	.word	-120
	.word	4
	.word	_Label_216
	.word	-124
	.word	4
	.word	_Label_217
	.word	-128
	.word	4
	.word	_Label_218
	.word	-132
	.word	4
	.word	_Label_219
	.word	-136
	.word	4
	.word	_Label_220
	.word	-140
	.word	4
	.word	_Label_221
	.word	-144
	.word	4
	.word	_Label_222
	.word	-148
	.word	4
	.word	0
_Label_186:
	.ascii	"gamingParlor\0"
	.align
_Label_187:
	.byte	'I'
	.ascii	"dieNumber\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_181\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_180\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_164\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_163\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_208:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_209:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_210:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_211:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_212:
	.byte	'?'
	.ascii	"_temp_157\0"
	.align
_Label_213:
	.byte	'?'
	.ascii	"_temp_156\0"
	.align
_Label_214:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_215:
	.byte	'?'
	.ascii	"_temp_154\0"
	.align
_Label_216:
	.byte	'?'
	.ascii	"_temp_153\0"
	.align
_Label_217:
	.byte	'?'
	.ascii	"_temp_152\0"
	.align
_Label_218:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_219:
	.byte	'?'
	.ascii	"_temp_150\0"
	.align
_Label_220:
	.byte	'?'
	.ascii	"_temp_149\0"
	.align
_Label_221:
	.byte	'?'
	.ascii	"_temp_148\0"
	.align
_Label_222:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION customerGroup  ===============
! 
_function_31_customerGroup:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_31_customerGroup,r1
	push	r1
	mov	7,r1
_Label_577:
	push	r0
	sub	r1,1,r1
	bne	_Label_577
	mov	409,r13		! source line 409
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_227 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_228 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_227  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-28]
_Label_223:
!   Perform the FOR-LOOP termination test
!   if i > _temp_228 then goto _Label_226		
	load	[r14+-28],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_226
_Label_224:
	mov	413,r13		! source line 413
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	414,r13		! source line 414
	mov	"\0\0SE",r10
!   _temp_229 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=game  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Request
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	416,r13		! source line 416
	mov	"\0\0SE",r10
!   _temp_230 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=game  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Send message Return
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_225:
!   i = i + 1
	load	[r14+-28],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
	jmp	_Label_223
! END FOR
_Label_226:
! CALL STATEMENT...
!   Call the function
	mov	418,r13		! source line 418
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	418,r13		! source line 418
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_31_customerGroup:
	.word	_sourceFileName
	.word	_Label_231
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_232
	.word	8
	.word	4
	.word	_Label_233
	.word	-12
	.word	4
	.word	_Label_234
	.word	-16
	.word	4
	.word	_Label_235
	.word	-20
	.word	4
	.word	_Label_236
	.word	-24
	.word	4
	.word	_Label_237
	.word	-28
	.word	4
	.word	0
_Label_231:
	.ascii	"customerGroup\0"
	.align
_Label_232:
	.byte	'I'
	.ascii	"game\0"
	.align
_Label_233:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_237:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION main  ===============
! 
main:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor_main,r1
	push	r1
	mov	44,r1
_Label_578:
	push	r0
	sub	r1,1,r1
	bne	_Label_578
	mov	422,r13		! source line 422
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	424,r13		! source line 424
	mov	"\0\0CA",r10
	call	_P_Thread_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: bar = zeros  (sizeInBytes=116)
	add	r14,-176,r4
	mov	29,r3
_Label_579:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_579
!   bar = _P_Main_Barbershop
	set	_P_Main_Barbershop,r1
	store	r1,[r14+-176]
! SEND STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0SE",r10
!   _temp_239 = &bar
	add	r14,-176,r1
	store	r1,[r14+-56]
!   Send message Init
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0SE",r10
!   _temp_240 = &bar
	add	r14,-176,r1
	store	r1,[r14+-52]
!   Send message PrintState
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0SE",r10
!   _temp_241 = &bar
	add	r14,-176,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Enter
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
! SEND STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_242 = &bar
	add	r14,-176,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Sit
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	432,r13		! source line 432
	mov	"\0\0SE",r10
!   _temp_243 = &bar
	add	r14,-176,r1
	store	r1,[r14+-40]
!   Send message Start
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0SE",r10
!   _temp_244 = &bar
	add	r14,-176,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Serve
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0SE",r10
!   _temp_245 = &bar
	add	r14,-176,r1
	store	r1,[r14+-32]
!   Send message Standup
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0SE",r10
!   _temp_246 = &bar
	add	r14,-176,r1
	store	r1,[r14+-28]
!   Send message Finish
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_247 = &bar
	add	r14,-176,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Send message Enter
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
! SEND STATEMENT...
	mov	437,r13		! source line 437
	mov	"\0\0SE",r10
!   _temp_248 = &bar
	add	r14,-176,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+4]
!   Send message Exit
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! SEND STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   _temp_249 = &bar
	add	r14,-176,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=3  sizeInBytes=4
	mov	3,r1
	store	r1,[r15+4]
!   Send message Sit
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
! SEND STATEMENT...
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   _temp_250 = &bar
	add	r14,-176,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=5  sizeInBytes=4
	mov	5,r1
	store	r1,[r15+4]
!   Send message Exit
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,40,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	440,r13		! source line 440
	mov	"\0\0CA",r10
	call	_P_Thread_ThreadFinish
! RETURN STATEMENT...
	mov	440,r13		! source line 440
	mov	"\0\0RE",r10
	add	r15,180,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_251
	.word	0		! total size of parameters
	.word	176		! frame size = 176
	.word	_Label_252
	.word	-12
	.word	4
	.word	_Label_253
	.word	-16
	.word	4
	.word	_Label_254
	.word	-20
	.word	4
	.word	_Label_255
	.word	-24
	.word	4
	.word	_Label_256
	.word	-28
	.word	4
	.word	_Label_257
	.word	-32
	.word	4
	.word	_Label_258
	.word	-36
	.word	4
	.word	_Label_259
	.word	-40
	.word	4
	.word	_Label_260
	.word	-44
	.word	4
	.word	_Label_261
	.word	-48
	.word	4
	.word	_Label_262
	.word	-52
	.word	4
	.word	_Label_263
	.word	-56
	.word	4
	.word	_Label_264
	.word	-60
	.word	4
	.word	_Label_265
	.word	-176
	.word	116
	.word	0
_Label_251:
	.ascii	"main\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_250\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_249\0"
	.align
_Label_254:
	.byte	'?'
	.ascii	"_temp_248\0"
	.align
_Label_255:
	.byte	'?'
	.ascii	"_temp_247\0"
	.align
_Label_256:
	.byte	'?'
	.ascii	"_temp_246\0"
	.align
_Label_257:
	.byte	'?'
	.ascii	"_temp_245\0"
	.align
_Label_258:
	.byte	'?'
	.ascii	"_temp_244\0"
	.align
_Label_259:
	.byte	'?'
	.ascii	"_temp_243\0"
	.align
_Label_260:
	.byte	'?'
	.ascii	"_temp_242\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_241\0"
	.align
_Label_262:
	.byte	'?'
	.ascii	"_temp_240\0"
	.align
_Label_263:
	.byte	'?'
	.ascii	"_temp_239\0"
	.align
_Label_264:
	.byte	'?'
	.ascii	"_temp_238\0"
	.align
_Label_265:
	.byte	'O'
	.ascii	"bar\0"
	.align
! 
! ===============  CLASS Barbershop  ===============
! 
! Dispatch Table:
! 
_P_Main_Barbershop:
	.word	_Label_266
	jmp	_Method_P_Main_Barbershop_1	! 4:	Init
	jmp	_Method_P_Main_Barbershop_2	! 8:	Start
	jmp	_Method_P_Main_Barbershop_3	! 12:	Finish
	jmp	_Method_P_Main_Barbershop_4	! 16:	PrintState
	jmp	_Method_P_Main_Barbershop_9	! 20:	Serve
	jmp	_Method_P_Main_Barbershop_10	! 24:	Standup
	jmp	_Method_P_Main_Barbershop_7	! 28:	Sit
	jmp	_Method_P_Main_Barbershop_8	! 32:	Unsit
	jmp	_Method_P_Main_Barbershop_5	! 36:	Enter
	jmp	_Method_P_Main_Barbershop_6	! 40:	Exit
	.word	0
! 
! Class descriptor:
! 
_Label_266:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_267
	.word	_sourceFileName
	.word	13		! line number
	.word	116		! size of instances, in bytes
	.word	_P_Main_Barbershop
	.word	_P_System_Object
	.word	0
_Label_267:
	.ascii	"Barbershop\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_Barbershop_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_1,r1
	push	r1
	mov	18,r1
_Label_580:
	push	r0
	sub	r1,1,r1
	bne	_Label_580
	mov	12,r13		! source line 12
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	13,r13		! source line 13
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: Start = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   Start = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	14,r13		! source line 14
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: Fin = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,24,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   Fin = _P_Synch_Semaphore
	set	_P_Synch_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	15,r13		! source line 15
	mov	"\0\0SE",r10
!   _temp_270 = &Start
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0SE",r10
!   _temp_271 = &Fin
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   _temp_272 = &Cust
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-56]
!   NEW ARRAY Constructor...
!   _temp_274 = &_temp_273
	add	r14,-52,r1
	store	r1,[r14+-28]
!   _temp_274 = _temp_274 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Next value...
	mov	5,r1
	store	r1,[r14+-24]
_Label_276:
!   Data Move: *_temp_274 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-28],r2
	store	r1,[r2]
!   _temp_274 = _temp_274 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   _temp_275 = _temp_275 + -1
	load	[r14+-24],r1
	add	r1,-1,r1
	store	r1,[r14+-24]
!   if intNotZero (_temp_275) then goto _Label_276
	load	[r14+-24],r1
	cmp	r1,r0
	bne	_Label_276
!   Initialize the array size...
	mov	5,r1
	store	r1,[r14+-52]
!   _temp_277 = &_temp_273
	add	r14,-52,r1
	store	r1,[r14+-20]
!   make sure array has size 5
	load	[r14+-56],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,0
	be	_Label_581
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_581:
!   make sure array has size 5
	load	[r14+-20],r1
	load	[r1],r1
	set	5, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_272 = *_temp_277  (sizeInBytes=24)
	load	[r14+-20],r5
	load	[r14+-56],r4
	load	[r5],r1
	store	r1,[r4]
	load	[r5+4],r1
	store	r1,[r4+4]
	load	[r5+8],r1
	store	r1,[r4+8]
	load	[r5+12],r1
	store	r1,[r4+12]
	load	[r5+16],r1
	store	r1,[r4+16]
	load	[r5+20],r1
	store	r1,[r4+20]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mut = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,72,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mut = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0AS",r10
!   current = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   working = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+96]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   waitingN = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+68]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_279 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   chairs = 5		(4 bytes)
	mov	5,r1
	load	[r14+8],r2
	store	r1,[r2+100]
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   enter = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   exit = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+108]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   finished = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+112]
! RETURN STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0RE",r10
	add	r15,76,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_1:
	.word	_sourceFileName
	.word	_Label_280
	.word	4		! total size of parameters
	.word	72		! frame size = 72
	.word	_Label_281
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_282
	.word	-12
	.word	4
	.word	_Label_283
	.word	-16
	.word	4
	.word	_Label_284
	.word	-20
	.word	4
	.word	_Label_285
	.word	-24
	.word	4
	.word	_Label_286
	.word	-28
	.word	4
	.word	_Label_287
	.word	-52
	.word	24
	.word	_Label_288
	.word	-56
	.word	4
	.word	_Label_289
	.word	-60
	.word	4
	.word	_Label_290
	.word	-64
	.word	4
	.word	_Label_291
	.word	-68
	.word	4
	.word	_Label_292
	.word	-72
	.word	4
	.word	0
_Label_280:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_281:
	.ascii	"Pself\0"
	.align
_Label_282:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_283:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_284:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_285:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_286:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_287:
	.byte	'?'
	.ascii	"_temp_273\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
! 
! ===============  METHOD Start  ===============
! 
_Method_P_Main_Barbershop_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_2,r1
	push	r1
	mov	4,r1
_Label_582:
	push	r0
	sub	r1,1,r1
	bne	_Label_582
	mov	30,r13		! source line 30
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	31,r13		! source line 31
	mov	"\0\0SE",r10
!   _temp_293 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Send message Lock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0AS",r10
!   working = 1		(1 byte)
	mov	1,r1
	load	[r14+8],r2
	storeb	r1,[r2+96]
! SEND STATEMENT...
	mov	33,r13		! source line 33
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_294) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintState
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0SE",r10
!   _temp_295 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	34,r13		! source line 34
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_2:
	.word	_sourceFileName
	.word	_Label_296
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_297
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_298
	.word	-12
	.word	4
	.word	_Label_299
	.word	-16
	.word	4
	.word	_Label_300
	.word	-20
	.word	4
	.word	0
_Label_296:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Start\0"
	.align
_Label_297:
	.ascii	"Pself\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
! 
! ===============  METHOD Finish  ===============
! 
_Method_P_Main_Barbershop_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_3,r1
	push	r1
	mov	4,r1
_Label_583:
	push	r0
	sub	r1,1,r1
	bne	_Label_583
	mov	37,r13		! source line 37
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0SE",r10
!   _temp_301 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Send message Lock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   working = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+96]
! SEND STATEMENT...
	mov	40,r13		! source line 40
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_302) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintState
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0SE",r10
!   _temp_303 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	41,r13		! source line 41
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_3:
	.word	_sourceFileName
	.word	_Label_304
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_305
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_306
	.word	-12
	.word	4
	.word	_Label_307
	.word	-16
	.word	4
	.word	_Label_308
	.word	-20
	.word	4
	.word	0
_Label_304:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Finish\0"
	.align
_Label_305:
	.ascii	"Pself\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_303\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_302\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_301\0"
	.align
! 
! ===============  METHOD PrintState  ===============
! 
_Method_P_Main_Barbershop_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_4,r1
	push	r1
	mov	25,r1
_Label_584:
	push	r0
	sub	r1,1,r1
	bne	_Label_584
	mov	44,r13		! source line 44
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	47,r13		! source line 47
	mov	"\0\0IF",r10
!   if working then goto _Label_310 else goto _Label_309
	load	[r14+8],r1
	loadb	[r1+96],r1
	cmp	r1,0
	be	_Label_309
	jmp	_Label_310
_Label_309:
! THEN...
	mov	48,r13		! source line 48
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_311 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-100]
!   Prepare Argument: offset=8  value=_temp_311  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_312
_Label_310:
! ELSE...
	mov	50,r13		! source line 50
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_313 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_313  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	50,r13		! source line 50
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_312:
! CALL STATEMENT...
!   _temp_314 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_314  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	52,r13		! source line 52
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0IF",r10
!   if current <= -1 then goto _Label_316		(int)
	load	[r14+8],r1
	load	[r1+92],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_316
!	jmp	_Label_315
_Label_315:
! THEN...
	mov	54,r13		! source line 54
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=current  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+92],r1
	store	r1,[r15+0]
!   Call the function
	mov	54,r13		! source line 54
	mov	"\0\0CE",r10
	call	printInt
	jmp	_Label_317
_Label_316:
! ELSE...
	mov	56,r13		! source line 56
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_318 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_318  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	56,r13		! source line 56
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_317:
! CALL STATEMENT...
!   _temp_319 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_319  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	58,r13		! source line 58
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_320 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_320  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	61,r13		! source line 61
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	62,r13		! source line 62
	mov	"\0\0IF",r10
!   if finished <= -1 then goto _Label_322		(int)
	load	[r14+8],r1
	load	[r1+112],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_322
!	jmp	_Label_321
_Label_321:
! THEN...
	mov	63,r13		! source line 63
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=finished  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+112],r1
	store	r1,[r15+0]
!   Call the function
	mov	63,r13		! source line 63
	mov	"\0\0CE",r10
	call	printInt
	jmp	_Label_323
_Label_322:
! ELSE...
	mov	65,r13		! source line 65
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_324 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_324  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	65,r13		! source line 65
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_323:
! CALL STATEMENT...
!   _temp_325 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_325  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	69,r13		! source line 69
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_330 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_331 = chairs - 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_330  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-104]
_Label_326:
!   Perform the FOR-LOOP termination test
!   if i > _temp_331 then goto _Label_329		
	load	[r14+-104],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_329
_Label_327:
	mov	69,r13		! source line 69
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   _temp_335 = &Cust
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-56]
!   Move address of _temp_335 [i ] into _temp_336
!     make sure index expr is >= 0
	load	[r14+-104],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-56],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   Data Move: _temp_334 = *_temp_336  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if _temp_334 != -1 then goto _Label_333		(int)
	load	[r14+-60],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_333
!	jmp	_Label_332
_Label_332:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_337 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_338
_Label_333:
! ELSE...
	mov	73,r13		! source line 73
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_340 = &Cust
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-40]
!   Move address of _temp_340 [i ] into _temp_341
!     make sure index expr is >= 0
	load	[r14+-104],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-40],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   Data Move: _temp_339 = *_temp_341  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	73,r13		! source line 73
	mov	"\0\0CE",r10
	call	printInt
! END IF...
_Label_338:
! IF STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0IF",r10
!   _temp_344 = chairs - 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if i == _temp_344 then goto _Label_343		(int)
	load	[r14+-104],r1
	load	[r14+-32],r2
	cmp	r1,r2
	be	_Label_343
!	jmp	_Label_342
_Label_342:
! THEN...
	mov	76,r13		! source line 76
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_345 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_345  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	76,r13		! source line 76
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_343:
!   Increment the FOR-LOOP index variable and jump back
_Label_328:
!   i = i + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_326
! END FOR
_Label_329:
! CALL STATEMENT...
!   _temp_346 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	81,r13		! source line 81
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	82,r13		! source line 82
	mov	"\0\0IF",r10
!   if enter <= -1 then goto _Label_348		(int)
	load	[r14+8],r1
	load	[r1+104],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_348
!	jmp	_Label_347
_Label_347:
! THEN...
	mov	83,r13		! source line 83
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=enter  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+104],r1
	store	r1,[r15+0]
!   Call the function
	mov	83,r13		! source line 83
	mov	"\0\0CE",r10
	call	printInt
	jmp	_Label_349
_Label_348:
! ELSE...
	mov	85,r13		! source line 85
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_350 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_350  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	85,r13		! source line 85
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_349:
! CALL STATEMENT...
!   _temp_351 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_351  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	87,r13		! source line 87
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if exit <= -1 then goto _Label_353		(int)
	load	[r14+8],r1
	load	[r1+108],r1
	mov	-1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_353
!	jmp	_Label_352
_Label_352:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exit  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+108],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	printInt
	jmp	_Label_354
_Label_353:
! ELSE...
	mov	92,r13		! source line 92
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_355 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_355  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	92,r13		! source line 92
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_354:
! CALL STATEMENT...
!   Call the function
	mov	94,r13		! source line 94
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	94,r13		! source line 94
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_4:
	.word	_sourceFileName
	.word	_Label_356
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_357
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_358
	.word	-12
	.word	4
	.word	_Label_359
	.word	-16
	.word	4
	.word	_Label_360
	.word	-20
	.word	4
	.word	_Label_361
	.word	-24
	.word	4
	.word	_Label_362
	.word	-28
	.word	4
	.word	_Label_363
	.word	-32
	.word	4
	.word	_Label_364
	.word	-36
	.word	4
	.word	_Label_365
	.word	-40
	.word	4
	.word	_Label_366
	.word	-44
	.word	4
	.word	_Label_367
	.word	-48
	.word	4
	.word	_Label_368
	.word	-52
	.word	4
	.word	_Label_369
	.word	-56
	.word	4
	.word	_Label_370
	.word	-60
	.word	4
	.word	_Label_371
	.word	-64
	.word	4
	.word	_Label_372
	.word	-68
	.word	4
	.word	_Label_373
	.word	-72
	.word	4
	.word	_Label_374
	.word	-76
	.word	4
	.word	_Label_375
	.word	-80
	.word	4
	.word	_Label_376
	.word	-84
	.word	4
	.word	_Label_377
	.word	-88
	.word	4
	.word	_Label_378
	.word	-92
	.word	4
	.word	_Label_379
	.word	-96
	.word	4
	.word	_Label_380
	.word	-100
	.word	4
	.word	_Label_381
	.word	-104
	.word	4
	.word	0
_Label_356:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"PrintState\0"
	.align
_Label_357:
	.ascii	"Pself\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_341\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_340\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_324\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_320\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_319\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_318\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_313\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_311\0"
	.align
_Label_381:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Enter  ===============
! 
_Method_P_Main_Barbershop_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_5,r1
	push	r1
	mov	4,r1
_Label_585:
	push	r0
	sub	r1,1,r1
	bne	_Label_585
	mov	97,r13		! source line 97
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	98,r13		! source line 98
	mov	"\0\0SE",r10
!   _temp_382 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Send message Lock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	99,r13		! source line 99
	mov	"\0\0AS",r10
!   enter = id		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_383) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintState
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0AS",r10
!   enter = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+104]
! SEND STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0SE",r10
!   _temp_384 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_5:
	.word	_sourceFileName
	.word	_Label_385
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_386
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_387
	.word	12
	.word	4
	.word	_Label_388
	.word	-12
	.word	4
	.word	_Label_389
	.word	-16
	.word	4
	.word	_Label_390
	.word	-20
	.word	4
	.word	0
_Label_385:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Enter\0"
	.align
_Label_386:
	.ascii	"Pself\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_384\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
! 
! ===============  METHOD Exit  ===============
! 
_Method_P_Main_Barbershop_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_6,r1
	push	r1
	mov	4,r1
_Label_586:
	push	r0
	sub	r1,1,r1
	bne	_Label_586
	mov	105,r13		! source line 105
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_391 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Send message Lock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   exit = id		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+108]
! IF STATEMENT...
	mov	108,r13		! source line 108
	mov	"\0\0IF",r10
!   if finished != id then goto _Label_393		(int)
	load	[r14+8],r1
	load	[r1+112],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_393
!	jmp	_Label_392
_Label_392:
! THEN...
	mov	109,r13		! source line 109
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0AS",r10
!   finished = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+112]
! END IF...
_Label_393:
! SEND STATEMENT...
	mov	111,r13		! source line 111
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_394) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintState
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0AS",r10
!   exit = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+108]
! SEND STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0SE",r10
!   _temp_395 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_6:
	.word	_sourceFileName
	.word	_Label_396
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_397
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_398
	.word	12
	.word	4
	.word	_Label_399
	.word	-12
	.word	4
	.word	_Label_400
	.word	-16
	.word	4
	.word	_Label_401
	.word	-20
	.word	4
	.word	0
_Label_396:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Exit\0"
	.align
_Label_397:
	.ascii	"Pself\0"
	.align
_Label_398:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_395\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
! 
! ===============  METHOD Sit  ===============
! 
_Method_P_Main_Barbershop_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_7,r1
	push	r1
	mov	12,r1
_Label_587:
	push	r0
	sub	r1,1,r1
	bne	_Label_587
	mov	116,r13		! source line 116
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0SE",r10
!   _temp_402 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-48]
!   Send message Lock
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_407 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_408 = chairs - 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_407  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_403:
!   Perform the FOR-LOOP termination test
!   if i > _temp_408 then goto _Label_406		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_406
_Label_404:
	mov	119,r13		! source line 119
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	120,r13		! source line 120
	mov	"\0\0IF",r10
!   _temp_412 = &Cust
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-32]
!   Move address of _temp_412 [i ] into _temp_413
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-32],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Data Move: _temp_411 = *_temp_413  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   if _temp_411 != -1 then goto _Label_410		(int)
	load	[r14+-36],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_410
!	jmp	_Label_409
_Label_409:
! THEN...
	mov	121,r13		! source line 121
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	121,r13		! source line 121
	mov	"\0\0AS",r10
!   _temp_414 = &Cust
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-24]
!   Move address of _temp_414 [i ] into _temp_415
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: *_temp_415 = id  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+-20],r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0BR",r10
	jmp	_Label_406
! END IF...
_Label_410:
!   Increment the FOR-LOOP index variable and jump back
_Label_405:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_403
! END FOR
_Label_406:
! SEND STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_416) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintState
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0SE",r10
!   _temp_417 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	126,r13		! source line 126
	mov	"\0\0RE",r10
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_7:
	.word	_sourceFileName
	.word	_Label_418
	.word	8		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_419
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_420
	.word	12
	.word	4
	.word	_Label_421
	.word	-12
	.word	4
	.word	_Label_422
	.word	-16
	.word	4
	.word	_Label_423
	.word	-20
	.word	4
	.word	_Label_424
	.word	-24
	.word	4
	.word	_Label_425
	.word	-28
	.word	4
	.word	_Label_426
	.word	-32
	.word	4
	.word	_Label_427
	.word	-36
	.word	4
	.word	_Label_428
	.word	-40
	.word	4
	.word	_Label_429
	.word	-44
	.word	4
	.word	_Label_430
	.word	-48
	.word	4
	.word	_Label_431
	.word	-52
	.word	4
	.word	0
_Label_418:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Sit\0"
	.align
_Label_419:
	.ascii	"Pself\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_421:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_414\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_431:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Unsit  ===============
! 
_Method_P_Main_Barbershop_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_8,r1
	push	r1
	mov	8,r1
_Label_588:
	push	r0
	sub	r1,1,r1
	bne	_Label_588
	mov	129,r13		! source line 129
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_436 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_437 = chairs - 1		(int)
	load	[r14+8],r1
	load	[r1+100],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_436  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-40]
_Label_432:
!   Perform the FOR-LOOP termination test
!   if i > _temp_437 then goto _Label_435		
	load	[r14+-40],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_435
_Label_433:
	mov	131,r13		! source line 131
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	132,r13		! source line 132
	mov	"\0\0IF",r10
!   _temp_441 = &Cust
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-24]
!   Move address of _temp_441 [i ] into _temp_442
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-24],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-20]
!   Data Move: _temp_440 = *_temp_442  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_440 != id then goto _Label_439		(int)
	load	[r14+-28],r1
	load	[r14+12],r2
	cmp	r1,r2
	bne	_Label_439
!	jmp	_Label_438
_Label_438:
! THEN...
	mov	133,r13		! source line 133
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0AS",r10
!   _temp_443 = &Cust
	load	[r14+8],r1
	add	r1,44,r1
	store	r1,[r14+-16]
!   Move address of _temp_443 [i ] into _temp_444
!     make sure index expr is >= 0
	load	[r14+-40],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-16],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-12]
!   Data Move: *_temp_444 = -1  (sizeInBytes=4)
	mov	-1,r1
	load	[r14+-12],r2
	store	r1,[r2]
! BREAK STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0BR",r10
	jmp	_Label_435
! END IF...
_Label_439:
!   Increment the FOR-LOOP index variable and jump back
_Label_434:
!   i = i + 1
	load	[r14+-40],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
	jmp	_Label_432
! END FOR
_Label_435:
! RETURN STATEMENT...
	mov	131,r13		! source line 131
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_8:
	.word	_sourceFileName
	.word	_Label_445
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_446
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_447
	.word	12
	.word	4
	.word	_Label_448
	.word	-12
	.word	4
	.word	_Label_449
	.word	-16
	.word	4
	.word	_Label_450
	.word	-20
	.word	4
	.word	_Label_451
	.word	-24
	.word	4
	.word	_Label_452
	.word	-28
	.word	4
	.word	_Label_453
	.word	-32
	.word	4
	.word	_Label_454
	.word	-36
	.word	4
	.word	_Label_455
	.word	-40
	.word	4
	.word	0
_Label_445:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Unsit\0"
	.align
_Label_446:
	.ascii	"Pself\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_448:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_443\0"
	.align
_Label_450:
	.byte	'?'
	.ascii	"_temp_442\0"
	.align
_Label_451:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
_Label_452:
	.byte	'?'
	.ascii	"_temp_440\0"
	.align
_Label_453:
	.byte	'?'
	.ascii	"_temp_437\0"
	.align
_Label_454:
	.byte	'?'
	.ascii	"_temp_436\0"
	.align
_Label_455:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Serve  ===============
! 
_Method_P_Main_Barbershop_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_9,r1
	push	r1
	mov	6,r1
_Label_589:
	push	r0
	sub	r1,1,r1
	bne	_Label_589
	mov	139,r13		! source line 139
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_456 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Send message Lock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0AS",r10
!   current = id		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	142,r13		! source line 142
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_457) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=id  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Unsit
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
! SEND STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_458) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintState
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0SE",r10
!   _temp_459 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_9:
	.word	_sourceFileName
	.word	_Label_460
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_461
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_462
	.word	12
	.word	4
	.word	_Label_463
	.word	-12
	.word	4
	.word	_Label_464
	.word	-16
	.word	4
	.word	_Label_465
	.word	-20
	.word	4
	.word	_Label_466
	.word	-24
	.word	4
	.word	0
_Label_460:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Serve\0"
	.align
_Label_461:
	.ascii	"Pself\0"
	.align
_Label_462:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_458\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
! 
! ===============  METHOD Standup  ===============
! 
_Method_P_Main_Barbershop_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_Barbershop_10,r1
	push	r1
	mov	4,r1
_Label_590:
	push	r0
	sub	r1,1,r1
	bne	_Label_590
	mov	148,r13		! source line 148
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   _temp_467 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Send message Lock
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	150,r13		! source line 150
	mov	"\0\0AS",r10
!   finished = current		(4 bytes)
	load	[r14+8],r1
	load	[r1+92],r1
	load	[r14+8],r2
	store	r1,[r2+112]
! ASSIGNMENT STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0AS",r10
!   current = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+92]
! SEND STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_468) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintState
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0SE",r10
!   _temp_469 = &mut
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	153,r13		! source line 153
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_Barbershop_10:
	.word	_sourceFileName
	.word	_Label_470
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_471
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_472
	.word	-12
	.word	4
	.word	_Label_473
	.word	-16
	.word	4
	.word	_Label_474
	.word	-20
	.word	4
	.word	0
_Label_470:
	.ascii	"Barbershop"
	.ascii	"::"
	.ascii	"Standup\0"
	.align
_Label_471:
	.ascii	"Pself\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_469\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_468\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
! 
! ===============  CLASS FrontDeskMonitor  ===============
! 
! Dispatch Table:
! 
_P_Main_FrontDeskMonitor:
	.word	_Label_475
	jmp	_Method_P_Main_FrontDeskMonitor_1	! 4:	Init
	jmp	_Method_P_Main_FrontDeskMonitor_2	! 8:	Request
	jmp	_Method_P_Main_FrontDeskMonitor_3	! 12:	Return
	jmp	_Method_P_Main_FrontDeskMonitor_4	! 16:	Print
	jmp	_Method_P_Main_FrontDeskMonitor_5	! 20:	Withdraw
	jmp	_Method_P_Main_FrontDeskMonitor_6	! 24:	Deposit
	.word	0
! 
! Class descriptor:
! 
_Label_475:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_476
	.word	_sourceFileName
	.word	55		! line number
	.word	72		! size of instances, in bytes
	.word	_P_Main_FrontDeskMonitor
	.word	_P_System_Object
	.word	0
_Label_476:
	.ascii	"FrontDeskMonitor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_FrontDeskMonitor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_1,r1
	push	r1
	mov	7,r1
_Label_591:
	push	r0
	sub	r1,1,r1
	bne	_Label_591
	mov	288,r13		! source line 288
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	289,r13		! source line 289
	mov	"\0\0AS",r10
!   dices = numberOfDice		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+56]
! ASSIGNMENT STATEMENT...
	mov	291,r13		! source line 291
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mustWait = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   mustWait = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	292,r13		! source line 292
	mov	"\0\0SE",r10
!   _temp_478 = &mustWait
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: dieReady = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   dieReady = _P_Synch_Condition
	set	_P_Synch_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0SE",r10
!   _temp_480 = &dieReady
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mut = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,36,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mut = _P_Synch_Mutex
	set	_P_Synch_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+36]
! SEND STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0SE",r10
!   _temp_482 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0AS",r10
!   isDeskBusy = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+60]
! ASSIGNMENT STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0AS",r10
!   inQueue = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+64]
! ASSIGNMENT STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0AS",r10
!   needed = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+68]
! RETURN STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_1:
	.word	_sourceFileName
	.word	_Label_483
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_484
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_485
	.word	12
	.word	4
	.word	_Label_486
	.word	-12
	.word	4
	.word	_Label_487
	.word	-16
	.word	4
	.word	_Label_488
	.word	-20
	.word	4
	.word	_Label_489
	.word	-24
	.word	4
	.word	_Label_490
	.word	-28
	.word	4
	.word	_Label_491
	.word	-32
	.word	4
	.word	0
_Label_483:
	.ascii	"FrontDeskMonitor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_484:
	.ascii	"Pself\0"
	.align
_Label_485:
	.byte	'I'
	.ascii	"numberOfDice\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_482\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_481\0"
	.align
_Label_488:
	.byte	'?'
	.ascii	"_temp_480\0"
	.align
_Label_489:
	.byte	'?'
	.ascii	"_temp_479\0"
	.align
_Label_490:
	.byte	'?'
	.ascii	"_temp_478\0"
	.align
_Label_491:
	.byte	'?'
	.ascii	"_temp_477\0"
	.align
! 
! ===============  METHOD Request  ===============
! 
_Method_P_Main_FrontDeskMonitor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_2,r1
	push	r1
	mov	16,r1
_Label_592:
	push	r0
	sub	r1,1,r1
	bne	_Label_592
	mov	304,r13		! source line 304
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0SE",r10
!   _temp_492 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-60]
!   Send message Lock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   _temp_493 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-56]
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_494) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_493  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numNeeded  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0AS",r10
!   inQueue = inQueue + 1		(int)
	load	[r14+8],r1
	load	[r1+64],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+64]
! IF STATEMENT...
	mov	309,r13		! source line 309
	mov	"\0\0IF",r10
!   if isDeskBusy then goto _Label_495 else goto _Label_496
	load	[r14+8],r1
	loadb	[r1+60],r1
	cmp	r1,0
	be	_Label_496
	jmp	_Label_495
_Label_495:
! THEN...
	mov	310,r13		! source line 310
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_497 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-48]
!   _temp_498 = &mustWait
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=_temp_497  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_496:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   isDeskBusy = 1		(1 byte)
	mov	1,r1
	load	[r14+8],r2
	storeb	r1,[r2+60]
! ASSIGNMENT STATEMENT...
	mov	314,r13		! source line 314
	mov	"\0\0AS",r10
!   needed = numNeeded		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! WHILE STATEMENT...
	mov	316,r13		! source line 316
	mov	"\0\0WH",r10
_Label_499:
!   if numNeeded <= dices then goto _Label_501		(int)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_501
!	jmp	_Label_500
_Label_500:
	mov	316,r13		! source line 316
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	317,r13		! source line 317
	mov	"\0\0SE",r10
!   _temp_502 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-40]
!   _temp_503 = &dieReady
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_502  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_499
_Label_501:
! SEND STATEMENT...
	mov	320,r13		! source line 320
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_504) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=numNeeded  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Withdraw
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	321,r13		! source line 321
	mov	"\0\0SE",r10
!   _temp_505 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_506) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_505  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numNeeded  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	323,r13		! source line 323
	mov	"\0\0AS",r10
!   inQueue = inQueue - 1		(int)
	load	[r14+8],r1
	load	[r1+64],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+64]
! IF STATEMENT...
	mov	324,r13		! source line 324
	mov	"\0\0IF",r10
!   if intIsZero (inQueue) then goto _Label_507
	load	[r14+8],r1
	load	[r1+64],r1
	cmp	r1,r0
	be	_Label_507
	jmp	_Label_508
_Label_507:
! THEN...
	mov	325,r13		! source line 325
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   isDeskBusy = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+60]
! END IF...
_Label_508:
! SEND STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0SE",r10
!   _temp_509 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   _temp_510 = &mustWait
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_509  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_511 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_2:
	.word	_sourceFileName
	.word	_Label_512
	.word	8		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_513
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_514
	.word	12
	.word	4
	.word	_Label_515
	.word	-12
	.word	4
	.word	_Label_516
	.word	-16
	.word	4
	.word	_Label_517
	.word	-20
	.word	4
	.word	_Label_518
	.word	-24
	.word	4
	.word	_Label_519
	.word	-28
	.word	4
	.word	_Label_520
	.word	-32
	.word	4
	.word	_Label_521
	.word	-36
	.word	4
	.word	_Label_522
	.word	-40
	.word	4
	.word	_Label_523
	.word	-44
	.word	4
	.word	_Label_524
	.word	-48
	.word	4
	.word	_Label_525
	.word	-52
	.word	4
	.word	_Label_526
	.word	-56
	.word	4
	.word	_Label_527
	.word	-60
	.word	4
	.word	0
_Label_512:
	.ascii	"FrontDeskMonitor"
	.ascii	"::"
	.ascii	"Request\0"
	.align
_Label_513:
	.ascii	"Pself\0"
	.align
_Label_514:
	.byte	'I'
	.ascii	"numNeeded\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_509\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_519:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_520:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_522:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_523:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_525:
	.byte	'?'
	.ascii	"_temp_494\0"
	.align
_Label_526:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
! 
! ===============  METHOD Return  ===============
! 
_Method_P_Main_FrontDeskMonitor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_3,r1
	push	r1
	mov	10,r1
_Label_593:
	push	r0
	sub	r1,1,r1
	bne	_Label_593
	mov	332,r13		! source line 332
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	333,r13		! source line 333
	mov	"\0\0SE",r10
!   _temp_528 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_529) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=numReturned  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Deposit
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	335,r13		! source line 335
	mov	"\0\0SE",r10
!   _temp_530 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-28]
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_531) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_530  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numReturned  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0IF",r10
!   if isDeskBusy then goto _Label_532 else goto _Label_533
	load	[r14+8],r1
	loadb	[r1+60],r1
	cmp	r1,0
	be	_Label_533
	jmp	_Label_532
_Label_532:
! THEN...
	mov	337,r13		! source line 337
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0IF",r10
!   if needed > dices then goto _Label_535		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	load	[r14+8],r2
	load	[r2+56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_535
!	jmp	_Label_534
_Label_534:
! THEN...
	mov	338,r13		! source line 338
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0SE",r10
!   _temp_536 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   _temp_537 = &dieReady
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_536  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_535:
! END IF...
_Label_533:
! SEND STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0SE",r10
!   _temp_538 = &mut
	load	[r14+8],r1
	add	r1,36,r1
	store	r1,[r14+-12]
!   Send message Unlock
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_3:
	.word	_sourceFileName
	.word	_Label_539
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_540
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_541
	.word	12
	.word	4
	.word	_Label_542
	.word	-12
	.word	4
	.word	_Label_543
	.word	-16
	.word	4
	.word	_Label_544
	.word	-20
	.word	4
	.word	_Label_545
	.word	-24
	.word	4
	.word	_Label_546
	.word	-28
	.word	4
	.word	_Label_547
	.word	-32
	.word	4
	.word	_Label_548
	.word	-36
	.word	4
	.word	0
_Label_539:
	.ascii	"FrontDeskMonitor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_540:
	.ascii	"Pself\0"
	.align
_Label_541:
	.byte	'I'
	.ascii	"numReturned\0"
	.align
_Label_542:
	.byte	'?'
	.ascii	"_temp_538\0"
	.align
_Label_543:
	.byte	'?'
	.ascii	"_temp_537\0"
	.align
_Label_544:
	.byte	'?'
	.ascii	"_temp_536\0"
	.align
_Label_545:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_546:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_547:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_548:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Main_FrontDeskMonitor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_4,r1
	push	r1
	mov	6,r1
_Label_594:
	push	r0
	sub	r1,1,r1
	bne	_Label_594
	mov	348,r13		! source line 348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_550 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_549 = *_temp_550  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_549  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	349,r13		! source line 349
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_551 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	350,r13		! source line 350
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=str  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	351,r13		! source line 351
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_552 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_552  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	352,r13		! source line 352
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=count  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_553 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_553  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=dices  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+56],r1
	store	r1,[r15+0]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	357,r13		! source line 357
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_4:
	.word	_sourceFileName
	.word	_Label_554
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_555
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_556
	.word	12
	.word	4
	.word	_Label_557
	.word	16
	.word	4
	.word	_Label_558
	.word	-12
	.word	4
	.word	_Label_559
	.word	-16
	.word	4
	.word	_Label_560
	.word	-20
	.word	4
	.word	_Label_561
	.word	-24
	.word	4
	.word	_Label_562
	.word	-28
	.word	4
	.word	0
_Label_554:
	.ascii	"FrontDeskMonitor"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_555:
	.ascii	"Pself\0"
	.align
_Label_556:
	.byte	'P'
	.ascii	"str\0"
	.align
_Label_557:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
! 
! ===============  METHOD Withdraw  ===============
! 
_Method_P_Main_FrontDeskMonitor_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_5,r1
	push	r1
	mov	360,r13		! source line 360
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0AS",r10
!   dices = dices - x		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	load	[r14+12],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! RETURN STATEMENT...
	mov	361,r13		! source line 361
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_5:
	.word	_sourceFileName
	.word	_Label_563
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_564
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_565
	.word	12
	.word	4
	.word	0
_Label_563:
	.ascii	"FrontDeskMonitor"
	.ascii	"::"
	.ascii	"Withdraw\0"
	.align
_Label_564:
	.ascii	"Pself\0"
	.align
_Label_565:
	.byte	'I'
	.ascii	"x\0"
	.align
! 
! ===============  METHOD Deposit  ===============
! 
_Method_P_Main_FrontDeskMonitor_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_6,r1
	push	r1
	mov	364,r13		! source line 364
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0AS",r10
!   dices = dices + x		(int)
	load	[r14+8],r1
	load	[r1+56],r1
	load	[r14+12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+56]
! RETURN STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_FrontDeskMonitor_6:
	.word	_sourceFileName
	.word	_Label_566
	.word	8		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_567
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_568
	.word	12
	.word	4
	.word	0
_Label_566:
	.ascii	"FrontDeskMonitor"
	.ascii	"::"
	.ascii	"Deposit\0"
	.align
_Label_567:
	.ascii	"Pself\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"x\0"
	.align
