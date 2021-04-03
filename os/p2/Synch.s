! Name of package being compiled: Synch
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
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from other packages
	.import	_P_Thread_Thread
! The following class and its methods are from this package
	.export	_P_Synch_Semaphore
	.export	_Method_P_Synch_Semaphore_1
	.export	_Method_P_Synch_Semaphore_2
	.export	_Method_P_Synch_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Synch_Mutex
	.export	_Method_P_Synch_Mutex_1
	.export	_Method_P_Synch_Mutex_2
	.export	_Method_P_Synch_Mutex_3
	.export	_Method_P_Synch_Mutex_4
! The following class and its methods are from this package
	.export	_P_Synch_Condition
	.export	_Method_P_Synch_Condition_1
	.export	_Method_P_Synch_Condition_2
	.export	_Method_P_Synch_Condition_3
	.export	_Method_P_Synch_Condition_4
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
	.align
! String constants
_StringConst_9:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_8:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_7:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_6:
	.word	43			! length
	.ascii	"You cannot unlock the mutex you do not hold"
	.align
_StringConst_5:
	.word	30			! length
	.ascii	"Thread already holds the mutex"
	.align
_StringConst_4:
	.word	46			! length
	.ascii	"Mutex count overflowed during \'Lock\' operation"
	.align
_StringConst_3:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_2:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_1:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Synch.c\0"
_packageName:
	.ascii	"Synch\0"
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
_CheckVersion_P_Synch_:
	.export	_CheckVersion_P_Synch_
	set	0xae10ebb2,r4		! myHashVal = -1374622798
	cmp	r3,r4
	be	_Label_10
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
_Label_10:
	mov	0,r1
! Make sure _P_System_ has hash value 0xfe42cccc (decimal -29176628)
	set	_packageName,r2
	set	0xfe42cccc,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_11
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_11
! Make sure _P_Thread_ has hash value 0xd98e6cc5 (decimal -644977467)
	set	_packageName,r2
	set	0xd98e6cc5,r3
	call	_CheckVersion_P_Thread_
	.import	_CheckVersion_P_Thread_
	cmp	r1,0
	bne	_Label_11
_Label_11:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Synch_Semaphore:
	.word	_Label_12
	jmp	_Method_P_Synch_Semaphore_1	! 4:	Init
	jmp	_Method_P_Synch_Semaphore_3	! 8:	Down
	jmp	_Method_P_Synch_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_12:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_13
	.word	_sourceFileName
	.word	5		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Synch_Semaphore
	.word	_P_System_Object
	.word	0
_Label_13:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_170:
	push	r0
	sub	r1,1,r1
	bne	_Label_170
	mov	34,r13		! source line 34
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	35,r13		! source line 35
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_15		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_15
!	jmp	_Label_14
_Label_14:
! THEN...
	mov	36,r13		! source line 36
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_16 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_16  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	36,r13		! source line 36
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_15:
! ASSIGNMENT STATEMENT...
	mov	38,r13		! source line 38
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! RETURN STATEMENT...
	mov	39,r13		! source line 39
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_18
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_19
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_20
	.word	12
	.word	4
	.word	_Label_21
	.word	-12
	.word	4
	.word	_Label_22
	.word	-16
	.word	4
	.word	0
_Label_18:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_19:
	.ascii	"Pself\0"
	.align
_Label_20:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_21:
	.byte	'?'
	.ascii	"_temp_17\0"
	.align
_Label_22:
	.byte	'?'
	.ascii	"_temp_16\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Synch_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_171:
	push	r0
	sub	r1,1,r1
	bne	_Label_171
	mov	44,r13		! source line 44
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	48,r13		! source line 48
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	48,r13		! source line 48
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	49,r13		! source line 49
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_24		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_24
!	jmp	_Label_23
_Label_23:
! THEN...
	mov	50,r13		! source line 50
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_25 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_25  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	50,r13		! source line 50
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_24:
! ASSIGNMENT STATEMENT...
	mov	52,r13		! source line 52
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	53,r13		! source line 53
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_27		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_27
!	jmp	_Label_26
_Label_26:
! THEN...
	mov	54,r13		! source line 54
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	54,r13		! source line 54
	mov	"\0\0AS",r10
	mov	54,r13		! source line 54
	mov	"\0\0SE",r10
