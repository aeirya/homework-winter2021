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
	.import	_P_System_PrintMemory
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
	.import	_P_BitMap_TestBitMap
	.import	_P_Kernel_TimerInterruptHandler
	.import	_P_Kernel_DiskInterruptHandler
	.import	_P_Kernel_SerialInterruptHandler
	.import	_P_Kernel_IllegalInstructionHandler
	.import	_P_Kernel_ArithmeticExceptionHandler
	.import	_P_Kernel_AddressExceptionHandler
	.import	_P_Kernel_PageInvalidExceptionHandler
	.import	_P_Kernel_PageReadonlyExceptionHandler
	.import	_P_Kernel_PrivilegedInstructionHandler
	.import	_P_Kernel_AlignmentExceptionHandler
	.import	_P_Kernel_SyscallTrapHandler
	.import	_P_Kernel_Handle_Sys_Fork
	.import	_P_Kernel_Handle_Sys_Yield
	.import	_P_Kernel_Handle_Sys_Exec
	.import	_P_Kernel_Handle_Sys_Join
	.import	_P_Kernel_Handle_Sys_Exit
	.import	_P_Kernel_Handle_Sys_Create
	.import	_P_Kernel_Handle_Sys_Open
	.import	_P_Kernel_Handle_Sys_Read
	.import	_P_Kernel_Handle_Sys_Write
	.import	_P_Kernel_Handle_Sys_Seek
	.import	_P_Kernel_Handle_Sys_Close
	.import	_P_Kernel_Handle_Sys_Shutdown
	.import	_P_Kernel_InitializeScheduler
	.import	_P_Kernel_Run
	.import	_P_Kernel_PrintReadyList
	.import	_P_Kernel_ThreadStartMain
	.import	_P_Kernel_ThreadFinish
	.import	_P_Kernel_FatalError_ThreadVersion
	.import	_P_Kernel_SetInterruptsTo
	.import	_P_Kernel_ProcessFinish
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! Externally visible functions in this package
	.export	_mainEntry
	.export	main
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Kernel_Semaphore
! The following class and its methods are from other packages
	.import	_P_Kernel_Mutex
! The following class and its methods are from other packages
	.import	_P_Kernel_Condition
! The following class and its methods are from other packages
	.import	_P_Kernel_HoareCondition
! The following class and its methods are from other packages
	.import	_P_Kernel_Thread
! The following class and its methods are from other packages
	.import	_P_Kernel_ThreadManager
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessControlBlock
! The following class and its methods are from other packages
	.import	_P_Kernel_ProcessManager
! The following class and its methods are from other packages
	.import	_P_Kernel_FrameManager
! The following class and its methods are from other packages
	.import	_P_Kernel_AddrSpace
! The following class and its methods are from this package
	.export	_P_Main_HoareMonitor
	.export	_Method_P_Main_HoareMonitor_1
	.export	_Method_P_Main_HoareMonitor_2
	.export	_Method_P_Main_HoareMonitor_3
	.export	_Method_P_Main_HoareMonitor_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
	.import	_P_Kernel_readyList
	.import	_P_Kernel_currentThread
	.import	_P_Kernel_mainThread
	.import	_P_Kernel_idleThread
	.import	_P_Kernel_threadsToBeDestroyed
	.import	_P_Kernel_currentInterruptStatus
	.import	_P_Kernel_processManager
	.import	_P_Kernel_threadManager
	.import	_P_Kernel_frameManager
! Global variables in this package
	.data
_Global_uniqueNumberLock:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_nextUnique:
	.word	0x00000001		! decimal value = 1
_Global_allDone:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_freeze:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_allDone2:
! Static object
	.word	_P_Kernel_Semaphore
	.word	0
	.word	0
	.word	0
	.word	0
_Global_histogram:
! Static array
	.word	27		! number of elements
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
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
_Global_cmut:
! Static object
	.word	_P_Kernel_Mutex
	.word	0
	.word	0
	.word	0
	.word	0
_Global_c:
! Static object
	.word	_P_Kernel_HoareCondition
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
_Global_mon:
! Static object
	.word	_P_Main_HoareMonitor
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
_Global_flag:
	.byte	1
	.align
! String constants
_StringConst_29:
	.word	5			! length
	.ascii	"rem: "
	.align
_StringConst_28:
	.word	6			! length
	.ascii	"Thread"
	.align
_StringConst_27:
	.word	9			! length
	.ascii	" returns "
	.align
_StringConst_26:
	.word	10			! length
	.ascii	" requests "
	.align
_StringConst_25:
	.word	19			! length
	.ascii	"ConditionTestThread"
	.align
_StringConst_24:
	.word	8			! length
	.ascii	"Bye pie "
	.align
_StringConst_23:
	.word	10			! length
	.ascii	"I\'m a pie "
	.align
_StringConst_22:
	.word	49			! length
	.ascii	"Data corruption, indicating that frame was shared"
	.align
_StringConst_21:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_20:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_19:
	.word	43			! length
	.ascii	"Problems with bits in some page table entry"
	.align
_StringConst_18:
	.word	35			! length
	.ascii	"Bad frame number in some addr space"
	.align
_StringConst_17:
	.word	32			! length
	.ascii	"addrSpace.numberOfPages is wrong"
	.align
_StringConst_16:
	.word	57			! length
	.ascii	"\n\n***** FRAME-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_15:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_14:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_13:
	.word	66			! length
	.ascii	"\n\nHere is a histogram showing how many times each frame was used:\n"
	.align
_StringConst_12:
	.word	16			! length
	.ascii	"TestFrameManager"
	.align
_StringConst_11:
	.word	36			! length
	.ascii	"\n\n*****  FRAME-MANAGER TEST  *****\n\n"
	.align
_StringConst_10:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_9:
	.word	59			! length
	.ascii	"\n\n***** PROCESS-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_8:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_7:
	.word	18			! length
	.ascii	"TestProcessManager"
	.align
_StringConst_6:
	.word	38			! length
	.ascii	"\n\n*****  PROCESS-MANAGER TEST  *****\n\n"
	.align
_StringConst_5:
	.word	31			! length
	.ascii	"Concurrency control failure (2)"
	.align
_StringConst_4:
	.word	58			! length
	.ascii	"\n\n***** THREAD-MANAGER TEST COMPLETED SUCCESSFULLY *****\n\n"
	.align
_StringConst_3:
	.word	31			! length
	.ascii	"Concurrency control failure (1)"
	.align
_StringConst_2:
	.word	17			! length
	.ascii	"TestThreadManager"
	.align
_StringConst_1:
	.word	37			! length
	.ascii	"\n\n*****  THREAD-MANAGER TEST  *****\n\n"
	.align
	.text
! 
! =====  MAIN ENTRY POINT  =====
! 
_mainEntry:
	set	_packageName,r2		! Get CheckVersion started
	set	0xeb2db4a8,r3		! .  hashVal = -349326168
	call	_CheckVersion_P_Main_	! .
	cmp	r1,0			! .
	be	_Label_43		! .
	ret				! .
_Label_43:				! .
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
	set	0xeb2db4a8,r4		! myHashVal = -349326168
	cmp	r3,r4
	be	_Label_44
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
_Label_44:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_45
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_45
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_45
! Make sure _P_Kernel_ has hash value 0x86e782dd (decimal -2031648035)
	set	_packageName,r2
	set	0x86e782dd,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_45
_Label_45:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
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
	mov	8,r1
