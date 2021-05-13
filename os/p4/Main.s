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
	.word	_P_Kernel_Condition
	.word	0
	.word	0
	.word	0
_Global_flag:
	.byte	1
	.align
! String constants
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
	be	_Label_37		! .
	ret				! .
_Label_37:				! .
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
	be	_Label_38
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
_Label_38:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_39
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_39
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_39
! Make sure _P_Kernel_ has hash value 0x4469e735 (decimal 1147791157)
	set	_packageName,r2
	set	0x4469e735,r3
	call	_CheckVersion_P_Kernel_
	.import	_CheckVersion_P_Kernel_
	cmp	r1,0
	bne	_Label_39
_Label_39:
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
_Label_537:
	push	r0
	sub	r1,1,r1
	bne	_Label_537
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0SE",r10
!   _temp_40 = &_Global_uniqueNumberLock
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
_Label_538:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_538
!   _P_Kernel_processManager = _P_Kernel_ProcessManager
	set	_P_Kernel_ProcessManager,r1
	set	_P_Kernel_processManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0SE",r10
!   _temp_42 = &_P_Kernel_processManager
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
_Label_539:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_539
!   _P_Kernel_threadManager = _P_Kernel_ThreadManager
	set	_P_Kernel_ThreadManager,r1
	set	_P_Kernel_threadManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	28,r13		! source line 28
	mov	"\0\0SE",r10
!   _temp_44 = &_P_Kernel_threadManager
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
_Label_540:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_540
!   _P_Kernel_frameManager = _P_Kernel_FrameManager
	set	_P_Kernel_FrameManager,r1
	set	_P_Kernel_frameManager,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	32,r13		! source line 32
	mov	"\0\0SE",r10
!   _temp_46 = &_P_Kernel_frameManager
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
	mov	115,r13		! source line 115
	mov	"\0\0CA",r10
	call	_function_26_RunConditionTests
! CALL STATEMENT...
!   Call the function
	mov	117,r13		! source line 117
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	117,r13		! source line 117
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
	.word	_Label_47
	.word	0		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_48
	.word	-12
	.word	4
	.word	_Label_49
	.word	-16
	.word	4
	.word	_Label_50
	.word	-20
	.word	4
	.word	_Label_51
	.word	-24
	.word	4
	.word	_Label_52
	.word	-28
	.word	4
	.word	_Label_53
	.word	-32
	.word	4
	.word	_Label_54
	.word	-36
	.word	4
	.word	0
_Label_47:
	.ascii	"main\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_46\0"
	.align
_Label_49:
	.byte	'?'
	.ascii	"_temp_45\0"
	.align
_Label_50:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_51:
	.byte	'?'
	.ascii	"_temp_43\0"
	.align
_Label_52:
	.byte	'?'
	.ascii	"_temp_42\0"
	.align
_Label_53:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_54:
	.byte	'?'
	.ascii	"_temp_40\0"
	.align
! 
! ===============  FUNCTION GetUniqueNumber  ===============
! 
_function_36_GetUniqueNumber:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_36_GetUniqueNumber,r1
	push	r1
	mov	4,r1
_Label_541:
	push	r0
	sub	r1,1,r1
	bne	_Label_541
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0SE",r10
!   _temp_55 = &_Global_uniqueNumberLock
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
	mov	136,r13		! source line 136
	mov	"\0\0AS",r10
!   i = _Global_nextUnique		(4 bytes)
	set	_Global_nextUnique,r1
	load	[r1],r1
	store	r1,[r14+-20]
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
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
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
!   _temp_56 = &_Global_uniqueNumberLock
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
	mov	139,r13		! source line 139
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
_RoutineDescriptor__function_36_GetUniqueNumber:
	.word	_sourceFileName
	.word	_Label_57
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_58
	.word	8
	.word	4
	.word	_Label_59
	.word	-12
	.word	4
	.word	_Label_60
	.word	-16
	.word	4
	.word	_Label_61
	.word	-20
	.word	4
	.word	0
_Label_57:
	.ascii	"GetUniqueNumber\0"
	.align
_Label_58:
	.byte	'I'
	.ascii	"count\0"
	.align
_Label_59:
	.byte	'?'
	.ascii	"_temp_56\0"
	.align
_Label_60:
	.byte	'?'
	.ascii	"_temp_55\0"
	.align
_Label_61:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunThreadManagerTests  ===============
! 
_function_35_RunThreadManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_35_RunThreadManagerTests,r1
	push	r1
	mov	21,r1
_Label_542:
	push	r0
	sub	r1,1,r1
	bne	_Label_542
	mov	170,r13		! source line 170
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0SE",r10
!   _temp_62 = &_Global_allDone
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
	mov	175,r13		! source line 175
	mov	"\0\0SE",r10
!   _temp_63 = &_Global_freeze
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
	mov	176,r13		! source line 176
	mov	"\0\0SE",r10
!   _temp_64 = &_Global_uniqueNumberLock
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
	mov	177,r13		! source line 177
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_65 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_65  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	179,r13		! source line 179
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	181,r13		! source line 181
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_70 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_71 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_70  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_66:
!   Perform the FOR-LOOP termination test
!   if i > _temp_71 then goto _Label_69		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_69
_Label_67:
	mov	181,r13		! source line 181
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	182,r13		! source line 182
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_72)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_543:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_543
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	183,r13		! source line 183
	mov	"\0\0SE",r10
!   _temp_74 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_74  sizeInBytes=4
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
	mov	184,r13		! source line 184
	mov	"\0\0SE",r10
!   _temp_75 = _function_34_TestThreadManager
	set	_function_34_TestThreadManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_75  sizeInBytes=4
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
_Label_68:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_66
! END FOR
_Label_69:
! FOR STATEMENT...
	mov	189,r13		! source line 189
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_80 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_81 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_80  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_76:
!   Perform the FOR-LOOP termination test
!   if i > _temp_81 then goto _Label_79		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_79
_Label_77:
	mov	189,r13		! source line 189
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	190,r13		! source line 190
	mov	"\0\0SE",r10
!   _temp_82 = &_Global_allDone
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
_Label_78:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_76
! END FOR
_Label_79:
! IF STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	193,r13		! source line 193
	mov	"\0\0CA",r10
	call	_function_36_GetUniqueNumber
!   Retrieve Result: targetName=_temp_85  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_85 == 401 then goto _Label_84		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_84
!	jmp	_Label_83
_Label_83:
! THEN...
	mov	194,r13		! source line 194
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_86 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_86  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	194,r13		! source line 194
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_84:
! CALL STATEMENT...
!   _temp_87 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_87  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	196,r13		! source line 196
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_35_RunThreadManagerTests:
	.word	_sourceFileName
	.word	_Label_88
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_89
	.word	-12
	.word	4
	.word	_Label_90
	.word	-16
	.word	4
	.word	_Label_91
	.word	-20
	.word	4
	.word	_Label_92
	.word	-24
	.word	4
	.word	_Label_93
	.word	-28
	.word	4
	.word	_Label_94
	.word	-32
	.word	4
	.word	_Label_95
	.word	-36
	.word	4
	.word	_Label_96
	.word	-40
	.word	4
	.word	_Label_97
	.word	-44
	.word	4
	.word	_Label_98
	.word	-48
	.word	4
	.word	_Label_99
	.word	-52
	.word	4
	.word	_Label_100
	.word	-56
	.word	4
	.word	_Label_101
	.word	-60
	.word	4
	.word	_Label_102
	.word	-64
	.word	4
	.word	_Label_103
	.word	-68
	.word	4
	.word	_Label_104
	.word	-72
	.word	4
	.word	_Label_105
	.word	-76
	.word	4
	.word	_Label_106
	.word	-80
	.word	4
	.word	0