!   _temp_28 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	55,r13		! source line 55
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_29 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_29 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	56,r13		! source line 56
	mov	"\0\0SE",r10
!   _temp_30 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_27:
! ASSIGNMENT STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	58,r13		! source line 58
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	58,r13		! source line 58
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_31
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_32
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_33
	.word	-12
	.word	4
	.word	_Label_34
	.word	-16
	.word	4
	.word	_Label_35
	.word	-20
	.word	4
	.word	_Label_36
	.word	-24
	.word	4
	.word	_Label_37
	.word	-28
	.word	4
	.word	_Label_38
	.word	-32
	.word	4
	.word	0
_Label_31:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_32:
	.ascii	"Pself\0"
	.align
_Label_33:
	.byte	'?'
	.ascii	"_temp_30\0"
	.align
_Label_34:
	.byte	'?'
	.ascii	"_temp_29\0"
	.align
_Label_35:
	.byte	'?'
	.ascii	"_temp_28\0"
	.align
_Label_36:
	.byte	'?'
	.ascii	"_temp_25\0"
	.align
_Label_37:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_38:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Synch_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_172:
	push	r0
	sub	r1,1,r1
	bne	_Label_172
	mov	63,r13		! source line 63
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	66,r13		! source line 66
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	66,r13		! source line 66
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_40		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_40
!	jmp	_Label_39
_Label_39:
! THEN...
	mov	68,r13		! source line 68
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_41 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_41  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	68,r13		! source line 68
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_40:
! ASSIGNMENT STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	71,r13		! source line 71
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_43		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_43
!	jmp	_Label_42
_Label_42:
! THEN...
	mov	72,r13		! source line 72
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	72,r13		! source line 72
	mov	"\0\0SE",r10
!   _temp_44 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_43:
! ASSIGNMENT STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	75,r13		! source line 75
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	75,r13		! source line 75
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_45
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_46
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_47
	.word	-12
	.word	4
	.word	_Label_48
	.word	-16
	.word	4
	.word	_Label_49
	.word	-20
	.word	4
	.word	0
_Label_45:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_46:
	.ascii	"Pself\0"
	.align
_Label_47:
	.byte	'?'
	.ascii	"_temp_44\0"
	.align
_Label_48:
	.byte	'?'
	.ascii	"_temp_41\0"
	.align
_Label_49:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Synch_Mutex:
	.word	_Label_50
	jmp	_Method_P_Synch_Mutex_1	! 4:	Init
	jmp	_Method_P_Synch_Mutex_2	! 8:	Lock
	jmp	_Method_P_Synch_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Synch_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_50:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_51
	.word	_sourceFileName
	.word	16		! line number
	.word	24		! size of instances, in bytes
	.word	_P_Synch_Mutex
	.word	_P_System_Object
	.word	0
_Label_51:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_173:
	push	r0
	sub	r1,1,r1
	bne	_Label_173
	mov	98,r13		! source line 98
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	100,r13		! source line 100
	mov	"\0\0AS",r10
!   holder = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	101,r13		! source line 101
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,8,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0AS",r10
!   count = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	102,r13		! source line 102
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_1:
	.word	_sourceFileName
	.word	_Label_53
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_54
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_55
	.word	-12
	.word	4
	.word	0
_Label_53:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_54:
	.ascii	"Pself\0"
	.align
_Label_55:
	.byte	'?'
	.ascii	"_temp_52\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Synch_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_2,r1
	push	r1
	mov	10,r1