_Label_637:
	push	r0
	sub	r1,1,r1
	bne	_Label_637
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_46 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	20,r13		! source line 20
	mov	"\0\0CA",r10
	call	_P_Kernel_InitializeScheduler
! ASSIGNMENT STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_processManager = zeros  (sizeInBytes=1316)
	set	_P_Kernel_processManager,r4
	mov	329,r3
_Label_638:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_638
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_48 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
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
	mov	27,r13		! source line 27
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadManager = zeros  (sizeInBytes=41696)
	set	_P_Kernel_threadManager,r4
	mov	10424,r3
_Label_639:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_639
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_50 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
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
	mov	31,r13		! source line 31
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_frameManager = zeros  (sizeInBytes=56)
	set	_P_Kernel_frameManager,r4
	mov	14,r3
_Label_640:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_640
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_52 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	116,r13		! source line 116
	mov	"\0\0CA",r10
	call	_function_30_RunHoareTest
! CALL STATEMENT...
!   Call the function
	mov	118,r13		! source line 118
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor_main:
	.word	_sourceFileName
	.word	_Label_53
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_54
	.word	-12
	.word	4
	.word	_Label_55
	.word	-16
	.word	4
	.word	_Label_56
	.word	-20
	.word	4
	.word	_Label_57
	.word	-24
	.word	4
	.word	_Label_58
	.word	-28
	.word	4
	.word	_Label_59
	.word	-32
	.word	4
	.word	_Label_60
	.word	-36
	.word	4
	.word	0
_Label_53:
	.ascii	"main\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_51\0"
	.align
_Label_56:
	.byte	'?'
	.ascii	"_temp_50\0"
	.align
_Label_57:
	.byte	'?'
	.ascii	"_temp_49\0"
	.align
_Label_58:
	.byte	'?'
	.ascii	"_temp_48\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_47\0"
	.align
_Label_60:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_42_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_42_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_641:
	push	r0
	sub	r1,1,r1
	bne	_Label_641
	mov	134,r13		! source line 134
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0SE",r10
!   _temp_61 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-16]
!   Send message Lock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0AS",r10
!   _Global_nextUnique = _Global_nextUnique + count		(int)
	set	_Global_nextUnique,r1
	load	[r1],r1
	load	[r14+8],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	set	_Global_nextUnique,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0SE",r10
!   _temp_62 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
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
	mov	140,r13		! source line 140
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_42_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_63
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_64
	.word	8
	.word	4
	.word	_Label_65
	.word	-12
	.word	4
	.word	_Label_66
	.word	-16
	.word	4
	.word	_Label_67
	.word	-20
	.word	4
	.word	0
_Label_63:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_64:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_65:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_66:
	.byte	'?'
	.ascii	"_temp_61\0"
	.align
_Label_67:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_41_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_41_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_642:
	push	r0
	sub	r1,1,r1
	bne	_Label_642
	mov	171,r13		! source line 171
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_68 = &_Global_allDone
	set	_Global_allDone,r1
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
	mov	176,r13		! source line 176
	mov	"\0\0SE",r10
!   _temp_69 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	177,r13		! source line 177
	mov	"\0\0SE",r10
!   _temp_70 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	178,r13		! source line 178
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_71 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_71  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	180,r13		! source line 180
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_76 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_77 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_76  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_72:
!   Perform the FOR-LOOP termination test
!   if i > _temp_77 then goto _Label_75		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_75
_Label_73:
	mov	182,r13		! source line 182
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_78)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_643:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_643
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	184,r13		! source line 184
	mov	"\0\0SE",r10
!   _temp_80 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_80  sizeInBytes=4
	load	[r14+-40],r1
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
	mov	185,r13		! source line 185
	mov	"\0\0SE",r10
!   _temp_81 = _function_40_TestThreadManager
	set	_function_40_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_81  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_74:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_72
! END FOR
_Label_75:
! FOR STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_86 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_87 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_86  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_82:
!   Perform the FOR-LOOP termination test
!   if i > _temp_87 then goto _Label_85		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_85
_Label_83:
	mov	190,r13		! source line 190
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	191,r13		! source line 191
	mov	"\0\0SE",r10
!   _temp_88 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_84:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_82
! END FOR
_Label_85:
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	194,r13		! source line 194
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=_temp_91  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_91 == 401 then goto _Label_90		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_90
!	jmp	_Label_89
_Label_89:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_92 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_92  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	195,r13		! source line 195
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_90:
! CALL STATEMENT...
!   _temp_93 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_93  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	197,r13		! source line 197
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	197,r13		! source line 197
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_41_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_94
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_95
	.word	-12
	.word	4
	.word	_Label_96
	.word	-16
	.word	4
	.word	_Label_97
	.word	-20
	.word	4
	.word	_Label_98
	.word	-24
	.word	4
	.word	_Label_99
	.word	-28
	.word	4
	.word	_Label_100
	.word	-32
	.word	4
	.word	_Label_101
	.word	-36
	.word	4
	.word	_Label_102
	.word	-40
	.word	4
	.word	_Label_103
	.word	-44
	.word	4
	.word	_Label_104
	.word	-48
	.word	4
	.word	_Label_105
	.word	-52
	.word	4
	.word	_Label_106
	.word	-56
	.word	4
	.word	_Label_107
	.word	-60
	.word	4
	.word	_Label_108
	.word	-64
	.word	4
	.word	_Label_109
	.word	-68
	.word	4
	.word	_Label_110
	.word	-72
	.word	4
	.word	_Label_111
	.word	-76
	.word	4
	.word	_Label_112
	.word	-80
	.word	4
	.word	0
_Label_94:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_93\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_92\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_91\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_88\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_79\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_78\0"
	.align
_Label_105:
	.byte	'?'
	.ascii	"_temp_77\0"
	.align
_Label_106:
	.byte	'?'
	.ascii	"_temp_76\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_69\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_111:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_112:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_40_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_40_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_644:
	push	r0
	sub	r1,1,r1
	bne	_Label_644
	mov	209,r13		! source line 209
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_117 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_118 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_117  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_113:
!   Perform the FOR-LOOP termination test
!   if i > _temp_118 then goto _Label_116		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_116
_Label_114:
	mov	213,r13		! source line 213
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	215,r13		! source line 215
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
	mov	216,r13		! source line 216
	mov	"\0\0SE",r10
!   _temp_119 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-64]
!   Send message GetANewThread
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_120 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_120 [0 ] into _temp_121
!     make sure index expr is >= 0
	mov	0,r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-56]
!   Data Move: *_temp_121 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	218,r13		! source line 218
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_126 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_127 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_126  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_122:
!   Perform the FOR-LOOP termination test
!   if j > _temp_127 then goto _Label_125		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_125
_Label_123:
	mov	218,r13		! source line 218
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	219,r13		! source line 219
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_124:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_122
! END FOR
_Label_125:
! IF STATEMENT...
	mov	221,r13		! source line 221
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_131 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_131 [0 ] into _temp_132
!     make sure index expr is >= 0
	mov	0,r2
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
!   Data Move: _temp_130 = *_temp_132  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_130 then goto _Label_129		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_129
!	jmp	_Label_128
_Label_128:
! THEN...
	mov	222,r13		! source line 222
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_133 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_133  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	222,r13		! source line 222
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_129:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	225,r13		! source line 225
	mov	"\0\0SE",r10