_Label_88:
	.ascii	"RunThreadManagerTests\0"
	.align
_Label_89:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_90:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_91:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_81\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_80\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_75\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_74\0"
	.align
_Label_97:
	.byte	'?'
	.ascii	"_temp_73\0"
	.align
_Label_98:
	.byte	'?'
	.ascii	"_temp_72\0"
	.align
_Label_99:
	.byte	'?'
	.ascii	"_temp_71\0"
	.align
_Label_100:
	.byte	'?'
	.ascii	"_temp_70\0"
	.align
_Label_101:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_102:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_103:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_104:
	.byte	'?'
	.ascii	"_temp_62\0"
	.align
_Label_105:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_106:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestThreadManager  ===============
! 
_function_34_TestThreadManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_34_TestThreadManager,r1
	push	r1
	mov	22,r1
_Label_544:
	push	r0
	sub	r1,1,r1
	bne	_Label_544
	mov	208,r13		! source line 208
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_111 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-72]
!   Calculate and save the FOR-LOOP ending value
!   _temp_112 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-68]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_111  (sizeInBytes=4)
	load	[r14+-72],r1
	store	r1,[r14+-76]
_Label_107:
!   Perform the FOR-LOOP termination test
!   if i > _temp_112 then goto _Label_110		
	load	[r14+-76],r1
	load	[r14+-68],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_110
_Label_108:
	mov	212,r13		! source line 212
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	213,r13		! source line 213
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CA",r10
	call	_function_36_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! ASSIGNMENT STATEMENT...
	mov	215,r13		! source line 215
	mov	"\0\0AS",r10
	mov	215,r13		! source line 215
	mov	"\0\0SE",r10
!   _temp_113 = &_P_Kernel_threadManager
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
	mov	216,r13		! source line 216
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_114 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-60]
!   Move address of _temp_114 [0 ] into _temp_115
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
!   Data Move: *_temp_115 = e  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r14+-56],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	217,r13		! source line 217
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_120 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_121 = 10 + i		(int)
	mov	10,r1
	load	[r14+-76],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_120  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-80]
_Label_116:
!   Perform the FOR-LOOP termination test
!   if j > _temp_121 then goto _Label_119		
	load	[r14+-80],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_119
_Label_117:
	mov	217,r13		! source line 217
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	218,r13		! source line 218
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
_Label_118:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_116
! END FOR
_Label_119:
! IF STATEMENT...
	mov	220,r13		! source line 220
	mov	"\0\0IF",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_125 = th + 12
	load	[r14+-88],r1
	add	r1,12,r1
	store	r1,[r14+-40]
!   Move address of _temp_125 [0 ] into _temp_126
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
!   Data Move: _temp_124 = *_temp_126  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   if e == _temp_124 then goto _Label_123		(int)
	load	[r14+-84],r1
	load	[r14+-44],r2
	cmp	r1,r2
	be	_Label_123
!	jmp	_Label_122
_Label_122:
! THEN...
	mov	221,r13		! source line 221
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_127 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_127  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	221,r13		! source line 221
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_123:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	223,r13		! source line 223
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	224,r13		! source line 224
	mov	"\0\0SE",r10
!   _temp_128 = &_P_Kernel_threadManager
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
	mov	225,r13		! source line 225
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_133 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_134 = 10 - i		(int)
	mov	10,r1
	load	[r14+-76],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_133  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-80]
_Label_129:
!   Perform the FOR-LOOP termination test
!   if j > _temp_134 then goto _Label_132		
	load	[r14+-80],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_132
_Label_130:
	mov	225,r13		! source line 225
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	226,r13		! source line 226
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
_Label_131:
!   j = j + 1
	load	[r14+-80],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
	jmp	_Label_129
! END FOR
_Label_132:
!   Increment the FOR-LOOP index variable and jump back
_Label_109:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_107
! END FOR
_Label_110:
! SEND STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0SE",r10
!   _temp_135 = &_Global_allDone
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
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
!   _temp_136 = &_Global_freeze
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
	mov	230,r13		! source line 230
	mov	"\0\0RE",r10
	add	r15,92,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_34_TestThreadManager:
	.word	_sourceFileName
	.word	_Label_137
	.word	4		! total size of parameters
	.word	88		! frame size = 88
	.word	_Label_138
	.word	8
	.word	4
	.word	_Label_139
	.word	-12
	.word	4
	.word	_Label_140
	.word	-16
	.word	4
	.word	_Label_141
	.word	-20
	.word	4
	.word	_Label_142
	.word	-24
	.word	4
	.word	_Label_143
	.word	-28
	.word	4
	.word	_Label_144
	.word	-32
	.word	4
	.word	_Label_145
	.word	-36
	.word	4
	.word	_Label_146
	.word	-40
	.word	4
	.word	_Label_147
	.word	-44
	.word	4
	.word	_Label_148
	.word	-48
	.word	4
	.word	_Label_149
	.word	-52
	.word	4
	.word	_Label_150
	.word	-56
	.word	4
	.word	_Label_151
	.word	-60
	.word	4
	.word	_Label_152
	.word	-64
	.word	4
	.word	_Label_153
	.word	-68
	.word	4
	.word	_Label_154
	.word	-72
	.word	4
	.word	_Label_155
	.word	-76
	.word	4
	.word	_Label_156
	.word	-80
	.word	4
	.word	_Label_157
	.word	-84
	.word	4
	.word	_Label_158
	.word	-88
	.word	4
	.word	0
_Label_137:
	.ascii	"TestThreadManager\0"
	.align
_Label_138:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_139:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_140:
	.byte	'?'
	.ascii	"_temp_135\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_134\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_128\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_127\0"
	.align
_Label_145:
	.byte	'?'
	.ascii	"_temp_126\0"
	.align
_Label_146:
	.byte	'?'
	.ascii	"_temp_125\0"
	.align
_Label_147:
	.byte	'?'
	.ascii	"_temp_124\0"
	.align
_Label_148:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_149:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_150:
	.byte	'?'
	.ascii	"_temp_115\0"
	.align
_Label_151:
	.byte	'?'
	.ascii	"_temp_114\0"
	.align
_Label_152:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
_Label_153:
	.byte	'?'
	.ascii	"_temp_112\0"
	.align
_Label_154:
	.byte	'?'
	.ascii	"_temp_111\0"
	.align
_Label_155:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_156:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_157:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_158:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION RunProcessManagerTests  ===============
! 
_function_33_RunProcessManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_33_RunProcessManagerTests,r1
	push	r1
	mov	21,r1
_Label_545:
	push	r0
	sub	r1,1,r1
	bne	_Label_545
	mov	250,r13		! source line 250
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0SE",r10
!   _temp_159 = &_Global_allDone
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
	mov	255,r13		! source line 255
	mov	"\0\0SE",r10