_Label_174:
	push	r0
	sub	r1,1,r1
	bne	_Label_174
	mov	107,r13		! source line 107
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! intState
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	108,r13		! source line 108
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=intState  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	109,r13		! source line 109
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_57		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_57
!	jmp	_Label_56
_Label_56:
! THEN...
	mov	110,r13		! source line 110
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_58 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_58  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	110,r13		! source line 110
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_57:
! IF STATEMENT...
	mov	112,r13		! source line 112
	mov	"\0\0IF",r10
!   if holder == 0 then goto _Label_60		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_60
!	jmp	_Label_59
_Label_59:
! THEN...
	mov	113,r13		! source line 113
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	113,r13		! source line 113
	mov	"\0\0IF",r10
!   if intIsZero (holder) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_64 = holder + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-28]
!   Data Move: _temp_63 = *_temp_64  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_66 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_65 = *_temp_66  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_63 != _temp_65 then goto _Label_62		(int)
	load	[r14+-32],r1
	load	[r14+-24],r2
	cmp	r1,r2
	bne	_Label_62
!	jmp	_Label_61
_Label_61:
! THEN...
	mov	114,r13		! source line 114
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_67 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_67  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	114,r13		! source line 114
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_62:
! SEND STATEMENT...
	mov	117,r13		! source line 117
	mov	"\0\0SE",r10
!   _temp_68 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	118,r13		! source line 118
	mov	"\0\0AS",r10
!   count = count + 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	119,r13		! source line 119
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
	jmp	_Label_69
_Label_60:
! ELSE...
	mov	122,r13		! source line 122
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	122,r13		! source line 122
	mov	"\0\0AS",r10
!   holder = _P_Thread_currentThread		(4 bytes)
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_69:
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=intState  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=intState  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_2:
	.word	_sourceFileName
	.word	_Label_70
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_71
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_72
	.word	-12
	.word	4
	.word	_Label_73
	.word	-16
	.word	4
	.word	_Label_74
	.word	-20
	.word	4
	.word	_Label_75
	.word	-24
	.word	4
	.word	_Label_76
	.word	-28
	.word	4
	.word	_Label_77
	.word	-32
	.word	4
	.word	_Label_78
	.word	-36
	.word	4
	.word	_Label_79
	.word	-40
	.word	4
	.word	0
_Label_70:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_71:
	.ascii	"Pself\0"
	.align
_Label_72:
	.byte	'?'
	.ascii	"_temp_68\0"
	.align
_Label_73:
	.byte	'?'
	.ascii	"_temp_67\0"
	.align
_Label_74:
	.byte	'?'
	.ascii	"_temp_66\0"
	.align
_Label_75:
	.byte	'?'
	.ascii	"_temp_65\0"
	.align
_Label_76:
	.byte	'?'
	.ascii	"_temp_64\0"
	.align
_Label_77:
	.byte	'?'
	.ascii	"_temp_63\0"
	.align
_Label_78:
	.byte	'?'
	.ascii	"_temp_58\0"
	.align
_Label_79:
	.byte	'I'
	.ascii	"intState\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Synch_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_3,r1
	push	r1
	mov	9,r1
_Label_175:
	push	r0
	sub	r1,1,r1
	bne	_Label_175
	mov	129,r13		! source line 129
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0IF",r10
	mov	133,r13		! source line 133
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_82) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_80 else goto _Label_81
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_81
	jmp	_Label_80
_Label_80:
! THEN...
	mov	134,r13		! source line 134
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	134,r13		! source line 134
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	134,r13		! source line 134
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=intState  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	135,r13		! source line 135
	mov	"\0\0AS",r10
!   holder = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! IF STATEMENT...
	mov	136,r13		! source line 136
	mov	"\0\0IF",r10
!   if count <= 0 then goto _Label_84		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_84
!	jmp	_Label_83
_Label_83:
! THEN...
	mov	137,r13		! source line 137
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	137,r13		! source line 137
	mov	"\0\0AS",r10