!   _temp_134 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! FOR STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_139 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_140 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_139  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_135:
!   Perform the FOR-LOOP termination test
!   if j > _temp_140 then goto _Label_138		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_138
_Label_136:
	mov	226,r13		! source line 226
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_137:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_135
! END FOR
_Label_138:
!   Increment the FOR-LOOP index variable and jump back
_Label_115:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_113
! END FOR
_Label_116:
! SEND STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
!   _temp_141 = &_Global_allDone
	set	_Global_allDone,r1
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
	mov	231,r13		! source line 231
	mov	"\0\0SE",r10
!   _temp_142 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_40_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_143
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_144
	.word	8
	.word	4
	.word	_Label_145
	.word	-12
	.word	4
	.word	_Label_146
	.word	-16
	.word	4
	.word	_Label_147
	.word	-20
	.word	4
	.word	_Label_148
	.word	-24
	.word	4
	.word	_Label_149
	.word	-28
	.word	4
	.word	_Label_150
	.word	-32
	.word	4
	.word	_Label_151
	.word	-36
	.word	4
	.word	_Label_152
	.word	-40
	.word	4
	.word	_Label_153
	.word	-44
	.word	4
	.word	_Label_154
	.word	-48
	.word	4
	.word	_Label_155
	.word	-52
	.word	4
	.word	_Label_156
	.word	-56
	.word	4
	.word	_Label_157
	.word	-60
	.word	4
	.word	_Label_158
	.word	-64
	.word	4
	.word	_Label_159
	.word	-68
	.word	4
	.word	_Label_160
	.word	-72
	.word	4
	.word	_Label_161
	.word	-76
	.word	4
	.word	_Label_162
	.word	-80
	.word	4
	.word	_Label_163
	.word	-84
	.word	4
	.word	_Label_164
	.word	-88
	.word	4
	.word	0
_Label_143:
	.ascii	"TestThreadManager\0"
	.align
_Label_144:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_142\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_141\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_140\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_139\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_131\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_130\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_155:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_156:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_157:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_158:
	.byte	'?'
	.ascii	"_temp_119\0"
	.align
_Label_159:
	.byte	'?'
	.ascii	"_temp_118\0"
	.align
_Label_160:
	.byte	'?'
	.ascii	"_temp_117\0"
	.align
_Label_161:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_162:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_163:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_164:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_39_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_39_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_645:
	push	r0
	sub	r1,1,r1
	bne	_Label_645
	mov	251,r13		! source line 251
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_165 = &_Global_allDone
	set	_Global_allDone,r1
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
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_166 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
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
	mov	257,r13		! source line 257
	mov	"\0\0SE",r10
!   _temp_167 = &_Global_uniqueNumberLock
	set	_Global_uniqueNumberLock,r1
	store	r1,[r14+-64]
!   Send message Init
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	258,r13		! source line 258
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_168 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_168  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	260,r13		! source line 260
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_173 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_174 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_173  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_169:
!   Perform the FOR-LOOP termination test
!   if i > _temp_174 then goto _Label_172		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_172
_Label_170:
	mov	262,r13		! source line 262
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_175)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_646:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_646
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   _temp_177 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_177  sizeInBytes=4
	load	[r14+-40],r1
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
	mov	265,r13		! source line 265
	mov	"\0\0SE",r10
!   _temp_178 = _function_38_TestProcessManager
	set	_function_38_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_178  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_171:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_169
! END FOR
_Label_172:
! FOR STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_183 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_184 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_183  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_179:
!   Perform the FOR-LOOP termination test
!   if i > _temp_184 then goto _Label_182		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_182
_Label_180:
	mov	270,r13		! source line 270
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0SE",r10
!   _temp_185 = &_Global_allDone
	set	_Global_allDone,r1
	store	r1,[r14+-24]
!   Send message Down
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_181:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_179
! END FOR
_Label_182:
! IF STATEMENT...
	mov	274,r13		! source line 274
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	274,r13		! source line 274
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=_temp_188  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_188 == 401 then goto _Label_187		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_187
!	jmp	_Label_186
_Label_186:
! THEN...
	mov	275,r13		! source line 275
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_189 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_189  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	275,r13		! source line 275
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_187:
! CALL STATEMENT...
!   _temp_190 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_190  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	277,r13		! source line 277
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	277,r13		! source line 277
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_39_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_191
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_192
	.word	-12
	.word	4
	.word	_Label_193
	.word	-16
	.word	4
	.word	_Label_194
	.word	-20
	.word	4
	.word	_Label_195
	.word	-24
	.word	4
	.word	_Label_196
	.word	-28
	.word	4
	.word	_Label_197
	.word	-32
	.word	4
	.word	_Label_198
	.word	-36
	.word	4
	.word	_Label_199
	.word	-40
	.word	4
	.word	_Label_200
	.word	-44
	.word	4
	.word	_Label_201
	.word	-48
	.word	4
	.word	_Label_202
	.word	-52
	.word	4
	.word	_Label_203
	.word	-56
	.word	4
	.word	_Label_204
	.word	-60
	.word	4
	.word	_Label_205
	.word	-64
	.word	4
	.word	_Label_206
	.word	-68
	.word	4
	.word	_Label_207
	.word	-72
	.word	4
	.word	_Label_208
	.word	-76
	.word	4
	.word	_Label_209
	.word	-80
	.word	4
	.word	0
_Label_191:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_190\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_189\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_188\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_185\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_176\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_175\0"
	.align
_Label_202:
	.byte	'?'
	.ascii	"_temp_174\0"
	.align
_Label_203:
	.byte	'?'
	.ascii	"_temp_173\0"
	.align
_Label_204:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_205:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_206:
	.byte	'?'
	.ascii	"_temp_166\0"
	.align
_Label_207:
	.byte	'?'
	.ascii	"_temp_165\0"
	.align
_Label_208:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_209:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_38_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_38_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_647:
	push	r0
	sub	r1,1,r1
	bne	_Label_647
	mov	290,r13		! source line 290
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	294,r13		! source line 294
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_214 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_215 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_214  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_210:
!   Perform the FOR-LOOP termination test
!   if i > _temp_215 then goto _Label_213		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_213
_Label_211:
	mov	294,r13		! source line 294
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	296,r13		! source line 296
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	297,r13		! source line 297
	mov	"\0\0AS",r10
	mov	297,r13		! source line 297
	mov	"\0\0SE",r10
!   _temp_216 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-56]
!   Send message GetANewProcess
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_217 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_217 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	299,r13		! source line 299
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_222 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_223 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_222  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_218:
!   Perform the FOR-LOOP termination test
!   if j > _temp_223 then goto _Label_221		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_221
_Label_219:
	mov	299,r13		! source line 299
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	300,r13		! source line 300
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_220:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_218
! END FOR
_Label_221:
! IF STATEMENT...
	mov	302,r13		! source line 302
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_227 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_226 = *_temp_227  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_226 then goto _Label_225		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_225
!	jmp	_Label_224
_Label_224:
! THEN...
	mov	303,r13		! source line 303
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_228 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_228  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	303,r13		! source line 303
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_225:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	305,r13		! source line 305
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0SE",r10
!   _temp_229 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_234 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_235 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_234  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_230:
!   Perform the FOR-LOOP termination test
!   if j > _temp_235 then goto _Label_233		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_233
_Label_231:
	mov	307,r13		! source line 307
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_232:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_230
! END FOR
_Label_233:
!   Increment the FOR-LOOP index variable and jump back
_Label_212:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_210
! END FOR
_Label_213:
! SEND STATEMENT...
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_236 = &_Global_allDone
	set	_Global_allDone,r1
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
	mov	312,r13		! source line 312
	mov	"\0\0SE",r10