!   _temp_160 = &_Global_freeze
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
	mov	256,r13		! source line 256
	mov	"\0\0SE",r10
!   _temp_161 = &_Global_uniqueNumberLock
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
	mov	257,r13		! source line 257
	mov	"\0\0AS",r10
!   _Global_nextUnique = 1		(4 bytes)
	mov	1,r1
	set	_Global_nextUnique,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_162 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_162  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	259,r13		! source line 259
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	261,r13		! source line 261
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_167 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_168 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_167  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-76]
_Label_163:
!   Perform the FOR-LOOP termination test
!   if i > _temp_168 then goto _Label_166		
	load	[r14+-76],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_166
_Label_164:
	mov	261,r13		! source line 261
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-48]
!   th = alloc (_temp_169)
	load	[r14+-48],r1
	call	_heapAlloc
	store	r1,[r14+-80]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-80],r4
	mov	1041,r3
_Label_546:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_546
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-80],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0SE",r10
!   _temp_171 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-40]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_171  sizeInBytes=4
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
	mov	264,r13		! source line 264
	mov	"\0\0SE",r10
!   _temp_172 = _function_32_TestProcessManager
	set	_function_32_TestProcessManager,r1
	store	r1,[r14+-36]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_172  sizeInBytes=4
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
_Label_165:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_163
! END FOR
_Label_166:
! FOR STATEMENT...
	mov	269,r13		! source line 269
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_177 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_178 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_177  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-76]
_Label_173:
!   Perform the FOR-LOOP termination test
!   if i > _temp_178 then goto _Label_176		
	load	[r14+-76],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_176
_Label_174:
	mov	269,r13		! source line 269
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	270,r13		! source line 270
	mov	"\0\0SE",r10
!   _temp_179 = &_Global_allDone
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
_Label_175:
!   i = i + 1
	load	[r14+-76],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-76]
	jmp	_Label_173
! END FOR
_Label_176:
! IF STATEMENT...
	mov	273,r13		! source line 273
	mov	"\0\0IF",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	273,r13		! source line 273
	mov	"\0\0CA",r10
	call	_function_36_GetUniqueNumber
!   Retrieve Result: targetName=_temp_182  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   if _temp_182 == 401 then goto _Label_181		(int)
	load	[r14+-20],r1
	mov	401,r2
	cmp	r1,r2
	be	_Label_181
!	jmp	_Label_180
_Label_180:
! THEN...
	mov	274,r13		! source line 274
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_183 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_183  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	274,r13		! source line 274
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_181:
! CALL STATEMENT...
!   _temp_184 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_184  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	276,r13		! source line 276
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	276,r13		! source line 276
	mov	"\0\0RE",r10
	add	r15,88,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_33_RunProcessManagerTests:
	.word	_sourceFileName
	.word	_Label_185
	.word	0		! total size of parameters
	.word	84		! frame size = 84
	.word	_Label_186
	.word	-12
	.word	4
	.word	_Label_187
	.word	-16
	.word	4
	.word	_Label_188
	.word	-20
	.word	4
	.word	_Label_189
	.word	-24
	.word	4
	.word	_Label_190
	.word	-28
	.word	4
	.word	_Label_191
	.word	-32
	.word	4
	.word	_Label_192
	.word	-36
	.word	4
	.word	_Label_193
	.word	-40
	.word	4
	.word	_Label_194
	.word	-44
	.word	4
	.word	_Label_195
	.word	-48
	.word	4
	.word	_Label_196
	.word	-52
	.word	4
	.word	_Label_197
	.word	-56
	.word	4
	.word	_Label_198
	.word	-60
	.word	4
	.word	_Label_199
	.word	-64
	.word	4
	.word	_Label_200
	.word	-68
	.word	4
	.word	_Label_201
	.word	-72
	.word	4
	.word	_Label_202
	.word	-76
	.word	4
	.word	_Label_203
	.word	-80
	.word	4
	.word	0
_Label_185:
	.ascii	"RunProcessManagerTests\0"
	.align
_Label_186:
	.byte	'?'
	.ascii	"_temp_184\0"
	.align
_Label_187:
	.byte	'?'
	.ascii	"_temp_183\0"
	.align
_Label_188:
	.byte	'?'
	.ascii	"_temp_182\0"
	.align
_Label_189:
	.byte	'?'
	.ascii	"_temp_179\0"
	.align
_Label_190:
	.byte	'?'
	.ascii	"_temp_178\0"
	.align
_Label_191:
	.byte	'?'
	.ascii	"_temp_177\0"
	.align
_Label_192:
	.byte	'?'
	.ascii	"_temp_172\0"
	.align
_Label_193:
	.byte	'?'
	.ascii	"_temp_171\0"
	.align
_Label_194:
	.byte	'?'
	.ascii	"_temp_170\0"
	.align
_Label_195:
	.byte	'?'
	.ascii	"_temp_169\0"
	.align
_Label_196:
	.byte	'?'
	.ascii	"_temp_168\0"
	.align
_Label_197:
	.byte	'?'
	.ascii	"_temp_167\0"
	.align
_Label_198:
	.byte	'?'
	.ascii	"_temp_162\0"
	.align
_Label_199:
	.byte	'?'
	.ascii	"_temp_161\0"
	.align
_Label_200:
	.byte	'?'
	.ascii	"_temp_160\0"
	.align
_Label_201:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_202:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_203:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestProcessManager  ===============
! 
_function_32_TestProcessManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_32_TestProcessManager,r1
	push	r1
	mov	20,r1
_Label_547:
	push	r0
	sub	r1,1,r1
	bne	_Label_547
	mov	289,r13		! source line 289
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	293,r13		! source line 293
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_208 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_209 = 20		(4 bytes)
	mov	20,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_208  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-68]
_Label_204:
!   Perform the FOR-LOOP termination test
!   if i > _temp_209 then goto _Label_207		
	load	[r14+-68],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_207
_Label_205:
	mov	293,r13		! source line 293
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	294,r13		! source line 294
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	295,r13		! source line 295
	mov	"\0\0CA",r10
	call	_function_36_GetUniqueNumber
!   Retrieve Result: targetName=e  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	296,r13		! source line 296
	mov	"\0\0AS",r10
	mov	296,r13		! source line 296
	mov	"\0\0SE",r10
!   _temp_210 = &_P_Kernel_processManager
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
	mov	297,r13		! source line 297
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_211 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-52]
!   Data Move: *_temp_211 = e  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-52],r2
	store	r1,[r2]
! FOR STATEMENT...
	mov	298,r13		! source line 298
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_216 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_217 = 10 + i		(int)
	mov	10,r1
	load	[r14+-68],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_216  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-72]
_Label_212:
!   Perform the FOR-LOOP termination test
!   if j > _temp_217 then goto _Label_215		
	load	[r14+-72],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_215
_Label_213:
	mov	298,r13		! source line 298
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	299,r13		! source line 299
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
_Label_214:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_212
! END FOR
_Label_215:
! IF STATEMENT...
	mov	301,r13		! source line 301
	mov	"\0\0IF",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_221 = pcb + 28
	load	[r14+-80],r1
	add	r1,28,r1
	store	r1,[r14+-36]
!   Data Move: _temp_220 = *_temp_221  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if e == _temp_220 then goto _Label_219		(int)
	load	[r14+-76],r1
	load	[r14+-40],r2
	cmp	r1,r2
	be	_Label_219