!   count = count - 1		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	138,r13		! source line 138
	mov	"\0\0AS",r10
	mov	138,r13		! source line 138
	mov	"\0\0SE",r10
!   _temp_85 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	139,r13		! source line 139
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_86 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_86 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	140,r13		! source line 140
	mov	"\0\0SE",r10
!   _temp_87 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	141,r13		! source line 141
	mov	"\0\0AS",r10
!   holder = t		(4 bytes)
	load	[r14+-36],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_84:
! ASSIGNMENT STATEMENT...
	mov	143,r13		! source line 143
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=intState  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	143,r13		! source line 143
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=intState  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
	jmp	_Label_88
_Label_81:
! ELSE...
	mov	145,r13		! source line 145
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_89 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_89  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	145,r13		! source line 145
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_88:
! RETURN STATEMENT...
	mov	133,r13		! source line 133
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_3:
	.word	_sourceFileName
	.word	_Label_90
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_91
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_92
	.word	-12
	.word	4
	.word	_Label_93
	.word	-16
	.word	4
	.word	_Label_94
	.word	-20
	.word	4
	.word	_Label_95
	.word	-24
	.word	4
	.word	_Label_96
	.word	-28
	.word	4
	.word	_Label_97
	.word	-32
	.word	4
	.word	_Label_98
	.word	-36
	.word	4
	.word	0
_Label_90:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_91:
	.ascii	"Pself\0"
	.align
_Label_92:
	.byte	'?'
	.ascii	"_temp_89\0"
	.align
_Label_93:
	.byte	'?'
	.ascii	"_temp_87\0"
	.align
_Label_94:
	.byte	'?'
	.ascii	"_temp_86\0"
	.align
_Label_95:
	.byte	'?'
	.ascii	"_temp_85\0"
	.align
_Label_96:
	.byte	'?'
	.ascii	"_temp_82\0"
	.align
_Label_97:
	.byte	'I'
	.ascii	"intState\0"
	.align
_Label_98:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Synch_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Mutex_4,r1
	push	r1
	mov	4,r1
_Label_176:
	push	r0
	sub	r1,1,r1
	bne	_Label_176
	mov	151,r13		! source line 151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	152,r13		! source line 152
	mov	"\0\0IF",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_102 = _P_Thread_currentThread + 72
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-20]
!   Data Move: _temp_101 = *_temp_102  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (holder) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_104 = holder + 72
	load	[r14+8],r1
	load	[r1+4],r1
	add	r1,72,r1
	store	r1,[r14+-12]
!   Data Move: _temp_103 = *_temp_104  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if _temp_101 != _temp_103 then goto _Label_100		(int)
	load	[r14+-24],r1
	load	[r14+-16],r2
	cmp	r1,r2
	bne	_Label_100
!	jmp	_Label_99
_Label_99:
! THEN...
	mov	154,r13		! source line 154
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	154,r13		! source line 154
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_100:
! RETURN STATEMENT...
	mov	157,r13		! source line 157
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=1)
	mov	0,r1
	storeb	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Mutex_4:
	.word	_sourceFileName
	.word	_Label_105
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_106
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_107
	.word	-12
	.word	4
	.word	_Label_108
	.word	-16
	.word	4
	.word	_Label_109
	.word	-20
	.word	4
	.word	_Label_110
	.word	-24
	.word	4
	.word	0
_Label_105:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_106:
	.ascii	"Pself\0"
	.align
_Label_107:
	.byte	'?'
	.ascii	"_temp_104\0"
	.align
_Label_108:
	.byte	'?'
	.ascii	"_temp_103\0"
	.align
_Label_109:
	.byte	'?'
	.ascii	"_temp_102\0"
	.align