!   _temp_237 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	312,r13		! source line 312
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_38_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_238
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_239
	.word	8
	.word	4
	.word	_Label_240
	.word	-12
	.word	4
	.word	_Label_241
	.word	-16
	.word	4
	.word	_Label_242
	.word	-20
	.word	4
	.word	_Label_243
	.word	-24
	.word	4
	.word	_Label_244
	.word	-28
	.word	4
	.word	_Label_245
	.word	-32
	.word	4
	.word	_Label_246
	.word	-36
	.word	4
	.word	_Label_247
	.word	-40
	.word	4
	.word	_Label_248
	.word	-44
	.word	4
	.word	_Label_249
	.word	-48
	.word	4
	.word	_Label_250
	.word	-52
	.word	4
	.word	_Label_251
	.word	-56
	.word	4
	.word	_Label_252
	.word	-60
	.word	4
	.word	_Label_253
	.word	-64
	.word	4
	.word	_Label_254
	.word	-68
	.word	4
	.word	_Label_255
	.word	-72
	.word	4
	.word	_Label_256
	.word	-76
	.word	4
	.word	_Label_257
	.word	-80
	.word	4
	.word	0
_Label_238:
	.ascii	"TestProcessManager\0"
	.align
_Label_239:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_252:
	.byte	'?'
	.ascii	"_temp_215\0"
	.align
_Label_253:
	.byte	'?'
	.ascii	"_temp_214\0"
	.align
_Label_254:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_255:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_256:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_257:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_37_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_37_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_648:
	push	r0
	sub	r1,1,r1
	bne	_Label_648
	mov	333,r13		! source line 333
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	337,r13		! source line 337
	mov	"\0\0SE",r10
!   _temp_258 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	338,r13		! source line 338
	mov	"\0\0SE",r10
!   _temp_259 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! CALL STATEMENT...
!   _temp_260 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_260  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	340,r13		! source line 340
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_265 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_266 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_265  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_261:
!   Perform the FOR-LOOP termination test
!   if i > _temp_266 then goto _Label_264		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_264
_Label_262:
	mov	342,r13		! source line 342
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_267)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_649:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_649
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	344,r13		! source line 344
	mov	"\0\0SE",r10
!   _temp_269 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_269  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	345,r13		! source line 345
	mov	"\0\0SE",r10
!   _temp_270 = _function_36_TestFrameManager
	set	_function_36_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_270  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_263:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_261
! END FOR
_Label_264:
! FOR STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_275 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_276 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_275  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_271:
!   Perform the FOR-LOOP termination test
!   if i > _temp_276 then goto _Label_274		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_274
_Label_272:
	mov	350,r13		! source line 350
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	351,r13		! source line 351
	mov	"\0\0SE",r10
!   _temp_277 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-52]
!   Send message Down
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_273:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_271
! END FOR
_Label_274:
! CALL STATEMENT...
!   _temp_278 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_278  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	354,r13		! source line 354
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	355,r13		! source line 355
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_283 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_284 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_283  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_279:
!   Perform the FOR-LOOP termination test
!   if i > _temp_284 then goto _Label_282		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_282
_Label_280:
	mov	355,r13		! source line 355
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_285 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_285  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_286 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_286  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	358,r13		! source line 358
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	359,r13		! source line 359
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_291 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_293 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_293 [i ] into _temp_294
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   Data Move: _temp_292 = *_temp_294  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_291  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_287:
!   Perform the FOR-LOOP termination test
!   if j > _temp_292 then goto _Label_290		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_290
_Label_288:
	mov	359,r13		! source line 359
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	360,r13		! source line 360
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_289:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_287
! END FOR
_Label_290:
! CALL STATEMENT...
!   Call the function
	mov	362,r13		! source line 362
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_281:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_279
! END FOR
_Label_282:
! CALL STATEMENT...
!   _temp_295 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_295  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	365,r13		! source line 365
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	365,r13		! source line 365
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_37_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_296
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_297
	.word	-12
	.word	4
	.word	_Label_298
	.word	-16
	.word	4
	.word	_Label_299
	.word	-20
	.word	4
	.word	_Label_300
	.word	-24
	.word	4
	.word	_Label_301
	.word	-28
	.word	4
	.word	_Label_302
	.word	-32
	.word	4
	.word	_Label_303
	.word	-36
	.word	4
	.word	_Label_304
	.word	-40
	.word	4
	.word	_Label_305
	.word	-44
	.word	4
	.word	_Label_306
	.word	-48
	.word	4
	.word	_Label_307
	.word	-52
	.word	4
	.word	_Label_308
	.word	-56
	.word	4
	.word	_Label_309
	.word	-60
	.word	4
	.word	_Label_310
	.word	-64
	.word	4
	.word	_Label_311
	.word	-68
	.word	4
	.word	_Label_312
	.word	-72
	.word	4
	.word	_Label_313
	.word	-76
	.word	4
	.word	_Label_314
	.word	-80
	.word	4
	.word	_Label_315
	.word	-84
	.word	4
	.word	_Label_316
	.word	-88
	.word	4
	.word	_Label_317
	.word	-92
	.word	4
	.word	_Label_318
	.word	-96
	.word	4
	.word	_Label_319
	.word	-100
	.word	4
	.word	_Label_320
	.word	-104
	.word	4
	.word	_Label_321
	.word	-108
	.word	4
	.word	0
_Label_296:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_295\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_294\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_293\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_292\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_291\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_313:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_314:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_315:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_316:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_317:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_318:
	.byte	'?'
	.ascii	"_temp_258\0"
	.align
_Label_319:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_320:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_321:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_36_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_36_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_650:
	push	r0
	sub	r1,1,r1
	bne	_Label_650
	mov	389,r13		! source line 389
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	393,r13		! source line 393
	mov	"\0\0AS",r10
	mov	393,r13		! source line 393
	mov	"\0\0SE",r10
!   _temp_322 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-96]
!   Send message GetANewProcess
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-116]
! FOR STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_327 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_328 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_327  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_323:
!   Perform the FOR-LOOP termination test
!   if i > _temp_328 then goto _Label_326		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_326
_Label_324:
	mov	394,r13		! source line 394
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	395,r13		! source line 395
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_333 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_334 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_333  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_329:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_334 then goto _Label_332		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_332
_Label_330:
	mov	395,r13		! source line 395
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	397,r13		! source line 397
	mov	"\0\0CA",r10
	call	_function_42_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_336 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_335 = _temp_336		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_337 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_335  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_339 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_338 = _temp_339		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	399,r13		! source line 399
	mov	"\0\0CA",r10
	call	_function_35_CheckAddrSpace
! FOR STATEMENT...
	mov	400,r13		! source line 400
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_344 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_345 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_344  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_340:
!   Perform the FOR-LOOP termination test
!   if j > _temp_345 then goto _Label_343		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_343
_Label_341:
	mov	400,r13		! source line 400
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	401,r13		! source line 401
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_342:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_340
! END FOR
_Label_343:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_347 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_346 = _temp_347		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_346  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	404,r13		! source line 404
	mov	"\0\0CA",r10
	call	_function_34_CheckAddrSpace2