!	jmp	_Label_218
_Label_218:
! THEN...
	mov	302,r13		! source line 302
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_222 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_222  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	302,r13		! source line 302
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_219:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	304,r13		! source line 304
	mov	"\0\0CE",r10
	call	printChar
! SEND STATEMENT...
	mov	305,r13		! source line 305
	mov	"\0\0SE",r10
!   _temp_223 = &_P_Kernel_processManager
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
	mov	306,r13		! source line 306
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_228 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_229 = 10 - i		(int)
	mov	10,r1
	load	[r14+-68],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_228  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-72]
_Label_224:
!   Perform the FOR-LOOP termination test
!   if j > _temp_229 then goto _Label_227		
	load	[r14+-72],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_227
_Label_225:
	mov	306,r13		! source line 306
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	307,r13		! source line 307
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
_Label_226:
!   j = j + 1
	load	[r14+-72],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
	jmp	_Label_224
! END FOR
_Label_227:
!   Increment the FOR-LOOP index variable and jump back
_Label_206:
!   i = i + 1
	load	[r14+-68],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-68]
	jmp	_Label_204
! END FOR
_Label_207:
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_230 = &_Global_allDone
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
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   _temp_231 = &_Global_freeze
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
	mov	311,r13		! source line 311
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_32_TestProcessManager:
	.word	_sourceFileName
	.word	_Label_232
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_233
	.word	8
	.word	4
	.word	_Label_234
	.word	-12
	.word	4
	.word	_Label_235
	.word	-16
	.word	4
	.word	_Label_236
	.word	-20
	.word	4
	.word	_Label_237
	.word	-24
	.word	4
	.word	_Label_238
	.word	-28
	.word	4
	.word	_Label_239
	.word	-32
	.word	4
	.word	_Label_240
	.word	-36
	.word	4
	.word	_Label_241
	.word	-40
	.word	4
	.word	_Label_242
	.word	-44
	.word	4
	.word	_Label_243
	.word	-48
	.word	4
	.word	_Label_244
	.word	-52
	.word	4
	.word	_Label_245
	.word	-56
	.word	4
	.word	_Label_246
	.word	-60
	.word	4
	.word	_Label_247
	.word	-64
	.word	4
	.word	_Label_248
	.word	-68
	.word	4
	.word	_Label_249
	.word	-72
	.word	4
	.word	_Label_250
	.word	-76
	.word	4
	.word	_Label_251
	.word	-80
	.word	4
	.word	0
_Label_232:
	.ascii	"TestProcessManager\0"
	.align
_Label_233:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_234:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_235:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_236:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_237:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_238:
	.byte	'?'
	.ascii	"_temp_223\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_222\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_221\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_220\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_217\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_216\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_211\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_210\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_209\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_208\0"
	.align
_Label_248:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_249:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_250:
	.byte	'I'
	.ascii	"e\0"
	.align
_Label_251:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION RunFrameManagerTests  ===============
! 
_function_31_RunFrameManagerTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_31_RunFrameManagerTests,r1
	push	r1
	mov	28,r1
_Label_548:
	push	r0
	sub	r1,1,r1
	bne	_Label_548
	mov	332,r13		! source line 332
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	336,r13		! source line 336
	mov	"\0\0SE",r10
!   _temp_252 = &_Global_allDone2
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
	mov	337,r13		! source line 337
	mov	"\0\0SE",r10
!   _temp_253 = &_Global_freeze
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
!   _temp_254 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_254  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	339,r13		! source line 339
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	341,r13		! source line 341
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_259 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_260 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_259  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-100]
_Label_255:
!   Perform the FOR-LOOP termination test
!   if i > _temp_260 then goto _Label_258		
	load	[r14+-100],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_258
_Label_256:
	mov	341,r13		! source line 341
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	342,r13		! source line 342
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-76]
!   th = alloc (_temp_261)
	load	[r14+-76],r1
	call	_heapAlloc
	store	r1,[r14+-108]
!   ZeroMemory: *th = zeros  (sizeInBytes=4164)
	load	[r14+-108],r4
	mov	1041,r3
_Label_549:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_549
!   *th = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-108],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	343,r13		! source line 343
	mov	"\0\0SE",r10
!   _temp_263 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-68]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_263  sizeInBytes=4
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
	mov	344,r13		! source line 344
	mov	"\0\0SE",r10
!   _temp_264 = _function_30_TestFrameManager
	set	_function_30_TestFrameManager,r1
	store	r1,[r14+-64]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_264  sizeInBytes=4
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
_Label_257:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_255
! END FOR
_Label_258:
! FOR STATEMENT...
	mov	349,r13		! source line 349
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_269 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_270 = 10		(4 bytes)
	mov	10,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_269  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-100]
_Label_265:
!   Perform the FOR-LOOP termination test
!   if i > _temp_270 then goto _Label_268		
	load	[r14+-100],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_268
_Label_266:
	mov	349,r13		! source line 349
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	350,r13		! source line 350
	mov	"\0\0SE",r10
!   _temp_271 = &_Global_allDone2
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
_Label_267:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_265
! END FOR
_Label_268:
! CALL STATEMENT...
!   _temp_272 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_272  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	353,r13		! source line 353
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	354,r13		! source line 354
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_277 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_278 = 26		(4 bytes)
	mov	26,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_277  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-100]
_Label_273:
!   Perform the FOR-LOOP termination test
!   if i > _temp_278 then goto _Label_276		
	load	[r14+-100],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_276
_Label_274:
	mov	354,r13		! source line 354
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_279 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_279  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	355,r13		! source line 355
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-100],r1
	store	r1,[r15+0]
!   Call the function
	mov	356,r13		! source line 356
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_280 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	357,r13		! source line 357
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	358,r13		! source line 358
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_285 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_287 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-20]
!   Move address of _temp_287 [i ] into _temp_288
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
!   Data Move: _temp_286 = *_temp_288  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_285  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_281:
!   Perform the FOR-LOOP termination test
!   if j > _temp_286 then goto _Label_284		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_284
_Label_282:
	mov	358,r13		! source line 358
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=42  sizeInBytes=1
	mov	42,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	359,r13		! source line 359
	mov	"\0\0CE",r10
	call	printChar
!   Increment the FOR-LOOP index variable and jump back
_Label_283:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_281
! END FOR
_Label_284:
! CALL STATEMENT...
!   Call the function
	mov	361,r13		! source line 361
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_275:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_273
! END FOR
_Label_276:
! CALL STATEMENT...
!   _temp_289 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_289  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	364,r13		! source line 364
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	364,r13		! source line 364
	mov	"\0\0RE",r10
	add	r15,116,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_31_RunFrameManagerTests:
	.word	_sourceFileName
	.word	_Label_290
	.word	0		! total size of parameters
	.word	112		! frame size = 112
	.word	_Label_291
	.word	-12
	.word	4
	.word	_Label_292
	.word	-16
	.word	4
	.word	_Label_293
	.word	-20
	.word	4
	.word	_Label_294
	.word	-24
	.word	4
	.word	_Label_295
	.word	-28
	.word	4
	.word	_Label_296
	.word	-32
	.word	4
	.word	_Label_297
	.word	-36
	.word	4
	.word	_Label_298
	.word	-40
	.word	4
	.word	_Label_299
	.word	-44
	.word	4
	.word	_Label_300
	.word	-48
	.word	4
	.word	_Label_301
	.word	-52
	.word	4
	.word	_Label_302
	.word	-56
	.word	4
	.word	_Label_303
	.word	-60
	.word	4
	.word	_Label_304
	.word	-64
	.word	4
	.word	_Label_305
	.word	-68
	.word	4
	.word	_Label_306
	.word	-72
	.word	4
	.word	_Label_307
	.word	-76
	.word	4
	.word	_Label_308
	.word	-80
	.word	4
	.word	_Label_309
	.word	-84
	.word	4
	.word	_Label_310
	.word	-88
	.word	4
	.word	_Label_311
	.word	-92
	.word	4
	.word	_Label_312
	.word	-96
	.word	4
	.word	_Label_313
	.word	-100
	.word	4
	.word	_Label_314
	.word	-104
	.word	4
	.word	_Label_315
	.word	-108
	.word	4
	.word	0