_Label_110:
	.byte	'?'
	.ascii	"_temp_101\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Synch_Condition:
	.word	_Label_111
	jmp	_Method_P_Synch_Condition_1	! 4:	Init
	jmp	_Method_P_Synch_Condition_2	! 8:	Wait
	jmp	_Method_P_Synch_Condition_3	! 12:	Signal
	jmp	_Method_P_Synch_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_111:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_112
	.word	_sourceFileName
	.word	29		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Synch_Condition
	.word	_P_System_Object
	.word	0
_Label_112:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Synch_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_1,r1
	push	r1
	mov	1,r1
_Label_177:
	push	r0
	sub	r1,1,r1
	bne	_Label_177
	mov	197,r13		! source line 197
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingThreads = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingThreads = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! RETURN STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_1:
	.word	_sourceFileName
	.word	_Label_114
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_115
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_116
	.word	-12
	.word	4
	.word	0
_Label_114:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_115:
	.ascii	"Pself\0"
	.align
_Label_116:
	.byte	'?'
	.ascii	"_temp_113\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Synch_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_2,r1
	push	r1
	mov	6,r1
_Label_178:
	push	r0
	sub	r1,1,r1
	bne	_Label_178
	mov	203,r13		! source line 203
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	206,r13		! source line 206
	mov	"\0\0IF",r10
	mov	206,r13		! source line 206
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_119  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_119 then goto _Label_118 else goto _Label_117
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_117
	jmp	_Label_118
_Label_117:
! THEN...
	mov	207,r13		! source line 207
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_120 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_120  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	207,r13		! source line 207
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_118:
! ASSIGNMENT STATEMENT...
	mov	209,r13		! source line 209
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	209,r13		! source line 209
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	210,r13		! source line 210
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Unlock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	211,r13		! source line 211
	mov	"\0\0SE",r10
!   _temp_121 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Thread_currentThread  sizeInBytes=4
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	212,r13		! source line 212
	mov	"\0\0SE",r10