! SEND STATEMENT...
	mov	405,r13		! source line 405
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_349 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_348 = _temp_349		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_350 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_348  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! FOR STATEMENT...
	mov	406,r13		! source line 406
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_355 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_356 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_355  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_351:
!   Perform the FOR-LOOP termination test
!   if j > _temp_356 then goto _Label_354		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_354
_Label_352:
	mov	406,r13		! source line 406
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_353:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_351
! END FOR
_Label_354:
!   Increment the FOR-LOOP index variable and jump back
_Label_331:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_329
! END FOR
_Label_332:
!   Increment the FOR-LOOP index variable and jump back
_Label_325:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_323
! END FOR
_Label_326:
! SEND STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_357 = &_Global_allDone2
	set	_Global_allDone2,r1
	store	r1,[r14+-20]
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_358 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=pcb  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+4]
!   Send message FreeProcess
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0SE",r10
!   _temp_359 = &_Global_freeze
	set	_Global_freeze,r1
	store	r1,[r14+-12]
!   Send message Down
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_36_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_360
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_361
	.word	8
	.word	4
	.word	_Label_362
	.word	-12
	.word	4
	.word	_Label_363
	.word	-16
	.word	4
	.word	_Label_364
	.word	-20
	.word	4
	.word	_Label_365
	.word	-24
	.word	4
	.word	_Label_366
	.word	-28
	.word	4
	.word	_Label_367
	.word	-32
	.word	4
	.word	_Label_368
	.word	-36
	.word	4
	.word	_Label_369
	.word	-40
	.word	4
	.word	_Label_370
	.word	-44
	.word	4
	.word	_Label_371
	.word	-48
	.word	4
	.word	_Label_372
	.word	-52
	.word	4
	.word	_Label_373
	.word	-56
	.word	4
	.word	_Label_374
	.word	-60
	.word	4
	.word	_Label_375
	.word	-64
	.word	4
	.word	_Label_376
	.word	-68
	.word	4
	.word	_Label_377
	.word	-72
	.word	4
	.word	_Label_378
	.word	-76
	.word	4
	.word	_Label_379
	.word	-80
	.word	4
	.word	_Label_380
	.word	-84
	.word	4
	.word	_Label_381
	.word	-88
	.word	4
	.word	_Label_382
	.word	-92
	.word	4
	.word	_Label_383
	.word	-96
	.word	4
	.word	_Label_384
	.word	-100
	.word	4
	.word	_Label_385
	.word	-104
	.word	4
	.word	_Label_386
	.word	-108
	.word	4
	.word	_Label_387
	.word	-112
	.word	4
	.word	_Label_388
	.word	-116
	.word	4
	.word	0
_Label_360:
	.ascii	"TestFrameManager\0"
	.align
_Label_361:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_359\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_358\0"
	.align
_Label_364:
	.byte	'?'
	.ascii	"_temp_357\0"
	.align
_Label_365:
	.byte	'?'
	.ascii	"_temp_356\0"
	.align
_Label_366:
	.byte	'?'
	.ascii	"_temp_355\0"
	.align
_Label_367:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_348\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_347\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_346\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_345\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_378:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_379:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_380:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_381:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_382:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_383:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_384:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_385:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_386:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_387:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_388:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_35_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_35_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_651:
	push	r0
	sub	r1,1,r1
	bne	_Label_651
	mov	421,r13		! source line 421
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	423,r13		! source line 423
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_392 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_391 = *_temp_392  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_391 == n then goto _Label_390		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_390
!	jmp	_Label_389
_Label_389:
! THEN...
	mov	424,r13		! source line 424
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_393 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_393  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	424,r13		! source line 424
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_390:
! FOR STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_398 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_399 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_398  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_394:
!   Perform the FOR-LOOP termination test
!   if i > _temp_399 then goto _Label_397		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_397
_Label_395:
	mov	426,r13		! source line 426
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
	mov	427,r13		! source line 427
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	428,r13		! source line 428
	mov	"\0\0AS",r10
!   _temp_400 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_400 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_404		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_404
	jmp	_Label_401
_Label_404:
!   if frameNumber < 27 then goto _Label_403		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_403
	jmp	_Label_401
_Label_403:
!   _temp_405 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_405) then goto _Label_402
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_402
!	jmp	_Label_401
_Label_401:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_406 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_406  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	433,r13		! source line 433
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_402:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   _temp_407 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_407 [frameNumber ] into _temp_408
!     make sure index expr is >= 0
	load	[r14+-92],r2
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
	set	4,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-44]
!   _temp_411 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_411 [frameNumber ] into _temp_412
!     make sure index expr is >= 0
	load	[r14+-92],r2
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
!   Data Move: _temp_410 = *_temp_412  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_409 = _temp_410 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_408 = _temp_409  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0IF",r10
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_419  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_419) then goto _Label_418
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_418
	jmp	_Label_413
_Label_418:
	mov	437,r13		! source line 437
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_413 else goto _Label_417
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_417
	jmp	_Label_413
_Label_417:
	mov	438,r13		! source line 438
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_413 else goto _Label_416
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_416
	jmp	_Label_413
_Label_416:
	mov	439,r13		! source line 439
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_420  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_420 then goto _Label_415 else goto _Label_413
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_413
	jmp	_Label_415
_Label_415:
	mov	440,r13		! source line 440
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_421  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_421 then goto _Label_414 else goto _Label_413
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_413
	jmp	_Label_414
_Label_413:
! THEN...
	mov	441,r13		! source line 441
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_422 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_422  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	441,r13		! source line 441
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_414:
! ASSIGNMENT STATEMENT...
	mov	443,r13		! source line 443
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_423 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_423  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_396:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_394
! END FOR
_Label_397:
! RETURN STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_35_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_424
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_425
	.word	8
	.word	4
	.word	_Label_426
	.word	12
	.word	4
	.word	_Label_427
	.word	16
	.word	4
	.word	_Label_428
	.word	-16
	.word	4
	.word	_Label_429
	.word	-20
	.word	4
	.word	_Label_430
	.word	-9
	.word	1
	.word	_Label_431
	.word	-10
	.word	1
	.word	_Label_432
	.word	-24
	.word	4
	.word	_Label_433
	.word	-28
	.word	4
	.word	_Label_434
	.word	-32
	.word	4
	.word	_Label_435
	.word	-36
	.word	4
	.word	_Label_436
	.word	-40
	.word	4
	.word	_Label_437
	.word	-44
	.word	4
	.word	_Label_438
	.word	-48
	.word	4
	.word	_Label_439
	.word	-52
	.word	4
	.word	_Label_440
	.word	-56
	.word	4
	.word	_Label_441
	.word	-60
	.word	4
	.word	_Label_442
	.word	-64
	.word	4
	.word	_Label_443
	.word	-68
	.word	4
	.word	_Label_444
	.word	-72
	.word	4
	.word	_Label_445
	.word	-76
	.word	4
	.word	_Label_446
	.word	-80
	.word	4
	.word	_Label_447
	.word	-84
	.word	4
	.word	_Label_448
	.word	-88
	.word	4
	.word	_Label_449
	.word	-92
	.word	4
	.word	0
_Label_424:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_425:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_426:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_427:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_423\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_422\0"
	.align
_Label_430:
	.byte	'C'
	.ascii	"_temp_421\0"
	.align
_Label_431:
	.byte	'C'
	.ascii	"_temp_420\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_412\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_411\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_410\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_409\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_407\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_441:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_442:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_398\0"
	.align