_Label_290:
	.ascii	"RunFrameManagerTests\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_289\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_288\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_287\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_286\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_298:
	.byte	'?'
	.ascii	"_temp_278\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_277\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_272\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_271\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_270\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_304:
	.byte	'?'
	.ascii	"_temp_264\0"
	.align
_Label_305:
	.byte	'?'
	.ascii	"_temp_263\0"
	.align
_Label_306:
	.byte	'?'
	.ascii	"_temp_262\0"
	.align
_Label_307:
	.byte	'?'
	.ascii	"_temp_261\0"
	.align
_Label_308:
	.byte	'?'
	.ascii	"_temp_260\0"
	.align
_Label_309:
	.byte	'?'
	.ascii	"_temp_259\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_254\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_253\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_252\0"
	.align
_Label_313:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_314:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_315:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION TestFrameManager  ===============
! 
_function_30_TestFrameManager:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_30_TestFrameManager,r1
	push	r1
	mov	30,r1
_Label_550:
	push	r0
	sub	r1,1,r1
	bne	_Label_550
	mov	388,r13		! source line 388
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
	mov	392,r13		! source line 392
	mov	"\0\0SE",r10
!   _temp_316 = &_P_Kernel_processManager
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
	mov	393,r13		! source line 393
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_321 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-92]
!   Calculate and save the FOR-LOOP ending value
!   _temp_322 = 5		(4 bytes)
	mov	5,r1
	store	r1,[r14+-88]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_321  (sizeInBytes=4)
	load	[r14+-92],r1
	store	r1,[r14+-100]
_Label_317:
!   Perform the FOR-LOOP termination test
!   if i > _temp_322 then goto _Label_320		
	load	[r14+-100],r1
	load	[r14+-88],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_320
_Label_318:
	mov	393,r13		! source line 393
	mov	"\0\0FB",r10
! FOR STATEMENT...
	mov	394,r13		! source line 394
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_327 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_328 = 19		(4 bytes)
	mov	19,r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: sz = _temp_327  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-112]
_Label_323:
!   Perform the FOR-LOOP termination test
!   if sz > _temp_328 then goto _Label_326		
	load	[r14+-112],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_326
_Label_324:
	mov	394,r13		! source line 394
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	395,r13		! source line 395
	mov	"\0\0CE",r10
	call	printInt
! ASSIGNMENT STATEMENT...
	mov	396,r13		! source line 396
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	396,r13		! source line 396
	mov	"\0\0CA",r10
	call	_function_36_GetUniqueNumber
!   Retrieve Result: targetName=newData  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-108]
! SEND STATEMENT...
	mov	397,r13		! source line 397
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_330 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-72]
!   _temp_329 = _temp_330		(4 bytes)
	load	[r14+-72],r1
	store	r1,[r14+-76]
!   _temp_331 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=_temp_329  sizeInBytes=4
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
!   _temp_333 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-60]
!   _temp_332 = _temp_333		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_332  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_function_29_CheckAddrSpace
! FOR STATEMENT...
	mov	399,r13		! source line 399
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_338 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-56]
!   Calculate and save the FOR-LOOP ending value
!   _temp_339 = 10 + i		(int)
	mov	10,r1
	load	[r14+-100],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_338  (sizeInBytes=4)
	load	[r14+-56],r1
	store	r1,[r14+-104]
_Label_334:
!   Perform the FOR-LOOP termination test
!   if j > _temp_339 then goto _Label_337		
	load	[r14+-104],r1
	load	[r14+-52],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_337
_Label_335:
	mov	399,r13		! source line 399
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	400,r13		! source line 400
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
_Label_336:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_334
! END FOR
_Label_337:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=46  sizeInBytes=1
	mov	46,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	402,r13		! source line 402
	mov	"\0\0CE",r10
	call	printChar
! CALL STATEMENT...
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_341 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   _temp_340 = _temp_341		(4 bytes)
	load	[r14+-44],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_340  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sz  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=newData  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+8]
!   Call the function
	mov	403,r13		! source line 403
	mov	"\0\0CA",r10
	call	_function_28_CheckAddrSpace2
! SEND STATEMENT...
	mov	404,r13		! source line 404
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-116],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_343 = pcb + 32
	load	[r14+-116],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_342 = _temp_343		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-40]
!   _temp_344 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_342  sizeInBytes=4
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
	mov	405,r13		! source line 405
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_349 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-28]
!   Calculate and save the FOR-LOOP ending value
!   _temp_350 = 10 - i		(int)
	mov	10,r1
	load	[r14+-100],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   Initialize FOR-LOOP index variable
!   Data Move: j = _temp_349  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+-104]
_Label_345:
!   Perform the FOR-LOOP termination test
!   if j > _temp_350 then goto _Label_348		
	load	[r14+-104],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_348
_Label_346:
	mov	405,r13		! source line 405
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	406,r13		! source line 406
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
_Label_347:
!   j = j + 1
	load	[r14+-104],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-104]
	jmp	_Label_345
! END FOR
_Label_348:
!   Increment the FOR-LOOP index variable and jump back
_Label_325:
!   sz = sz + 1
	load	[r14+-112],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
	jmp	_Label_323
! END FOR
_Label_326:
!   Increment the FOR-LOOP index variable and jump back
_Label_319:
!   i = i + 1
	load	[r14+-100],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-100]
	jmp	_Label_317
! END FOR
_Label_320:
! SEND STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0SE",r10
!   _temp_351 = &_Global_allDone2
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
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_352 = &_P_Kernel_processManager
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
	mov	412,r13		! source line 412
	mov	"\0\0SE",r10