!   if intIsZero (_P_Thread_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Thread_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	213,r13		! source line 213
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Lock
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	214,r13		! source line 214
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	214,r13		! source line 214
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_2:
	.word	_sourceFileName
	.word	_Label_122
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_123
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_124
	.word	12
	.word	4
	.word	_Label_125
	.word	-16
	.word	4
	.word	_Label_126
	.word	-20
	.word	4
	.word	_Label_127
	.word	-9
	.word	1
	.word	_Label_128
	.word	-24
	.word	4
	.word	0
_Label_122:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_123:
	.ascii	"Pself\0"
	.align
_Label_124:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_125:
	.byte	'?'
	.ascii	"_temp_121\0"
	.align
_Label_126:
	.byte	'?'
	.ascii	"_temp_120\0"
	.align
_Label_127:
	.byte	'C'
	.ascii	"_temp_119\0"
	.align
_Label_128:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Synch_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_3,r1
	push	r1
	mov	9,r1
_Label_179:
	push	r0
	sub	r1,1,r1
	bne	_Label_179
	mov	219,r13		! source line 219
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	223,r13		! source line 223
	mov	"\0\0IF",r10
	mov	223,r13		! source line 223
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_131  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_131 then goto _Label_130 else goto _Label_129
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_129
	jmp	_Label_130
_Label_129:
! THEN...
	mov	224,r13		! source line 224
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_132 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_132  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	224,r13		! source line 224
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_130:
! ASSIGNMENT STATEMENT...
	mov	226,r13		! source line 226
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	226,r13		! source line 226
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	227,r13		! source line 227
	mov	"\0\0AS",r10
	mov	227,r13		! source line 227
	mov	"\0\0SE",r10
!   _temp_133 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	228,r13		! source line 228
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_135		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_135
!	jmp	_Label_134
_Label_134:
! THEN...
	mov	229,r13		! source line 229
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	229,r13		! source line 229
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_136 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_136 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	230,r13		! source line 230
	mov	"\0\0SE",r10
!   _temp_137 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_135:
! ASSIGNMENT STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	232,r13		! source line 232
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	232,r13		! source line 232
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_3:
	.word	_sourceFileName
	.word	_Label_138
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_139
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_140
	.word	12
	.word	4
	.word	_Label_141
	.word	-16
	.word	4
	.word	_Label_142
	.word	-20
	.word	4
	.word	_Label_143
	.word	-24
	.word	4
	.word	_Label_144
	.word	-28
	.word	4
	.word	_Label_145
	.word	-9
	.word	1
	.word	_Label_146
	.word	-32
	.word	4
	.word	_Label_147
	.word	-36
	.word	4
	.word	0
_Label_138:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_139:
	.ascii	"Pself\0"
	.align
_Label_140:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_141:
	.byte	'?'
	.ascii	"_temp_137\0"
	.align
_Label_142:
	.byte	'?'
	.ascii	"_temp_136\0"
	.align
_Label_143:
	.byte	'?'
	.ascii	"_temp_133\0"
	.align
_Label_144:
	.byte	'?'
	.ascii	"_temp_132\0"
	.align
_Label_145:
	.byte	'C'
	.ascii	"_temp_131\0"
	.align
_Label_146:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_147:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Synch_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Synch_Condition_4,r1
	push	r1
	mov	9,r1
_Label_180:
	push	r0
	sub	r1,1,r1
	bne	_Label_180
	mov	237,r13		! source line 237
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	241,r13		! source line 241
	mov	"\0\0IF",r10
	mov	241,r13		! source line 241
	mov	"\0\0SE",r10
!   if intIsZero (mutex) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message IsHeldByCurrentThread
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_150  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_150 then goto _Label_149 else goto _Label_148
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_148
	jmp	_Label_149
_Label_148:
! THEN...
	mov	242,r13		! source line 242
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_151 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_151  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	242,r13		! source line 242
	mov	"\0\0CA",r10
	call	_P_Thread_FatalError
! END IF...
_Label_149:
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0WH",r10
_Label_152:
!	jmp	_Label_153
_Label_153:
	mov	245,r13		! source line 245
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	246,r13		! source line 246
	mov	"\0\0AS",r10
	mov	246,r13		! source line 246
	mov	"\0\0SE",r10
!   _temp_155 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	247,r13		! source line 247
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_156
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_156
	jmp	_Label_157
_Label_156:
! THEN...
	mov	248,r13		! source line 248
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	248,r13		! source line 248
	mov	"\0\0BR",r10
	jmp	_Label_154
! END IF...
_Label_157:
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_158 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_158 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	251,r13		! source line 251
	mov	"\0\0SE",r10
!   _temp_159 = &_P_Thread_readyList
	set	_P_Thread_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_152
_Label_154:
! ASSIGNMENT STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	253,r13		! source line 253
	mov	"\0\0CA",r10
	call	_P_Thread_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	253,r13		! source line 253
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Synch_Condition_4:
	.word	_sourceFileName
	.word	_Label_160
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_161
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_162
	.word	12
	.word	4
	.word	_Label_163
	.word	-16
	.word	4
	.word	_Label_164
	.word	-20
	.word	4
	.word	_Label_165
	.word	-24
	.word	4
	.word	_Label_166
	.word	-28
	.word	4
	.word	_Label_167
	.word	-9
	.word	1
	.word	_Label_168
	.word	-32
	.word	4
	.word	_Label_169
	.word	-36
	.word	4
	.word	0
_Label_160:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_161:
	.ascii	"Pself\0"
	.align
_Label_162:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_163:
	.byte	'?'
	.ascii	"_temp_159\0"
	.align
_Label_164:
	.byte	'?'
	.ascii	"_temp_158\0"
	.align
_Label_165:
	.byte	'?'
	.ascii	"_temp_155\0"
	.align
_Label_166:
	.byte	'?'
	.ascii	"_temp_151\0"
	.align
_Label_167:
	.byte	'C'
	.ascii	"_temp_150\0"
	.align
_Label_168:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_169:
	.byte	'P'
	.ascii	"t\0"
	.align