_Label_444:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_445:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_391\0"
	.align
_Label_447:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_448:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_449:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_34_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_34_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_652:
	push	r0
	sub	r1,1,r1
	bne	_Label_652
	mov	454,r13		! source line 454
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	456,r13		! source line 456
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_453 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_452 = *_temp_453  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_452 == n then goto _Label_451		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_451
!	jmp	_Label_450
_Label_450:
! THEN...
	mov	457,r13		! source line 457
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_454 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_454  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	457,r13		! source line 457
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_451:
! FOR STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_459 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_460 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_459  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_455:
!   Perform the FOR-LOOP termination test
!   if i > _temp_460 then goto _Label_458		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_458
_Label_456:
	mov	459,r13		! source line 459
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
	mov	460,r13		! source line 460
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! ASSIGNMENT STATEMENT...
	mov	461,r13		! source line 461
	mov	"\0\0AS",r10
!   _temp_461 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_461 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	463,r13		! source line 463
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_465		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_465
	jmp	_Label_462
_Label_465:
!   if frameNumber < 27 then goto _Label_464		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_464
	jmp	_Label_462
_Label_464:
!   _temp_466 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_466) then goto _Label_463
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_463
!	jmp	_Label_462
_Label_462:
! THEN...
	mov	466,r13		! source line 466
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_467 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_467  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	466,r13		! source line 466
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_463:
! IF STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_470 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_471 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_470 == _temp_471 then goto _Label_469		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_469
!	jmp	_Label_468
_Label_468:
! THEN...
	mov	469,r13		! source line 469
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_472 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_472  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	469,r13		! source line 469
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_469:
!   Increment the FOR-LOOP index variable and jump back
_Label_457:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_455
! END FOR
_Label_458:
! RETURN STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_34_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_473
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_474
	.word	8
	.word	4
	.word	_Label_475
	.word	12
	.word	4
	.word	_Label_476
	.word	16
	.word	4
	.word	_Label_477
	.word	-12
	.word	4
	.word	_Label_478
	.word	-16
	.word	4
	.word	_Label_479
	.word	-20
	.word	4
	.word	_Label_480
	.word	-24
	.word	4
	.word	_Label_481
	.word	-28
	.word	4
	.word	_Label_482
	.word	-32
	.word	4
	.word	_Label_483
	.word	-36
	.word	4
	.word	_Label_484
	.word	-40
	.word	4
	.word	_Label_485
	.word	-44
	.word	4
	.word	_Label_486
	.word	-48
	.word	4
	.word	_Label_487
	.word	-52
	.word	4
	.word	_Label_488
	.word	-56
	.word	4
	.word	_Label_489
	.word	-60
	.word	4
	.word	_Label_490
	.word	-64
	.word	4
	.word	0
_Label_473:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_474:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_475:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_476:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_472\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_471\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_470\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_467\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_482:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_483:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_484:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_485:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_486:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_487:
	.byte	'?'
	.ascii	"_temp_452\0"
	.align
_Label_488:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_489:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_490:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION ConditionTestFoo  ===============
! 
_function_33_ConditionTestFoo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_33_ConditionTestFoo,r1
	push	r1
	mov	14,r1
_Label_653:
	push	r0
	sub	r1,1,r1
	bne	_Label_653
	mov	479,r13		! source line 479
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! j
!   j = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-56]
! FOR STATEMENT...
	mov	484,r13		! source line 484
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_495 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_496 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_495  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-52]
_Label_491:
!   Perform the FOR-LOOP termination test
!   if i > _temp_496 then goto _Label_494		
	load	[r14+-52],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_494
_Label_492:
	mov	484,r13		! source line 484
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0AS",r10
!   j = j + 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! ASSIGNMENT STATEMENT...
	mov	486,r13		! source line 486
	mov	"\0\0AS",r10
!   j = j - 1		(int)
	load	[r14+-56],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   Increment the FOR-LOOP index variable and jump back
_Label_493:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_491
! END FOR
_Label_494:
! SEND STATEMENT...
	mov	489,r13		! source line 489
	mov	"\0\0SE",r10
!   _temp_497 = &_Global_cmut
	set	_Global_cmut,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_498 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_498  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	492,r13		! source line 492
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	493,r13		! source line 493
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	494,r13		! source line 494
	mov	"\0\0CA",r10
	call	_P_System_nl
! IF STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0IF",r10
!   if _Global_flag then goto _Label_500 else goto _Label_499
	set	_Global_flag,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_499
	jmp	_Label_500
_Label_499:
! THEN...
	mov	497,r13		! source line 497
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	497,r13		! source line 497
	mov	"\0\0SE",r10
!   _temp_501 = &_Global_cmut
	set	_Global_cmut,r1
	store	r1,[r14+-32]
!   _temp_502 = &_Global_c
	set	_Global_c,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_501  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_500:
! ASSIGNMENT STATEMENT...
	mov	499,r13		! source line 499
	mov	"\0\0AS",r10
!   _Global_flag = 0		(1 byte)
	mov	0,r1
	set	_Global_flag,r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_503 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_503  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	501,r13		! source line 501
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	502,r13		! source line 502
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	503,r13		! source line 503
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	505,r13		! source line 505
	mov	"\0\0AS",r10
!   _Global_flag = 1		(1 byte)
	mov	1,r1
	set	_Global_flag,r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	506,r13		! source line 506
	mov	"\0\0SE",r10
!   _temp_504 = &_Global_cmut
	set	_Global_cmut,r1
	store	r1,[r14+-20]
!   _temp_505 = &_Global_c
	set	_Global_c,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_504  sizeInBytes=4
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
	mov	508,r13		! source line 508
	mov	"\0\0SE",r10
!   _temp_506 = &_Global_cmut
	set	_Global_cmut,r1
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
	mov	508,r13		! source line 508
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_33_ConditionTestFoo:
	.word	_sourceFileName
	.word	_Label_507
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_508
	.word	8
	.word	4
	.word	_Label_509
	.word	-12
	.word	4
	.word	_Label_510
	.word	-16
	.word	4
	.word	_Label_511
	.word	-20
	.word	4
	.word	_Label_512
	.word	-24
	.word	4
	.word	_Label_513
	.word	-28
	.word	4
	.word	_Label_514
	.word	-32
	.word	4
	.word	_Label_515
	.word	-36
	.word	4
	.word	_Label_516
	.word	-40
	.word	4
	.word	_Label_517
	.word	-44
	.word	4
	.word	_Label_518
	.word	-48
	.word	4
	.word	_Label_519
	.word	-52
	.word	4
	.word	_Label_520
	.word	-56
	.word	4
	.word	0
_Label_507:
	.ascii	"ConditionTestFoo\0"
	.align
_Label_508:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_506\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_505\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_504\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_503\0"
	.align
_Label_513:
	.byte	'?'
	.ascii	"_temp_502\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_501\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_516:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_517:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_519:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_520:
	.byte	'I'
	.ascii	"j\0"
	.align
! 
! ===============  FUNCTION RunConditionTests  ===============
! 
_function_32_RunConditionTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_32_RunConditionTests,r1
	push	r1
	mov	13,r1
_Label_654:
	push	r0
	sub	r1,1,r1
	bne	_Label_654
	mov	511,r13		! source line 511
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	515,r13		! source line 515
	mov	"\0\0SE",r10
!   _temp_521 = &_Global_c
	set	_Global_c,r1
	store	r1,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	516,r13		! source line 516
	mov	"\0\0SE",r10