!   _temp_353 = &_Global_freeze
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
	mov	412,r13		! source line 412
	mov	"\0\0RE",r10
	add	r15,124,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_30_TestFrameManager:
	.word	_sourceFileName
	.word	_Label_354
	.word	4		! total size of parameters
	.word	120		! frame size = 120
	.word	_Label_355
	.word	8
	.word	4
	.word	_Label_356
	.word	-12
	.word	4
	.word	_Label_357
	.word	-16
	.word	4
	.word	_Label_358
	.word	-20
	.word	4
	.word	_Label_359
	.word	-24
	.word	4
	.word	_Label_360
	.word	-28
	.word	4
	.word	_Label_361
	.word	-32
	.word	4
	.word	_Label_362
	.word	-36
	.word	4
	.word	_Label_363
	.word	-40
	.word	4
	.word	_Label_364
	.word	-44
	.word	4
	.word	_Label_365
	.word	-48
	.word	4
	.word	_Label_366
	.word	-52
	.word	4
	.word	_Label_367
	.word	-56
	.word	4
	.word	_Label_368
	.word	-60
	.word	4
	.word	_Label_369
	.word	-64
	.word	4
	.word	_Label_370
	.word	-68
	.word	4
	.word	_Label_371
	.word	-72
	.word	4
	.word	_Label_372
	.word	-76
	.word	4
	.word	_Label_373
	.word	-80
	.word	4
	.word	_Label_374
	.word	-84
	.word	4
	.word	_Label_375
	.word	-88
	.word	4
	.word	_Label_376
	.word	-92
	.word	4
	.word	_Label_377
	.word	-96
	.word	4
	.word	_Label_378
	.word	-100
	.word	4
	.word	_Label_379
	.word	-104
	.word	4
	.word	_Label_380
	.word	-108
	.word	4
	.word	_Label_381
	.word	-112
	.word	4
	.word	_Label_382
	.word	-116
	.word	4
	.word	0
_Label_354:
	.ascii	"TestFrameManager\0"
	.align
_Label_355:
	.byte	'I'
	.ascii	"myID\0"
	.align
_Label_356:
	.byte	'?'
	.ascii	"_temp_353\0"
	.align
_Label_357:
	.byte	'?'
	.ascii	"_temp_352\0"
	.align
_Label_358:
	.byte	'?'
	.ascii	"_temp_351\0"
	.align
_Label_359:
	.byte	'?'
	.ascii	"_temp_350\0"
	.align
_Label_360:
	.byte	'?'
	.ascii	"_temp_349\0"
	.align
_Label_361:
	.byte	'?'
	.ascii	"_temp_344\0"
	.align
_Label_362:
	.byte	'?'
	.ascii	"_temp_343\0"
	.align
_Label_363:
	.byte	'?'
	.ascii	"_temp_342\0"
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
	.ascii	"_temp_338\0"
	.align
_Label_368:
	.byte	'?'
	.ascii	"_temp_333\0"
	.align
_Label_369:
	.byte	'?'
	.ascii	"_temp_332\0"
	.align
_Label_370:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_371:
	.byte	'?'
	.ascii	"_temp_330\0"
	.align
_Label_372:
	.byte	'?'
	.ascii	"_temp_329\0"
	.align
_Label_373:
	.byte	'?'
	.ascii	"_temp_328\0"
	.align
_Label_374:
	.byte	'?'
	.ascii	"_temp_327\0"
	.align
_Label_375:
	.byte	'?'
	.ascii	"_temp_322\0"
	.align
_Label_376:
	.byte	'?'
	.ascii	"_temp_321\0"
	.align
_Label_377:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_378:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_379:
	.byte	'I'
	.ascii	"j\0"
	.align
_Label_380:
	.byte	'I'
	.ascii	"newData\0"
	.align
_Label_381:
	.byte	'I'
	.ascii	"sz\0"
	.align
_Label_382:
	.byte	'P'
	.ascii	"pcb\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace  ===============
! 
_function_29_CheckAddrSpace:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_29_CheckAddrSpace,r1
	push	r1
	mov	23,r1
_Label_551:
	push	r0
	sub	r1,1,r1
	bne	_Label_551
	mov	420,r13		! source line 420
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	422,r13		! source line 422
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_386 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-76]
!   Data Move: _temp_385 = *_temp_386  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_385 == n then goto _Label_384		(int)
	load	[r14+-80],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_384
!	jmp	_Label_383
_Label_383:
! THEN...
	mov	423,r13		! source line 423
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_387 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_387  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	423,r13		! source line 423
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_384:
! FOR STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_392 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-68]
!   Calculate and save the FOR-LOOP ending value
!   _temp_393 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_392  (sizeInBytes=4)
	load	[r14+-68],r1
	store	r1,[r14+-84]
_Label_388:
!   Perform the FOR-LOOP termination test
!   if i > _temp_393 then goto _Label_391		
	load	[r14+-84],r1
	load	[r14+-64],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_391
_Label_389:
	mov	425,r13		! source line 425
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0AS",r10
	mov	426,r13		! source line 426
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
	mov	427,r13		! source line 427
	mov	"\0\0AS",r10
!   _temp_394 = frameAddr - 1048576		(int)
	load	[r14+-88],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   frameNumber = _temp_394 div 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-92]
! IF STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_398		(int)
	load	[r14+-92],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_398
	jmp	_Label_395
_Label_398:
!   if frameNumber < 27 then goto _Label_397		(int)
	load	[r14+-92],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_397
	jmp	_Label_395
_Label_397:
!   _temp_399 = frameAddr rem 8192		(int)
	load	[r14+-88],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
!   if intIsZero (_temp_399) then goto _Label_396
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_396
!	jmp	_Label_395
_Label_395:
! THEN...
	mov	432,r13		! source line 432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_400 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_400  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	432,r13		! source line 432
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_396:
! ASSIGNMENT STATEMENT...
	mov	434,r13		! source line 434
	mov	"\0\0AS",r10
!   _temp_401 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-48]
!   Move address of _temp_401 [frameNumber ] into _temp_402
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
!   _temp_405 = &_Global_histogram
	set	_Global_histogram,r1
	store	r1,[r14+-32]
!   Move address of _temp_405 [frameNumber ] into _temp_406
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
!   Data Move: _temp_404 = *_temp_406  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_403 = _temp_404 + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
!   Data Move: *_temp_402 = _temp_403  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r14+-44],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0IF",r10
	mov	435,r13		! source line 435
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
!   Retrieve Result: targetName=_temp_413  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_413) then goto _Label_412
	load	[r14+-24],r1
	cmp	r1,r0
	be	_Label_412
	jmp	_Label_407
_Label_412:
	mov	436,r13		! source line 436
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
!   if result==true then goto _Label_407 else goto _Label_411
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_411
	jmp	_Label_407
_Label_411:
	mov	437,r13		! source line 437
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
!   if result==true then goto _Label_407 else goto _Label_410
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_410
	jmp	_Label_407
_Label_410:
	mov	438,r13		! source line 438
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
!   Retrieve Result: targetName=_temp_414  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_414 then goto _Label_409 else goto _Label_407
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_407
	jmp	_Label_409
_Label_409:
	mov	439,r13		! source line 439
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
!   Retrieve Result: targetName=_temp_415  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_415 then goto _Label_408 else goto _Label_407
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_407
	jmp	_Label_408
_Label_407:
! THEN...
	mov	440,r13		! source line 440
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_416 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_416  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	440,r13		! source line 440
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_408:
! ASSIGNMENT STATEMENT...
	mov	442,r13		! source line 442
	mov	"\0\0AS",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_417 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-84],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   Data Move: *frameAddr = _temp_417  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r14+-88],r2
	store	r1,[r2]
!   Increment the FOR-LOOP index variable and jump back
_Label_390:
!   i = i + 1
	load	[r14+-84],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-84]
	jmp	_Label_388
! END FOR
_Label_391:
! RETURN STATEMENT...
	mov	425,r13		! source line 425
	mov	"\0\0RE",r10
	add	r15,96,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_29_CheckAddrSpace:
	.word	_sourceFileName
	.word	_Label_418
	.word	12		! total size of parameters
	.word	92		! frame size = 92
	.word	_Label_419
	.word	8
	.word	4
	.word	_Label_420
	.word	12
	.word	4
	.word	_Label_421
	.word	16
	.word	4
	.word	_Label_422
	.word	-16
	.word	4
	.word	_Label_423
	.word	-20
	.word	4
	.word	_Label_424
	.word	-9
	.word	1
	.word	_Label_425
	.word	-10
	.word	1
	.word	_Label_426
	.word	-24
	.word	4
	.word	_Label_427
	.word	-28
	.word	4
	.word	_Label_428
	.word	-32
	.word	4
	.word	_Label_429
	.word	-36
	.word	4
	.word	_Label_430
	.word	-40
	.word	4
	.word	_Label_431
	.word	-44
	.word	4
	.word	_Label_432
	.word	-48
	.word	4
	.word	_Label_433
	.word	-52
	.word	4
	.word	_Label_434
	.word	-56
	.word	4
	.word	_Label_435
	.word	-60
	.word	4
	.word	_Label_436
	.word	-64
	.word	4
	.word	_Label_437
	.word	-68
	.word	4
	.word	_Label_438
	.word	-72
	.word	4
	.word	_Label_439
	.word	-76
	.word	4
	.word	_Label_440
	.word	-80
	.word	4
	.word	_Label_441
	.word	-84
	.word	4
	.word	_Label_442
	.word	-88
	.word	4
	.word	_Label_443
	.word	-92
	.word	4
	.word	0
_Label_418:
	.ascii	"CheckAddrSpace\0"
	.align
_Label_419:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_420:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_421:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_424:
	.byte	'C'
	.ascii	"_temp_415\0"
	.align
_Label_425:
	.byte	'C'
	.ascii	"_temp_414\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_413\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_406\0"
	.align
_Label_428:
	.byte	'?'
	.ascii	"_temp_405\0"
	.align
_Label_429:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
_Label_430:
	.byte	'?'
	.ascii	"_temp_403\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_402\0"
	.align
_Label_432:
	.byte	'?'
	.ascii	"_temp_401\0"
	.align
_Label_433:
	.byte	'?'
	.ascii	"_temp_400\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_399\0"
	.align
_Label_435:
	.byte	'?'
	.ascii	"_temp_394\0"
	.align
_Label_436:
	.byte	'?'
	.ascii	"_temp_393\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_392\0"
	.align
_Label_438:
	.byte	'?'
	.ascii	"_temp_387\0"
	.align
_Label_439:
	.byte	'?'
	.ascii	"_temp_386\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_385\0"
	.align
_Label_441:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_442:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_443:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION CheckAddrSpace2  ===============
! 
_function_28_CheckAddrSpace2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_28_CheckAddrSpace2,r1
	push	r1
	mov	16,r1
_Label_552:
	push	r0
	sub	r1,1,r1
	bne	_Label_552
	mov	453,r13		! source line 453
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	455,r13		! source line 455
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_447 = addrSpace + 4
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-48]
!   Data Move: _temp_446 = *_temp_447  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-52]
!   if _temp_446 == n then goto _Label_445		(int)
	load	[r14+-52],r1
	load	[r14+12],r2
	cmp	r1,r2
	be	_Label_445
!	jmp	_Label_444
_Label_444:
! THEN...
	mov	456,r13		! source line 456
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_448 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_448  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	456,r13		! source line 456
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_445:
! FOR STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_453 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_454 = n - 1		(int)
	load	[r14+12],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_453  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-56]
_Label_449:
!   Perform the FOR-LOOP termination test
!   if i > _temp_454 then goto _Label_452		
	load	[r14+-56],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_452
_Label_450:
	mov	458,r13		! source line 458
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	459,r13		! source line 459
	mov	"\0\0AS",r10
	mov	459,r13		! source line 459
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
	mov	460,r13		! source line 460
	mov	"\0\0AS",r10
!   _temp_455 = frameAddr - 1048576		(int)
	load	[r14+-60],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   frameNumber = _temp_455 div 8192		(int)
	load	[r14+-32],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
! IF STATEMENT...
	mov	462,r13		! source line 462
	mov	"\0\0IF",r10
!   if frameNumber >= 0 then goto _Label_459		(int)
	load	[r14+-64],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_459
	jmp	_Label_456
_Label_459:
!   if frameNumber < 27 then goto _Label_458		(int)
	load	[r14+-64],r1
	mov	27,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_458
	jmp	_Label_456
_Label_458:
!   _temp_460 = frameAddr rem 8192		(int)
	load	[r14+-60],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_460) then goto _Label_457
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_457
!	jmp	_Label_456
_Label_456:
! THEN...
	mov	465,r13		! source line 465
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_461 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_461  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	465,r13		! source line 465
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_457:
! IF STATEMENT...
	mov	467,r13		! source line 467
	mov	"\0\0IF",r10
!   if intIsZero (frameAddr) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_464 = *frameAddr  (sizeInBytes=4)
	load	[r14+-60],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_465 = uniq + i		(int)
	load	[r14+16],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if _temp_464 == _temp_465 then goto _Label_463		(int)
	load	[r14+-20],r1
	load	[r14+-16],r2
	cmp	r1,r2
	be	_Label_463
!	jmp	_Label_462
_Label_462:
! THEN...
	mov	468,r13		! source line 468
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_466 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_466  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	468,r13		! source line 468
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_463:
!   Increment the FOR-LOOP index variable and jump back
_Label_451:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_449
! END FOR
_Label_452:
! RETURN STATEMENT...
	mov	458,r13		! source line 458
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_28_CheckAddrSpace2:
	.word	_sourceFileName
	.word	_Label_467
	.word	12		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_468
	.word	8
	.word	4
	.word	_Label_469
	.word	12
	.word	4
	.word	_Label_470
	.word	16
	.word	4
	.word	_Label_471
	.word	-12
	.word	4
	.word	_Label_472
	.word	-16
	.word	4
	.word	_Label_473
	.word	-20
	.word	4
	.word	_Label_474
	.word	-24
	.word	4
	.word	_Label_475
	.word	-28
	.word	4
	.word	_Label_476
	.word	-32
	.word	4
	.word	_Label_477
	.word	-36
	.word	4
	.word	_Label_478
	.word	-40
	.word	4
	.word	_Label_479
	.word	-44
	.word	4
	.word	_Label_480
	.word	-48
	.word	4
	.word	_Label_481
	.word	-52
	.word	4
	.word	_Label_482
	.word	-56
	.word	4
	.word	_Label_483
	.word	-60
	.word	4
	.word	_Label_484
	.word	-64
	.word	4
	.word	0
_Label_467:
	.ascii	"CheckAddrSpace2\0"
	.align
_Label_468:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_469:
	.byte	'I'
	.ascii	"n\0"
	.align
_Label_470:
	.byte	'I'
	.ascii	"uniq\0"
	.align
_Label_471:
	.byte	'?'
	.ascii	"_temp_466\0"
	.align
_Label_472:
	.byte	'?'
	.ascii	"_temp_465\0"
	.align
_Label_473:
	.byte	'?'
	.ascii	"_temp_464\0"
	.align