!   _temp_522 = &_Global_cmut
	set	_Global_cmut,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_527 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_528 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_527  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-44]
_Label_523:
!   Perform the FOR-LOOP termination test
!   if i > _temp_528 then goto _Label_526		
	load	[r14+-44],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_526
_Label_524:
	mov	518,r13		! source line 518
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	519,r13		! source line 519
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-24]
!   t = alloc (_temp_529)
	load	[r14+-24],r1
	call	_heapAlloc
	store	r1,[r14+-48]
!   ZeroMemory: *t = zeros  (sizeInBytes=4164)
	load	[r14+-48],r4
	mov	1041,r3
_Label_655:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_655
!   *t = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0SE",r10
!   _temp_531 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_531  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0SE",r10
!   _temp_532 = _function_33_ConditionTestFoo
	set	_function_33_ConditionTestFoo,r1
	store	r1,[r14+-12]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_532  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_525:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_523
! END FOR
_Label_526:
! RETURN STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_32_RunConditionTests:
	.word	_sourceFileName
	.word	_Label_533
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_534
	.word	-12
	.word	4
	.word	_Label_535
	.word	-16
	.word	4
	.word	_Label_536
	.word	-20
	.word	4
	.word	_Label_537
	.word	-24
	.word	4
	.word	_Label_538
	.word	-28
	.word	4
	.word	_Label_539
	.word	-32
	.word	4
	.word	_Label_540
	.word	-36
	.word	4
	.word	_Label_541
	.word	-40
	.word	4
	.word	_Label_542
	.word	-44
	.word	4
	.word	_Label_543
	.word	-48
	.word	4
	.word	0
_Label_533:
	.ascii	"RunConditionTests\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_532\0"
	.align
_Label_535:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_536:
	.byte	'?'
	.ascii	"_temp_530\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_529\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_528\0"
	.align
_Label_539:
	.byte	'?'
	.ascii	"_temp_527\0"
	.align
_Label_540:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_541:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_542:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_543:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  FUNCTION HoareTestCustomer  ===============
! 
_function_31_HoareTestCustomer:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_31_HoareTestCustomer,r1
	push	r1
	mov	13,r1
_Label_656:
	push	r0
	sub	r1,1,r1
	bne	_Label_656
	mov	585,r13		! source line 585
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_548 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_549 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_548  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_544:
!   Perform the FOR-LOOP termination test
!   if i > _temp_549 then goto _Label_547		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_547
_Label_545:
	mov	589,r13		! source line 589
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   _temp_550 = 2 * i		(int)
	mov	2,r1
	load	[r14+-52],r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   amount = _temp_550 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	591,r13		! source line 591
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_551 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_551  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	592,r13		! source line 592
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=amount  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	593,r13		! source line 593
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	594,r13		! source line 594
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0SE",r10
!   _temp_552 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=amount  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message GetDice
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0SE",r10
!   _temp_553 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Yield
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0SE",r10
!   _temp_554 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=amount  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message Return
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	599,r13		! source line 599
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_555 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_555  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	600,r13		! source line 600
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=amount  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	601,r13		! source line 601
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	602,r13		! source line 602
	mov	"\0\0CA",r10
	call	_P_System_nl
! SEND STATEMENT...
	mov	603,r13		! source line 603
	mov	"\0\0SE",r10
!   _temp_556 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-12]
!   Send message Print
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_546:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_544
! END FOR
_Label_547:
! RETURN STATEMENT...
	mov	589,r13		! source line 589
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_31_HoareTestCustomer:
	.word	_sourceFileName
	.word	_Label_557
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_558
	.word	8
	.word	4
	.word	_Label_559
	.word	-12
	.word	4
	.word	_Label_560
	.word	-16
	.word	4
	.word	_Label_561
	.word	-20
	.word	4
	.word	_Label_562
	.word	-24
	.word	4
	.word	_Label_563
	.word	-28
	.word	4
	.word	_Label_564
	.word	-32
	.word	4
	.word	_Label_565
	.word	-36
	.word	4
	.word	_Label_566
	.word	-40
	.word	4
	.word	_Label_567
	.word	-44
	.word	4
	.word	_Label_568
	.word	-48
	.word	4
	.word	_Label_569
	.word	-52
	.word	4
	.word	0
_Label_557:
	.ascii	"HoareTestCustomer\0"
	.align
_Label_558:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_556\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_555\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_554\0"
	.align
_Label_562:
	.byte	'?'
	.ascii	"_temp_553\0"
	.align
_Label_563:
	.byte	'?'
	.ascii	"_temp_552\0"
	.align
_Label_564:
	.byte	'?'
	.ascii	"_temp_551\0"
	.align
_Label_565:
	.byte	'?'
	.ascii	"_temp_550\0"
	.align
_Label_566:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_567:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_568:
	.byte	'I'
	.ascii	"amount\0"
	.align
_Label_569:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunHoareTest  ===============
! 
_function_30_RunHoareTest:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_RunHoareTest,r1
	push	r1
	mov	13,r1
_Label_657:
	push	r0
	sub	r1,1,r1
	bne	_Label_657
	mov	608,r13		! source line 608
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	612,r13		! source line 612
	mov	"\0\0SE",r10
!   _temp_570 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	613,r13		! source line 613
	mov	"\0\0SE",r10
!   _temp_571 = &_Global_mon
	set	_Global_mon,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=10  sizeInBytes=4
	mov	10,r1
	store	r1,[r15+4]
!   Send message Return
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! FOR STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_576 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_577 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_576  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-44]
_Label_572:
!   Perform the FOR-LOOP termination test
!   if j > _temp_577 then goto _Label_575		
	load	[r14+-44],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_575
_Label_573:
	mov	615,r13		! source line 615
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	616,r13		! source line 616
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-24]
!   t = alloc (_temp_578)
	load	[r14+-24],r1
	call	_heapAlloc
	store	r1,[r14+-48]
!   ZeroMemory: *t = zeros  (sizeInBytes=4164)
	load	[r14+-48],r4
	mov	1041,r3
_Label_658:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_658
!   *t = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	617,r13		! source line 617
	mov	"\0\0SE",r10
!   _temp_580 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-16]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_580  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	618,r13		! source line 618
	mov	"\0\0SE",r10
!   _temp_581 = _function_31_HoareTestCustomer
	set	_function_31_HoareTestCustomer,r1
	store	r1,[r14+-12]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_581  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=j  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_574:
!   j = j + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_572
! END FOR
_Label_575:
! RETURN STATEMENT...
	mov	615,r13		! source line 615
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_RunHoareTest:
	.word	_sourceFileName
	.word	_Label_582
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_583
	.word	-12
	.word	4
	.word	_Label_584
	.word	-16
	.word	4
	.word	_Label_585
	.word	-20
	.word	4
	.word	_Label_586
	.word	-24
	.word	4
	.word	_Label_587
	.word	-28
	.word	4
	.word	_Label_588
	.word	-32
	.word	4
	.word	_Label_589
	.word	-36
	.word	4
	.word	_Label_590
	.word	-40
	.word	4
	.word	_Label_591
	.word	-44
	.word	4
	.word	_Label_592
	.word	-48
	.word	4
	.word	0
_Label_582:
	.ascii	"RunHoareTest\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_581\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_580\0"
	.align
_Label_585:
	.byte	'?'
	.ascii	"_temp_579\0"
	.align