_Label_474:
	.byte	'?'
	.ascii	"_temp_461\0"
	.align
_Label_475:
	.byte	'?'
	.ascii	"_temp_460\0"
	.align
_Label_476:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_477:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_478:
	.byte	'?'
	.ascii	"_temp_453\0"
	.align
_Label_479:
	.byte	'?'
	.ascii	"_temp_448\0"
	.align
_Label_480:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
_Label_481:
	.byte	'?'
	.ascii	"_temp_446\0"
	.align
_Label_482:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_483:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_484:
	.byte	'I'
	.ascii	"frameNumber\0"
	.align
! 
! ===============  FUNCTION ConditionTestFoo  ===============
! 
_function_27_ConditionTestFoo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_27_ConditionTestFoo,r1
	push	r1
	mov	13,r1
_Label_553:
	push	r0
	sub	r1,1,r1
	bne	_Label_553
	mov	478,r13		! source line 478
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! FOR STATEMENT...
	mov	483,r13		! source line 483
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_489 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_490 = 4		(4 bytes)
	mov	4,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_489  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-52]
_Label_485:
!   Perform the FOR-LOOP termination test
!   if i > _temp_490 then goto _Label_488		
	load	[r14+-52],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_488
_Label_486:
	mov	483,r13		! source line 483
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	484,r13		! source line 484
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
_Label_487:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_485
! END FOR
_Label_488:
! SEND STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0SE",r10
!   _temp_491 = &_Global_cmut
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
!   _temp_492 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	489,r13		! source line 489
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	490,r13		! source line 490
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	491,r13		! source line 491
	mov	"\0\0CA",r10
	call	_P_System_nl
! IF STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0IF",r10
!   if _Global_flag then goto _Label_494 else goto _Label_493
	set	_Global_flag,r1
	loadb	[r1],r1
	cmp	r1,0
	be	_Label_493
	jmp	_Label_494
_Label_493:
! THEN...
	mov	494,r13		! source line 494
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	494,r13		! source line 494
	mov	"\0\0SE",r10
!   _temp_495 = &_Global_cmut
	set	_Global_cmut,r1
	store	r1,[r14+-32]
!   _temp_496 = &_Global_c
	set	_Global_c,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_495  sizeInBytes=4
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
_Label_494:
! ASSIGNMENT STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0AS",r10
!   _Global_flag = 0		(1 byte)
	mov	0,r1
	set	_Global_flag,r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   _temp_497 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_497  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	504,r13		! source line 504
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=id  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	505,r13		! source line 505
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	506,r13		! source line 506
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	508,r13		! source line 508
	mov	"\0\0AS",r10
!   _Global_flag = 1		(1 byte)
	mov	1,r1
	set	_Global_flag,r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	509,r13		! source line 509
	mov	"\0\0SE",r10
!   _temp_498 = &_Global_cmut
	set	_Global_cmut,r1
	store	r1,[r14+-20]
!   _temp_499 = &_Global_c
	set	_Global_c,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_498  sizeInBytes=4
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
	mov	511,r13		! source line 511
	mov	"\0\0SE",r10
!   _temp_500 = &_Global_cmut
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
	mov	511,r13		! source line 511
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_27_ConditionTestFoo:
	.word	_sourceFileName
	.word	_Label_501
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_502
	.word	8
	.word	4
	.word	_Label_503
	.word	-12
	.word	4
	.word	_Label_504
	.word	-16
	.word	4
	.word	_Label_505
	.word	-20
	.word	4
	.word	_Label_506
	.word	-24
	.word	4
	.word	_Label_507
	.word	-28
	.word	4
	.word	_Label_508
	.word	-32
	.word	4
	.word	_Label_509
	.word	-36
	.word	4
	.word	_Label_510
	.word	-40
	.word	4
	.word	_Label_511
	.word	-44
	.word	4
	.word	_Label_512
	.word	-48
	.word	4
	.word	_Label_513
	.word	-52
	.word	4
	.word	0
_Label_501:
	.ascii	"ConditionTestFoo\0"
	.align
_Label_502:
	.byte	'I'
	.ascii	"id\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_500\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_499\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_498\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_497\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_496\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_495\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_510:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_511:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_512:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_513:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION RunConditionTests  ===============
! 
_function_26_RunConditionTests:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_26_RunConditionTests,r1
	push	r1
	mov	13,r1
_Label_554:
	push	r0
	sub	r1,1,r1
	bne	_Label_554
	mov	514,r13		! source line 514
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0SE",r10
!   _temp_514 = &_Global_c
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
	mov	519,r13		! source line 519
	mov	"\0\0SE",r10
!   _temp_515 = &_Global_cmut
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
	mov	521,r13		! source line 521
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_520 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_521 = 15		(4 bytes)
	mov	15,r1
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_520  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-44]
_Label_516:
!   Perform the FOR-LOOP termination test
!   if i > _temp_521 then goto _Label_519		
	load	[r14+-44],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_519
_Label_517:
	mov	521,r13		! source line 521
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0AS",r10
!   ALLOC CLASS Constructor...
!   Call alloc...
	mov	4164,r1
	store	r1,[r14+-24]
!   t = alloc (_temp_522)
	load	[r14+-24],r1
	call	_heapAlloc
	store	r1,[r14+-48]
!   ZeroMemory: *t = zeros  (sizeInBytes=4164)
	load	[r14+-48],r4
	mov	1041,r3
_Label_555:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_555
!   *t = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	523,r13		! source line 523
	mov	"\0\0SE",r10
!   _temp_524 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-16]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_524  sizeInBytes=4
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
	mov	524,r13		! source line 524
	mov	"\0\0SE",r10
!   _temp_525 = _function_27_ConditionTestFoo
	set	_function_27_ConditionTestFoo,r1
	store	r1,[r14+-12]
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_525  sizeInBytes=4
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
_Label_518:
!   i = i + 1
	load	[r14+-44],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
	jmp	_Label_516
! END FOR
_Label_519:
! RETURN STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_26_RunConditionTests:
	.word	_sourceFileName
	.word	_Label_526
	.word	0		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_527
	.word	-12
	.word	4
	.word	_Label_528
	.word	-16
	.word	4
	.word	_Label_529
	.word	-20
	.word	4
	.word	_Label_530
	.word	-24
	.word	4
	.word	_Label_531
	.word	-28
	.word	4
	.word	_Label_532
	.word	-32
	.word	4
	.word	_Label_533
	.word	-36
	.word	4
	.word	_Label_534
	.word	-40
	.word	4
	.word	_Label_535
	.word	-44
	.word	4
	.word	_Label_536
	.word	-48
	.word	4
	.word	0
_Label_526:
	.ascii	"RunConditionTests\0"
	.align
_Label_527:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
_Label_528:
	.byte	'?'
	.ascii	"_temp_524\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_523\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
_Label_531:
	.byte	'?'
	.ascii	"_temp_521\0"
	.align
_Label_532:
	.byte	'?'
	.ascii	"_temp_520\0"
	.align
_Label_533:
	.byte	'?'
	.ascii	"_temp_515\0"
	.align
_Label_534:
	.byte	'?'
	.ascii	"_temp_514\0"
	.align
_Label_535:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_536:
	.byte	'P'
	.ascii	"t\0"
	.align