_Label_586:
	.byte	'?'
	.ascii	"_temp_578\0"
	.align
_Label_587:
	.byte	'?'
	.ascii	"_temp_577\0"
	.align
_Label_588:
	.byte	'?'
	.ascii	"_temp_576\0"
	.align
_Label_589:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_590:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_591:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_592:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareMonitor  ===============
! 
! Dispatch Table:
! 
_P_Main_HoareMonitor:
	.word	_Label_593
	jmp	_Method_P_Main_HoareMonitor_1	! 4:	Init
	jmp	_Method_P_Main_HoareMonitor_2	! 8:	GetDice
	jmp	_Method_P_Main_HoareMonitor_3	! 12:	Return
	jmp	_Method_P_Main_HoareMonitor_4	! 16:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_593:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_594
	.word	_sourceFileName
	.word	527		! line number
	.word	60		! size of instances, in bytes
	.word	_P_Main_HoareMonitor
	.word	_P_System_Object
	.word	0
_Label_594:
	.ascii	"HoareMonitor\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Main_HoareMonitor_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_HoareMonitor_1,r1
	push	r1
	mov	5,r1
_Label_659:
	push	r0
	sub	r1,1,r1
	bne	_Label_659
	mov	543,r13		! source line 543
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	544,r13		! source line 544
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: mut = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   mut = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0SE",r10
!   _temp_596 = &mut
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	546,r13		! source line 546
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: cv = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,24,r4
	mov	7,r3
_Label_660:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_660
!   cv = _P_Kernel_HoareCondition
	set	_P_Kernel_HoareCondition,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! SEND STATEMENT...
	mov	547,r13		! source line 547
	mov	"\0\0SE",r10
!   _temp_598 = &cv
	load	[r14+8],r1
	add	r1,24,r1
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
	mov	548,r13		! source line 548
	mov	"\0\0AS",r10
!   dices = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+52]
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   wanted = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+56]
! RETURN STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_HoareMonitor_1:
	.word	_sourceFileName
	.word	_Label_599
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_600
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_601
	.word	-12
	.word	4
	.word	_Label_602
	.word	-16
	.word	4
	.word	_Label_603
	.word	-20
	.word	4
	.word	_Label_604
	.word	-24
	.word	4
	.word	0
_Label_599:
	.ascii	"HoareMonitor"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_600:
	.ascii	"Pself\0"
	.align
_Label_601:
	.byte	'?'
	.ascii	"_temp_598\0"
	.align
_Label_602:
	.byte	'?'
	.ascii	"_temp_597\0"
	.align
_Label_603:
	.byte	'?'
	.ascii	"_temp_596\0"
	.align
_Label_604:
	.byte	'?'
	.ascii	"_temp_595\0"
	.align
! 
! ===============  METHOD GetDice  ===============
! 
_Method_P_Main_HoareMonitor_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_HoareMonitor_2,r1
	push	r1
	mov	6,r1
_Label_661:
	push	r0
	sub	r1,1,r1
	bne	_Label_661
	mov	552,r13		! source line 552
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	553,r13		! source line 553
	mov	"\0\0SE",r10
!   _temp_605 = &mut
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Lock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	555,r13		! source line 555
	mov	"\0\0IF",r10
!   if dices >= n then goto _Label_607		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	load	[r14+12],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_607
!	jmp	_Label_606
_Label_606:
! THEN...
	mov	556,r13		! source line 556
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	556,r13		! source line 556
	mov	"\0\0SE",r10
!   _temp_608 = &mut
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_609 = &cv
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_608  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_607:
! ASSIGNMENT STATEMENT...
	mov	559,r13		! source line 559
	mov	"\0\0AS",r10
!   dices = dices - n		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	load	[r14+12],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! SEND STATEMENT...
	mov	561,r13		! source line 561
	mov	"\0\0SE",r10
!   _temp_610 = &mut
	load	[r14+8],r1
	add	r1,4,r1
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
	mov	561,r13		! source line 561
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_HoareMonitor_2:
	.word	_sourceFileName
	.word	_Label_611
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_612
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_613
	.word	12
	.word	4
	.word	_Label_614
	.word	-12
	.word	4
	.word	_Label_615
	.word	-16
	.word	4
	.word	_Label_616
	.word	-20
	.word	4
	.word	_Label_617
	.word	-24
	.word	4
	.word	0
_Label_611:
	.ascii	"HoareMonitor"
	.ascii	"::"
	.ascii	"GetDice\0"
	.align
_Label_612:
	.ascii	"Pself\0"
	.align
_Label_613:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_614:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_615:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
! 
! ===============  METHOD Return  ===============
! 
_Method_P_Main_HoareMonitor_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_HoareMonitor_3,r1
	push	r1
	mov	7,r1
_Label_662:
	push	r0
	sub	r1,1,r1
	bne	_Label_662
	mov	564,r13		! source line 564
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0SE",r10
!   _temp_618 = &mut
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message Lock
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   dices = dices + n		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	load	[r14+12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+52]
! IF STATEMENT...
	mov	567,r13		! source line 567
	mov	"\0\0IF",r10
!   if dices < wanted then goto _Label_620		(int)
	load	[r14+8],r1
	load	[r1+52],r1
	load	[r14+8],r2
	load	[r2+56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_620
!	jmp	_Label_619
_Label_619:
! THEN...
	mov	568,r13		! source line 568
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0SE",r10
!   _temp_621 = &mut
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   _temp_622 = &cv
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_621  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_620:
! SEND STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0SE",r10
!   _temp_623 = &mut
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   _temp_624 = &cv
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_623  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Farewell
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! RETURN STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_HoareMonitor_3:
	.word	_sourceFileName
	.word	_Label_625
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_626
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_627
	.word	12
	.word	4
	.word	_Label_628
	.word	-12
	.word	4
	.word	_Label_629
	.word	-16
	.word	4
	.word	_Label_630
	.word	-20
	.word	4
	.word	_Label_631
	.word	-24
	.word	4
	.word	_Label_632
	.word	-28
	.word	4
	.word	0
_Label_625:
	.ascii	"HoareMonitor"
	.ascii	"::"
	.ascii	"Return\0"
	.align
_Label_626:
	.ascii	"Pself\0"
	.align
_Label_627:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_628:
	.byte	'?'
	.ascii	"_temp_624\0"
	.align
_Label_629:
	.byte	'?'
	.ascii	"_temp_623\0"
	.align
_Label_630:
	.byte	'?'
	.ascii	"_temp_622\0"
	.align
_Label_631:
	.byte	'?'
	.ascii	"_temp_621\0"
	.align
_Label_632:
	.byte	'?'
	.ascii	"_temp_618\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Main_HoareMonitor_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Main_HoareMonitor_4,r1
	push	r1
	mov	2,r1
_Label_663:
	push	r0
	sub	r1,1,r1
	bne	_Label_663
	mov	573,r13		! source line 573
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_633 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_633  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	574,r13		! source line 574
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=dices  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+52],r1
	store	r1,[r15+0]
!   Call the function
	mov	575,r13		! source line 575
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	576,r13		! source line 576
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	576,r13		! source line 576
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Main_HoareMonitor_4:
	.word	_sourceFileName
	.word	_Label_634
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_635
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_636
	.word	-12
	.word	4
	.word	0
_Label_634:
	.ascii	"HoareMonitor"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_635:
	.ascii	"Pself\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_633\0"
	.align
