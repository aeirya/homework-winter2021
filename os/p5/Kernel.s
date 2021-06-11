! Name of package being compiled: Kernel
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
! Externally visible functions in this package
	.export	_P_Kernel_TimerInterruptHandler
	.export	_P_Kernel_DiskInterruptHandler
	.export	_P_Kernel_SerialInterruptHandler
	.export	_P_Kernel_IllegalInstructionHandler
	.export	_P_Kernel_ArithmeticExceptionHandler
	.export	_P_Kernel_AddressExceptionHandler
	.export	_P_Kernel_PageInvalidExceptionHandler
	.export	_P_Kernel_PageReadonlyExceptionHandler
	.export	_P_Kernel_PrivilegedInstructionHandler
	.export	_P_Kernel_AlignmentExceptionHandler
	.export	_P_Kernel_SyscallTrapHandler
	.export	_P_Kernel_Handle_Sys_Fork
	.export	_P_Kernel_Handle_Sys_Yield
	.export	_P_Kernel_Handle_Sys_Exec
	.export	_P_Kernel_Handle_Sys_Join
	.export	_P_Kernel_Handle_Sys_Exit
	.export	_P_Kernel_Handle_Sys_Create
	.export	_P_Kernel_Handle_Sys_Open
	.export	_P_Kernel_Handle_Sys_Read
	.export	_P_Kernel_Handle_Sys_Write
	.export	_P_Kernel_Handle_Sys_Seek
	.export	_P_Kernel_Handle_Sys_Close
	.export	_P_Kernel_Handle_Sys_Shutdown
	.export	_P_Kernel_InitializeScheduler
	.export	_P_Kernel_Run
	.export	_P_Kernel_PrintReadyList
	.export	_P_Kernel_ThreadStartMain
	.export	_P_Kernel_ThreadFinish
	.export	_P_Kernel_FatalError_ThreadVersion
	.export	_P_Kernel_SetInterruptsTo
	.export	_P_Kernel_ProcessFinish
	.export	_P_Kernel_InitFirstProcess
	.import	Switch
	.import	ThreadStartUp
	.import	GetOldUserPCFromSystemStack
	.import	LoadPageTableRegs
	.import	SaveUserRegs
	.import	RestoreUserRegs
	.import	BecomeUserThread
! The following class and its methods are from other packages
	.import	_P_System_Object
! The following class and its methods are from other packages
	.import	_P_BitMap_BitMap
! The following class and its methods are from other packages
	.import	_P_List_List
! The following class and its methods are from other packages
	.import	_P_List_Listable
! The following class and its methods are from this package
	.export	_P_Kernel_Semaphore
	.export	_Method_P_Kernel_Semaphore_1
	.export	_Method_P_Kernel_Semaphore_2
	.export	_Method_P_Kernel_Semaphore_3
! The following class and its methods are from this package
	.export	_P_Kernel_Mutex
	.export	_Method_P_Kernel_Mutex_1
	.export	_Method_P_Kernel_Mutex_2
	.export	_Method_P_Kernel_Mutex_3
	.export	_Method_P_Kernel_Mutex_4
! The following class and its methods are from this package
	.export	_P_Kernel_Condition
	.export	_Method_P_Kernel_Condition_1
	.export	_Method_P_Kernel_Condition_2
	.export	_Method_P_Kernel_Condition_3
	.export	_Method_P_Kernel_Condition_4
! The following class and its methods are from this package
	.export	_P_Kernel_HoareCondition
	.export	_Method_P_Kernel_HoareCondition_1
	.export	_Method_P_Kernel_HoareCondition_2
	.export	_Method_P_Kernel_HoareCondition_3
	.export	_Method_P_Kernel_HoareCondition_4
! The following class and its methods are from this package
	.export	_P_Kernel_Thread
	.export	_Method_P_Kernel_Thread_1
	.export	_Method_P_Kernel_Thread_2
	.export	_Method_P_Kernel_Thread_3
	.export	_Method_P_Kernel_Thread_4
	.export	_Method_P_Kernel_Thread_5
	.export	_Method_P_Kernel_Thread_6
! The following class and its methods are from this package
	.export	_P_Kernel_ThreadManager
	.export	_Method_P_Kernel_ThreadManager_1
	.export	_Method_P_Kernel_ThreadManager_2
	.export	_Method_P_Kernel_ThreadManager_3
	.export	_Method_P_Kernel_ThreadManager_4
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessControlBlock
	.export	_Method_P_Kernel_ProcessControlBlock_1
	.export	_Method_P_Kernel_ProcessControlBlock_2
	.export	_Method_P_Kernel_ProcessControlBlock_3
! The following class and its methods are from this package
	.export	_P_Kernel_ProcessManager
	.export	_Method_P_Kernel_ProcessManager_1
	.export	_Method_P_Kernel_ProcessManager_2
	.export	_Method_P_Kernel_ProcessManager_3
	.export	_Method_P_Kernel_ProcessManager_4
	.export	_Method_P_Kernel_ProcessManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_FrameManager
	.export	_Method_P_Kernel_FrameManager_1
	.export	_Method_P_Kernel_FrameManager_2
	.export	_Method_P_Kernel_FrameManager_3
	.export	_Method_P_Kernel_FrameManager_4
	.export	_Method_P_Kernel_FrameManager_5
! The following class and its methods are from this package
	.export	_P_Kernel_AddrSpace
	.export	_Method_P_Kernel_AddrSpace_1
	.export	_Method_P_Kernel_AddrSpace_2
	.export	_Method_P_Kernel_AddrSpace_3
	.export	_Method_P_Kernel_AddrSpace_4
	.export	_Method_P_Kernel_AddrSpace_5
	.export	_Method_P_Kernel_AddrSpace_6
	.export	_Method_P_Kernel_AddrSpace_7
	.export	_Method_P_Kernel_AddrSpace_8
	.export	_Method_P_Kernel_AddrSpace_9
	.export	_Method_P_Kernel_AddrSpace_10
	.export	_Method_P_Kernel_AddrSpace_11
	.export	_Method_P_Kernel_AddrSpace_12
	.export	_Method_P_Kernel_AddrSpace_13
	.export	_Method_P_Kernel_AddrSpace_14
	.export	_Method_P_Kernel_AddrSpace_15
	.export	_Method_P_Kernel_AddrSpace_16
	.export	_Method_P_Kernel_AddrSpace_17
	.export	_Method_P_Kernel_AddrSpace_18
	.export	_Method_P_Kernel_AddrSpace_19
	.export	_Method_P_Kernel_AddrSpace_20
	.export	_Method_P_Kernel_AddrSpace_21
! The following class and its methods are from this package
	.export	_P_Kernel_DiskDriver
	.export	_Method_P_Kernel_DiskDriver_1
	.export	_Method_P_Kernel_DiskDriver_2
	.export	_Method_P_Kernel_DiskDriver_3
	.export	_Method_P_Kernel_DiskDriver_4
	.export	_Method_P_Kernel_DiskDriver_5
! The following class and its methods are from this package
	.export	_P_Kernel_FileManager
	.export	_Method_P_Kernel_FileManager_1
	.export	_Method_P_Kernel_FileManager_2
	.export	_Method_P_Kernel_FileManager_3
	.export	_Method_P_Kernel_FileManager_4
	.export	_Method_P_Kernel_FileManager_5
	.export	_Method_P_Kernel_FileManager_6
	.export	_Method_P_Kernel_FileManager_7
	.export	_Method_P_Kernel_FileManager_8
! The following class and its methods are from this package
	.export	_P_Kernel_FileControlBlock
	.export	_Method_P_Kernel_FileControlBlock_1
	.export	_Method_P_Kernel_FileControlBlock_2
! The following class and its methods are from this package
	.export	_P_Kernel_OpenFile
	.export	_Method_P_Kernel_OpenFile_1
	.export	_Method_P_Kernel_OpenFile_2
	.export	_Method_P_Kernel_OpenFile_3
	.export	_Method_P_Kernel_OpenFile_4
! The following interfaces are from other packages
! The following interfaces are from this package
! Globals imported from other packages
	.import	_P_System_FatalError
! Global variables in this package
	.data
	.export	_P_Kernel_readyList
	.export	_P_Kernel_currentThread
	.export	_P_Kernel_mainThread
	.export	_P_Kernel_idleThread
	.export	_P_Kernel_threadsToBeDestroyed
	.export	_P_Kernel_currentInterruptStatus
	.export	_P_Kernel_processManager
	.export	_P_Kernel_threadManager
	.export	_P_Kernel_frameManager
	.export	_P_Kernel_diskDriver
	.export	_P_Kernel_fileManager
_P_Kernel_readyList:
	.skip	12
_P_Kernel_currentThread:
	.skip	4
_P_Kernel_mainThread:
	.skip	4164
_P_Kernel_idleThread:
	.skip	4164
_P_Kernel_threadsToBeDestroyed:
	.skip	12
_P_Kernel_currentInterruptStatus:
	.skip	4
_P_Kernel_processManager:
	.skip	1316
_P_Kernel_threadManager:
	.skip	41696
_P_Kernel_frameManager:
	.skip	56
_P_Kernel_diskDriver:
	.skip	68
_P_Kernel_fileManager:
	.skip	800
_Global_strBuffer:
! Static array
	.word	20		! number of elements
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.byte	32			! ' '
	.align
	.align
! String constants
_StringConst_213:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (3)\n"
	.align
_StringConst_212:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_211:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (2)\n"
	.align
_StringConst_210:
	.word	50			! length
	.ascii	"LoadExecutable: Problems reading from file (text)\n"
	.align
_StringConst_209:
	.word	60			! length
	.ascii	"LoadExecutable: Invalid file format - missing separator (1)\n"
	.align
_StringConst_208:
	.word	40			! length
	.ascii	"LoadExecutable: MAX_PAGES_PER_VIRT_SPACE"
	.align
_StringConst_207:
	.word	53			! length
	.ascii	"LoadExecutable: Number of pages in this address space"
	.align
_StringConst_206:
	.word	61			! length
	.ascii	"LoadExecutable: This virtual address space exceeds the limit\n"
	.align
_StringConst_205:
	.word	49			! length
	.ascii	"LoadExecutable: bssStart != dataStart + dataSize\n"
	.align
_StringConst_204:
	.word	65			! length
	.ascii	"LoadExecutable: The bss segment size not a multiple of page size\n"
	.align
_StringConst_203:
	.word	50			! length
	.ascii	"LoadExecutable: dataStart != textStart + textSize\n"
	.align
_StringConst_202:
	.word	66			! length
	.ascii	"LoadExecutable: The data segment size not a multiple of page size\n"
	.align
_StringConst_201:
	.word	95			! length
	.ascii	"LoadExecutable: The environment size does not match the \'loadAddr\' info supplied to the linker\n"
	.align
_StringConst_200:
	.word	66			! length
	.ascii	"LoadExecutable: The text segment size not a multiple of page size\n"
	.align
_StringConst_199:
	.word	33			! length
	.ascii	"LoadExecutable: Bad magic number\n"
	.align
_StringConst_198:
	.word	55			! length
	.ascii	"LoadExecutable: This virtual address space is not empty"
	.align
_StringConst_197:
	.word	32			! length
	.ascii	"Within ReadInt: ReadBytes failed"
	.align
_StringConst_196:
	.word	5			! length
	.ascii	"null\n"
	.align
_StringConst_195:
	.word	6			! length
	.ascii	", fcb="
	.align
_StringConst_194:
	.word	28			! length
	.ascii	"    OPEN FILE:   currentPos="
	.align
_StringConst_193:
	.word	26			! length
	.ascii	",  relativeSectorInBuffer="
	.align
_StringConst_192:
	.word	13			! length
	.ascii	",  bufferPtr="
	.align
_StringConst_191:
	.word	21			! length
	.ascii	",  sizeOfFileInBytes="
	.align
_StringConst_190:
	.word	18			! length
	.ascii	",  startingSector="
	.align
_StringConst_189:
	.word	17			! length
	.ascii	",  numberOfUsers="
	.align
_StringConst_188:
	.word	6			! length
	.ascii	"fcbID="
	.align
_StringConst_187:
	.word	48			! length
	.ascii	"FileManager.SynchWrite: file not properly opened"
	.align
_StringConst_186:
	.word	47			! length
	.ascii	"FileManager.SynchRead: file not properly opened"
	.align
_StringConst_185:
	.word	67			! length
	.ascii	"FileManager.Flush: buffer is dirty but relativeSectorInBuffer =  -1"
	.align
_StringConst_184:
	.word	72			! length
	.ascii	"In FileManager.Open: a free FCB appears not to have been closed properly"
	.align
_StringConst_183:
	.word	51			! length
	.ascii	"Magic number in sector 0 of stub file system is bad"
	.align
_StringConst_182:
	.word	36			! length
	.ascii	"Here is the FREE list of OpenFiles:\n"
	.align
_StringConst_181:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_180:
	.word	5			! length
	.ascii	":  0x"
	.align
_StringConst_179:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_178:
	.word	30			! length
	.ascii	"Here is the OpenFile table...\n"
	.align
_StringConst_177:
	.word	47			! length
	.ascii	"Here is the FREE list of FileControlBlocks:\n   "
	.align
_StringConst_176:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_175:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_174:
	.word	38			! length
	.ascii	"Here is the FileControlBlock table...\n"
	.align
_StringConst_173:
	.word	29			! length
	.ascii	"Initializing File Manager...\n"
	.align
_StringConst_172:
	.word	40			! length
	.ascii	"SynchWriteSector: Unexpected status code"
	.align
_StringConst_171:
	.word	52			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad command word"
	.align
_StringConst_170:
	.word	95			! length
	.ascii	"Disk I/O error in SynchWriteSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_169:
	.word	76			! length
	.ascii	"Disk I/O error in SynchWriteSector: Attempt to access invalid memory address"
	.align
_StringConst_168:
	.word	99			! length
	.ascii	"Disk I/O error in SynchWriteSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_167:
	.word	39			! length
	.ascii	"SynchReadSector: Unexpected status code"
	.align
_StringConst_166:
	.word	51			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad command word"
	.align
_StringConst_165:
	.word	94			! length
	.ascii	"Disk I/O error in SynchReadSector: Bad sectorAddr or sectorCount specifies non-existant sector"
	.align
_StringConst_164:
	.word	75			! length
	.ascii	"Disk I/O error in SynchReadSector: Attempt to access invalid memory address"
	.align
_StringConst_163:
	.word	98			! length
	.ascii	"Disk I/O error in SynchReadSector: Memory addr is not page-aligned or sector count is not positive"
	.align
_StringConst_162:
	.word	28			! length
	.ascii	"Initializing Disk Driver...\n"
	.align
_StringConst_161:
	.word	38			! length
	.ascii	"  Virtual page is not marked VALID!!!\n"
	.align
_StringConst_160:
	.word	38			! length
	.ascii	"  Virtual page number is too large!!!\n"
	.align
_StringConst_159:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_158:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_157:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_156:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_155:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_154:
	.word	9			! length
	.ascii	"         "
	.align
_StringConst_153:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_152:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_151:
	.word	6			! length
	.ascii	"      "
	.align
_StringConst_150:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_149:
	.word	3			! length
	.ascii	"YES"
	.align
_StringConst_148:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_147:
	.word	10			! length
	.ascii	"          "
	.align
_StringConst_146:
	.word	4			! length
	.ascii	"    "
	.align
_StringConst_145:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_144:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_143:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_142:
	.word	5			! length
	.ascii	"     "
	.align
_StringConst_141:
	.word	109			! length
	.ascii	"     ==========   ==========     ==========  ==========  ==============  =====  ==========  =========  =====\n"
	.align
_StringConst_140:
	.word	109			! length
	.ascii	"        addr        entry          Logical    Physical   Undefined Bits  Dirty  Referenced  Writeable  Valid\n"
	.align
_StringConst_139:
	.word	35			! length
	.ascii	"  Here are the frames in use: \n    "
	.align
_StringConst_138:
	.word	18			! length
	.ascii	"  numberFreeFrames"
	.align
_StringConst_137:
	.word	15			! length
	.ascii	"FRAME MANAGER:\n"
	.align
_StringConst_136:
	.word	89			! length
	.ascii	"Kernel code size appears to have grown too large and is overflowing into the frame region"
	.align
_StringConst_135:
	.word	30			! length
	.ascii	"Initializing Frame Manager...\n"
	.align
_StringConst_134:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_133:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_132:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_131:
	.word	50			! length
	.ascii	"Here is the FREE list of ProcessControlBlocks:\n   "
	.align
_StringConst_130:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_129:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_128:
	.word	29			! length
	.ascii	"Here is the process table...\n"
	.align
_StringConst_127:
	.word	13			! length
	.ascii	", exitStatus="
	.align
_StringConst_126:
	.word	13			! length
	.ascii	", parentsPid="
	.align
_StringConst_125:
	.word	33			! length
	.ascii	"Bad status in ProcessControlBlock"
	.align
_StringConst_124:
	.word	4			! length
	.ascii	"FREE"
	.align
_StringConst_123:
	.word	6			! length
	.ascii	"ZOMBIE"
	.align
_StringConst_122:
	.word	6			! length
	.ascii	"ACTIVE"
	.align
_StringConst_121:
	.word	9			! length
	.ascii	", status="
	.align
_StringConst_120:
	.word	8			! length
	.ascii	")   pid="
	.align
_StringConst_119:
	.word	30			! length
	.ascii	"  ProcessControlBlock   (addr="
	.align
_StringConst_118:
	.word	15			! length
	.ascii	"    myThread = "
	.align
_StringConst_117:
	.word	37			! length
	.ascii	"Here is the FREE list of Threads:\n   "
	.align
_StringConst_116:
	.word	1			! length
	.ascii	":"
	.align
_StringConst_115:
	.word	2			! length
	.ascii	"  "
	.align
_StringConst_114:
	.word	28			! length
	.ascii	"Here is the thread table...\n"
	.align
_StringConst_113:
	.word	8			! length
	.ascii	"Thread  "
	.align
_StringConst_112:
	.word	31			! length
	.ascii	"Initializing Thread Manager...\n"
	.align
_StringConst_111:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_110:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_109:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_108:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_107:
	.word	20			! length
	.ascii	"    user registers:\n"
	.align
_StringConst_106:
	.word	20			! length
	.ascii	"    is user thread: "
	.align
_StringConst_105:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_104:
	.word	20			! length
	.ascii	"    status = UNUSED\n"
	.align
_StringConst_103:
	.word	21			! length
	.ascii	"    status = BLOCKED\n"
	.align
_StringConst_102:
	.word	21			! length
	.ascii	"    status = RUNNING\n"
	.align
_StringConst_101:
	.word	19			! length
	.ascii	"    status = READY\n"
	.align
_StringConst_100:
	.word	26			! length
	.ascii	"    status = JUST_CREATED\n"
	.align
_StringConst_99:
	.word	23			! length
	.ascii	"    stack starting addr"
	.align
_StringConst_98:
	.word	12			! length
	.ascii	"    stackTop"
	.align
_StringConst_97:
	.word	1			! length
	.ascii	"\n"
	.align
_StringConst_96:
	.word	3			! length
	.ascii	"   "
	.align
_StringConst_95:
	.word	2			! length
	.ascii	": "
	.align
_StringConst_94:
	.word	7			! length
	.ascii	"      r"
	.align
_StringConst_93:
	.word	19			! length
	.ascii	"    machine state:\n"
	.align
_StringConst_92:
	.word	2			! length
	.ascii	")\n"
	.align
_StringConst_91:
	.word	29			! length
	.ascii	"\"    (addr of Thread object: "
	.align
_StringConst_90:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_89:
	.word	32			! length
	.ascii	"System stack underflow detected!"
	.align
_StringConst_88:
	.word	31			! length
	.ascii	"System stack overflow detected!"
	.align
_StringConst_87:
	.word	48			! length
	.ascii	"Ready list should always contain the idle thread"
	.align
_StringConst_86:
	.word	31			! length
	.ascii	"In Sleep, self != currentThread"
	.align
_StringConst_85:
	.word	44			! length
	.ascii	"In Sleep, currentInterruptStatus != DISABLED"
	.align
_StringConst_84:
	.word	51			! length
	.ascii	"Status of current thread should be READY or RUNNING"
	.align
_StringConst_83:
	.word	31			! length
	.ascii	"In Yield, self != currentThread"
	.align
_StringConst_82:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_81:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_80:
	.word	54			! length
	.ascii	"Attempt to broadcast a condition when lock is not held"
	.align
_StringConst_79:
	.word	52			! length
	.ascii	"Attempt to signal a condition when mutex is not held"
	.align
_StringConst_78:
	.word	51			! length
	.ascii	"Attempt to wait on condition when mutex is not held"
	.align
_StringConst_77:
	.word	52			! length
	.ascii	"Attempt to unlock a mutex by a thread not holding it"
	.align
_StringConst_76:
	.word	54			! length
	.ascii	"Attempt to lock a mutex by a thread already holding it"
	.align
_StringConst_75:
	.word	51			! length
	.ascii	"Semaphore count underflowed during \'Down\' operation"
	.align
_StringConst_74:
	.word	48			! length
	.ascii	"Semaphore count overflowed during \'Up\' operation"
	.align
_StringConst_73:
	.word	39			! length
	.ascii	"Semaphore created with initialCount < 0"
	.align
_StringConst_72:
	.word	25			! length
	.ascii	"!\tcannot load executable\n"
	.align
_StringConst_71:
	.word	23			! length
	.ascii	"!\tfile does not exitst\n"
	.align
_StringConst_70:
	.word	33			! length
	.ascii	"!\tcannot get string from virutal\n"
	.align
_StringConst_69:
	.word	11			! length
	.ascii	"UserProgram"
	.align
_StringConst_68:
	.word	25			! length
	.ascii	"error at loading the exec"
	.align
_StringConst_67:
	.word	12			! length
	.ascii	"TestProgram1"
	.align
_StringConst_66:
	.word	3			! length
	.ascii	":  "
	.align
_StringConst_65:
	.word	4			! length
	.ascii	"  0x"
	.align
_StringConst_64:
	.word	21			! length
	.ascii	"sys close file desc: "
	.align
_StringConst_63:
	.word	25			! length
	.ascii	"Handle_Sys_Close invoked!"
	.align
_StringConst_62:
	.word	23			! length
	.ascii	"sys seek new position: "
	.align
_StringConst_61:
	.word	20			! length
	.ascii	"sys seek file desc: "
	.align
_StringConst_60:
	.word	24			! length
	.ascii	"Handle_Sys_Seek invoked!"
	.align
_StringConst_59:
	.word	6			! length
	.ascii	"size: "
	.align
_StringConst_58:
	.word	24			! length
	.ascii	"buffer current content: "
	.align
_StringConst_57:
	.word	21			! length
	.ascii	"virt addr of buffer: "
	.align
_StringConst_56:
	.word	21			! length
	.ascii	"sys write file desc: "
	.align
_StringConst_55:
	.word	25			! length
	.ascii	"Handle_Sys_Write invoked!"
	.align
_StringConst_54:
	.word	13			! length
	.ascii	"\t read size: "
	.align
_StringConst_53:
	.word	23			! length
	.ascii	"\t virt addr of buffer: "
	.align
_StringConst_52:
	.word	13			! length
	.ascii	"\t file desc: "
	.align
_StringConst_51:
	.word	24			! length
	.ascii	"Handle_Sys_Read invoked!"
	.align
_StringConst_50:
	.word	12			! length
	.ascii	"\t filename: "
	.align
_StringConst_49:
	.word	25			! length
	.ascii	"\t virt addr of filename: "
	.align
_StringConst_48:
	.word	24			! length
	.ascii	"Handle_Sys_Open invoked!"
	.align
_StringConst_47:
	.word	12			! length
	.ascii	"\t filename: "
	.align
_StringConst_46:
	.word	25			! length
	.ascii	"\t virt addr of filename: "
	.align
_StringConst_45:
	.word	26			! length
	.ascii	"Handle_Sys_Create invoked!"
	.align
_StringConst_44:
	.word	13			! length
	.ascii	"! exec fail \n"
	.align
_StringConst_43:
	.word	24			! length
	.ascii	"Handle_Sys_Exec invoked!"
	.align
_StringConst_42:
	.word	13			! length
	.ascii	"\t ProcessID: "
	.align
_StringConst_41:
	.word	24			! length
	.ascii	"Handle_Sys_Join invoked!"
	.align
_StringConst_40:
	.word	24			! length
	.ascii	"Handle_Sys_Fork invoked!"
	.align
_StringConst_39:
	.word	25			! length
	.ascii	"Handle_Sys_Yield invoked!"
	.align
_StringConst_38:
	.word	47			! length
	.ascii	"Syscall \'Shutdown\' was invoked by a user thread"
	.align
_StringConst_37:
	.word	11			! length
	.ascii	"exit code: "
	.align
_StringConst_36:
	.word	24			! length
	.ascii	"Handle_Sys_Exit invoked!"
	.align
_StringConst_35:
	.word	37			! length
	.ascii	"Unknown syscall code from user thread"
	.align
_StringConst_34:
	.word	15			! length
	.ascii	"Syscall code = "
	.align
_StringConst_33:
	.word	42			! length
	.ascii	"  ERROR: currentThread.myProcess is null\n\n"
	.align
_StringConst_32:
	.word	14			! length
	.ascii	"  **********\n\n"
	.align
_StringConst_31:
	.word	13			! length
	.ascii	"\n**********  "
	.align
_StringConst_30:
	.word	62			! length
	.ascii	"An AlignmentException exception has occured while in user mode"
	.align
_StringConst_29:
	.word	64			! length
	.ascii	"A PrivilegedInstruction exception has occured while in user mode"
	.align
_StringConst_28:
	.word	64			! length
	.ascii	"A PageReadonlyException exception has occured while in user mode"
	.align
_StringConst_27:
	.word	63			! length
	.ascii	"A PageInvalidException exception has occured while in user mode"
	.align
_StringConst_26:
	.word	60			! length
	.ascii	"An AddressException exception has occured while in user mode"
	.align
_StringConst_25:
	.word	63			! length
	.ascii	"An ArithmeticException exception has occured while in user mode"
	.align
_StringConst_24:
	.word	62			! length
	.ascii	"An IllegalInstruction exception has occured while in user mode"
	.align
_StringConst_23:
	.word	32			! length
	.ascii	"ProcessFinish is not implemented"
	.align
_StringConst_22:
	.word	1			! length
	.ascii	")"
	.align
_StringConst_21:
	.word	28			! length
	.ascii	"    (addr of Thread object: "
	.align
_StringConst_20:
	.word	20			! length
	.ascii	"Bad status in Thread"
	.align
_StringConst_19:
	.word	6			! length
	.ascii	"UNUSED"
	.align
_StringConst_18:
	.word	7			! length
	.ascii	"BLOCKED"
	.align
_StringConst_17:
	.word	7			! length
	.ascii	"RUNNING"
	.align
_StringConst_16:
	.word	5			! length
	.ascii	"READY"
	.align
_StringConst_15:
	.word	12			! length
	.ascii	"JUST_CREATED"
	.align
_StringConst_14:
	.word	12			! length
	.ascii	"\"    status="
	.align
_StringConst_13:
	.word	10			! length
	.ascii	"  Thread \""
	.align
_StringConst_12:
	.word	5			! length
	.ascii	"NULL\n"
	.align
_StringConst_11:
	.word	92			! length
	.ascii	"(To find out where execution was when the problem arose, type \'st\' at the emulator prompt.)\n"
	.align
_StringConst_10:
	.word	19			! length
	.ascii	"\" -- TERMINATING!\n\n"
	.align
_StringConst_9:
	.word	3			! length
	.ascii	": \""
	.align
_StringConst_8:
	.word	4			! length
	.ascii	" in "
	.align
_StringConst_7:
	.word	12			! length
	.ascii	"\nFATAL ERROR"
	.align
_StringConst_6:
	.word	32			! length
	.ascii	"This thread will never run again"
	.align
_StringConst_5:
	.word	32			! length
	.ascii	"ThreadFinish should never return"
	.align
_StringConst_4:
	.word	24			! length
	.ascii	"Here is the ready list:\n"
	.align
_StringConst_3:
	.word	11			! length
	.ascii	"idle-thread"
	.align
_StringConst_2:
	.word	11			! length
	.ascii	"main-thread"
	.align
_StringConst_1:
	.word	33			! length
	.ascii	"Initializing Thread Scheduler...\n"
	.align
	.text
! 
! Source Filename and Package Name
! 
_sourceFileName:
	.ascii	"Kernel.c\0"
_packageName:
	.ascii	"Kernel\0"
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
_CheckVersion_P_Kernel_:
	.export	_CheckVersion_P_Kernel_
	set	0x7565bcba,r4		! myHashVal = 1969601722
	cmp	r3,r4
	be	_Label_223
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
_Label_223:
	mov	0,r1
! Make sure _P_System_ has hash value 0x9e9d23b6 (decimal -1633868874)
	set	_packageName,r2
	set	0x9e9d23b6,r3
	call	_CheckVersion_P_System_
	.import	_CheckVersion_P_System_
	cmp	r1,0
	bne	_Label_224
! Make sure _P_BitMap_ has hash value 0xa596b1b5 (decimal -1516850763)
	set	_packageName,r2
	set	0xa596b1b5,r3
	call	_CheckVersion_P_BitMap_
	.import	_CheckVersion_P_BitMap_
	cmp	r1,0
	bne	_Label_224
! Make sure _P_List_ has hash value 0xafebcabb (decimal -1343501637)
	set	_packageName,r2
	set	0xafebcabb,r3
	call	_CheckVersion_P_List_
	.import	_CheckVersion_P_List_
	cmp	r1,0
	bne	_Label_224
_Label_224:
	ret
_CVMess1:	.ascii	"\nVERSION CONSISTENCY ERROR: Package '\0"
_CVMess2:	.ascii	"' uses package '\0"
_CVMess3:	.ascii	"'.  Whenever a header file is modified, all packages that use that package (directly or indirectly) must be recompiled.  The header file for '\0"
_CVMess4:	.ascii	"' has been changed since '\0"
_CVMess5:	.ascii	"' was compiled last.  Please recompile all packages that depend on '\0"
_CVMess6:	.ascii	"'.\n\n\0"
	.align
! 
! ===============  FUNCTION InitializeScheduler  ===============
! 
_P_Kernel_InitializeScheduler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitializeScheduler,r1
	push	r1
	mov	16,r1
_Label_3033:
	push	r0
	sub	r1,1,r1
	bne	_Label_3033
	mov	7,r13		! source line 7
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	14,r13		! source line 14
	mov	"\0\0CE",r10
	call	Cleari
! CALL STATEMENT...
!   _temp_225 = _StringConst_1
	set	_StringConst_1,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_225  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	15,r13		! source line 15
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	16,r13		! source line 16
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_readyList = zeros  (sizeInBytes=12)
	set	_P_Kernel_readyList,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_readyList = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_readyList,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	17,r13		! source line 17
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_threadsToBeDestroyed = zeros  (sizeInBytes=12)
	set	_P_Kernel_threadsToBeDestroyed,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   _P_Kernel_threadsToBeDestroyed = _P_List_List
	set	_P_List_List,r1
	set	_P_Kernel_threadsToBeDestroyed,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	18,r13		! source line 18
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_mainThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_mainThread,r4
	mov	1041,r3
_Label_3034:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3034
!   _P_Kernel_mainThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_mainThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	19,r13		! source line 19
	mov	"\0\0SE",r10
!   _temp_229 = _StringConst_2
	set	_StringConst_2,r1
	store	r1,[r14+-44]
!   _temp_230 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_229  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	20,r13		! source line 20
	mov	"\0\0AS",r10
!   _temp_231 = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	store	r1,[r14+-36]
!   _temp_232 = _temp_231 + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_232 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	21,r13		! source line 21
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: _P_Kernel_idleThread = zeros  (sizeInBytes=4164)
	set	_P_Kernel_idleThread,r4
	mov	1041,r3
_Label_3035:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3035
!   _P_Kernel_idleThread = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	set	_P_Kernel_idleThread,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	22,r13		! source line 22
	mov	"\0\0SE",r10
!   _temp_234 = _StringConst_3
	set	_StringConst_3,r1
	store	r1,[r14+-24]
!   _temp_235 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_234  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	23,r13		! source line 23
	mov	"\0\0SE",r10
!   _temp_236 = _function_222_IdleFunction
	set	_function_222_IdleFunction,r1
	store	r1,[r14+-16]
!   _temp_237 = &_P_Kernel_idleThread
	set	_P_Kernel_idleThread,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_236  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	24,r13		! source line 24
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = &_P_Kernel_mainThread
	set	_P_Kernel_mainThread,r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	25,r13		! source line 25
	mov	"\0\0AS",r10
!   _P_System_FatalError = _P_Kernel_FatalError_ThreadVersion
	set	_P_Kernel_FatalError_ThreadVersion,r1
	set	_P_System_FatalError,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	26,r13		! source line 26
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	27,r13		! source line 27
	mov	"\0\0CE",r10
	call	Seti
! RETURN STATEMENT...
	mov	27,r13		! source line 27
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitializeScheduler:
	.word	_sourceFileName
	.word	_Label_238
	.word	0		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_239
	.word	-12
	.word	4
	.word	_Label_240
	.word	-16
	.word	4
	.word	_Label_241
	.word	-20
	.word	4
	.word	_Label_242
	.word	-24
	.word	4
	.word	_Label_243
	.word	-28
	.word	4
	.word	_Label_244
	.word	-32
	.word	4
	.word	_Label_245
	.word	-36
	.word	4
	.word	_Label_246
	.word	-40
	.word	4
	.word	_Label_247
	.word	-44
	.word	4
	.word	_Label_248
	.word	-48
	.word	4
	.word	_Label_249
	.word	-52
	.word	4
	.word	_Label_250
	.word	-56
	.word	4
	.word	_Label_251
	.word	-60
	.word	4
	.word	0
_Label_238:
	.ascii	"InitializeScheduler\0"
	.align
_Label_239:
	.byte	'?'
	.ascii	"_temp_237\0"
	.align
_Label_240:
	.byte	'?'
	.ascii	"_temp_236\0"
	.align
_Label_241:
	.byte	'?'
	.ascii	"_temp_235\0"
	.align
_Label_242:
	.byte	'?'
	.ascii	"_temp_234\0"
	.align
_Label_243:
	.byte	'?'
	.ascii	"_temp_233\0"
	.align
_Label_244:
	.byte	'?'
	.ascii	"_temp_232\0"
	.align
_Label_245:
	.byte	'?'
	.ascii	"_temp_231\0"
	.align
_Label_246:
	.byte	'?'
	.ascii	"_temp_230\0"
	.align
_Label_247:
	.byte	'?'
	.ascii	"_temp_229\0"
	.align
_Label_248:
	.byte	'?'
	.ascii	"_temp_228\0"
	.align
_Label_249:
	.byte	'?'
	.ascii	"_temp_227\0"
	.align
_Label_250:
	.byte	'?'
	.ascii	"_temp_226\0"
	.align
_Label_251:
	.byte	'?'
	.ascii	"_temp_225\0"
	.align
! 
! ===============  FUNCTION IdleFunction  ===============
! 
_function_222_IdleFunction:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_222_IdleFunction,r1
	push	r1
	mov	3,r1
_Label_3036:
	push	r0
	sub	r1,1,r1
	bne	_Label_3036
	mov	32,r13		! source line 32
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! WHILE STATEMENT...
	mov	42,r13		! source line 42
	mov	"\0\0WH",r10
_Label_252:
!	jmp	_Label_253
_Label_253:
	mov	42,r13		! source line 42
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	43,r13		! source line 43
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	43,r13		! source line 43
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-16]
! IF STATEMENT...
	mov	44,r13		! source line 44
	mov	"\0\0IF",r10
	mov	44,r13		! source line 44
	mov	"\0\0SE",r10
!   _temp_257 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Send message IsEmpty
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_255 else goto _Label_256
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_256
	jmp	_Label_255
_Label_255:
! THEN...
	mov	45,r13		! source line 45
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   Call the function
	mov	45,r13		! source line 45
	mov	"\0\0CE",r10
	call	Wait
	jmp	_Label_258
_Label_256:
! ELSE...
	mov	47,r13		! source line 47
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	47,r13		! source line 47
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
! END IF...
_Label_258:
! END WHILE...
	jmp	_Label_252
_Label_254:
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_222_IdleFunction:
	.word	_sourceFileName
	.word	_Label_259
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_260
	.word	8
	.word	4
	.word	_Label_261
	.word	-12
	.word	4
	.word	_Label_262
	.word	-16
	.word	4
	.word	0
_Label_259:
	.ascii	"IdleFunction\0"
	.align
_Label_260:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_261:
	.byte	'?'
	.ascii	"_temp_257\0"
	.align
_Label_262:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION Run  ===============
! 
_P_Kernel_Run:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Run,r1
	push	r1
	mov	20,r1
_Label_3037:
	push	r0
	sub	r1,1,r1
	bne	_Label_3037
	mov	54,r13		! source line 54
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	67,r13		! source line 67
	mov	"\0\0AS",r10
!   prevThread = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r14+-76]
! SEND STATEMENT...
	mov	68,r13		! source line 68
	mov	"\0\0SE",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message CheckOverflow
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	70,r13		! source line 70
	mov	"\0\0IF",r10
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_265 = prevThread + 4092
	load	[r14+-76],r1
	add	r1,4092,r1
	store	r1,[r14+-72]
!   if boolIsZero (_temp_265 ) then goto _Label_264		(int)
	load	[r14+-72],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_264
!	jmp	_Label_263
_Label_263:
! THEN...
	mov	71,r13		! source line 71
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (prevThread) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_267 = prevThread + 4096
	load	[r14+-76],r1
	add	r1,4096,r1
	store	r1,[r14+-64]
!   Move address of _temp_267 [0 ] into _temp_268
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-64],r1
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
	store	r2,[r14+-60]
!   _temp_266 = _temp_268		(4 bytes)
	load	[r14+-60],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_266  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	71,r13		! source line 71
	mov	"\0\0CE",r10
	call	SaveUserRegs
! END IF...
_Label_264:
! ASSIGNMENT STATEMENT...
	mov	73,r13		! source line 73
	mov	"\0\0AS",r10
!   _P_Kernel_currentThread = nextThread		(4 bytes)
	load	[r14+8],r1
	set	_P_Kernel_currentThread,r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	74,r13		! source line 74
	mov	"\0\0AS",r10
!   if intIsZero (nextThread) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_269 = nextThread + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-56]
!   Data Move: *_temp_269 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-56],r2
	store	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=prevThread  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=nextThread  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+4]
!   Call the function
	mov	80,r13		! source line 80
	mov	"\0\0CE",r10
	call	Switch
! WHILE STATEMENT...
	mov	84,r13		! source line 84
	mov	"\0\0WH",r10
_Label_270:
	mov	84,r13		! source line 84
	mov	"\0\0SE",r10
!   _temp_274 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-52]
!   Send message IsEmpty
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_273  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_273 then goto _Label_272 else goto _Label_271
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_271
	jmp	_Label_272
_Label_271:
	mov	84,r13		! source line 84
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	85,r13		! source line 85
	mov	"\0\0AS",r10
	mov	85,r13		! source line 85
	mov	"\0\0SE",r10
!   _temp_275 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-48]
!   Send message Remove
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! SEND STATEMENT...
	mov	86,r13		! source line 86
	mov	"\0\0SE",r10
!   _temp_276 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message FreeThread
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END WHILE...
	jmp	_Label_270
_Label_272:
! IF STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_279 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-40]
!   if boolIsZero (_temp_279 ) then goto _Label_278		(int)
	load	[r14+-40],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_278
!	jmp	_Label_277
_Label_277:
! THEN...
	mov	90,r13		! source line 90
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_281 = _P_Kernel_currentThread + 4096
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4096,r1
	store	r1,[r14+-32]
!   Move address of _temp_281 [0 ] into _temp_282
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_280 = _temp_282		(4 bytes)
	load	[r14+-28],r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_280  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	90,r13		! source line 90
	mov	"\0\0CE",r10
	call	RestoreUserRegs
! SEND STATEMENT...
	mov	91,r13		! source line 91
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_284 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_283 = *_temp_284  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_283) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_285 = _temp_283 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! END IF...
_Label_278:
! RETURN STATEMENT...
	mov	89,r13		! source line 89
	mov	"\0\0RE",r10
	add	r15,84,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Run:
	.word	_sourceFileName
	.word	_Label_286
	.word	4		! total size of parameters
	.word	80		! frame size = 80
	.word	_Label_287
	.word	8
	.word	4
	.word	_Label_288
	.word	-16
	.word	4
	.word	_Label_289
	.word	-20
	.word	4
	.word	_Label_290
	.word	-24
	.word	4
	.word	_Label_291
	.word	-28
	.word	4
	.word	_Label_292
	.word	-32
	.word	4
	.word	_Label_293
	.word	-36
	.word	4
	.word	_Label_294
	.word	-40
	.word	4
	.word	_Label_295
	.word	-44
	.word	4
	.word	_Label_296
	.word	-48
	.word	4
	.word	_Label_297
	.word	-52
	.word	4
	.word	_Label_298
	.word	-9
	.word	1
	.word	_Label_299
	.word	-56
	.word	4
	.word	_Label_300
	.word	-60
	.word	4
	.word	_Label_301
	.word	-64
	.word	4
	.word	_Label_302
	.word	-68
	.word	4
	.word	_Label_303
	.word	-72
	.word	4
	.word	_Label_304
	.word	-76
	.word	4
	.word	_Label_305
	.word	-80
	.word	4
	.word	0
_Label_286:
	.ascii	"Run\0"
	.align
_Label_287:
	.byte	'P'
	.ascii	"nextThread\0"
	.align
_Label_288:
	.byte	'?'
	.ascii	"_temp_285\0"
	.align
_Label_289:
	.byte	'?'
	.ascii	"_temp_284\0"
	.align
_Label_290:
	.byte	'?'
	.ascii	"_temp_283\0"
	.align
_Label_291:
	.byte	'?'
	.ascii	"_temp_282\0"
	.align
_Label_292:
	.byte	'?'
	.ascii	"_temp_281\0"
	.align
_Label_293:
	.byte	'?'
	.ascii	"_temp_280\0"
	.align
_Label_294:
	.byte	'?'
	.ascii	"_temp_279\0"
	.align
_Label_295:
	.byte	'?'
	.ascii	"_temp_276\0"
	.align
_Label_296:
	.byte	'?'
	.ascii	"_temp_275\0"
	.align
_Label_297:
	.byte	'?'
	.ascii	"_temp_274\0"
	.align
_Label_298:
	.byte	'C'
	.ascii	"_temp_273\0"
	.align
_Label_299:
	.byte	'?'
	.ascii	"_temp_269\0"
	.align
_Label_300:
	.byte	'?'
	.ascii	"_temp_268\0"
	.align
_Label_301:
	.byte	'?'
	.ascii	"_temp_267\0"
	.align
_Label_302:
	.byte	'?'
	.ascii	"_temp_266\0"
	.align
_Label_303:
	.byte	'?'
	.ascii	"_temp_265\0"
	.align
_Label_304:
	.byte	'P'
	.ascii	"prevThread\0"
	.align
_Label_305:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION PrintReadyList  ===============
! 
_P_Kernel_PrintReadyList:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrintReadyList,r1
	push	r1
	mov	6,r1
_Label_3038:
	push	r0
	sub	r1,1,r1
	bne	_Label_3038
	mov	97,r13		! source line 97
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	104,r13		! source line 104
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	104,r13		! source line 104
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! CALL STATEMENT...
!   _temp_306 = _StringConst_4
	set	_StringConst_4,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_306  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	105,r13		! source line 105
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	106,r13		! source line 106
	mov	"\0\0SE",r10
!   _temp_307 = _function_221_ThreadPrintShort
	set	_function_221_ThreadPrintShort,r1
	store	r1,[r14+-16]
!   _temp_308 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_307  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	107,r13		! source line 107
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	107,r13		! source line 107
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrintReadyList:
	.word	_sourceFileName
	.word	_Label_309
	.word	0		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_310
	.word	-12
	.word	4
	.word	_Label_311
	.word	-16
	.word	4
	.word	_Label_312
	.word	-20
	.word	4
	.word	_Label_313
	.word	-24
	.word	4
	.word	0
_Label_309:
	.ascii	"PrintReadyList\0"
	.align
_Label_310:
	.byte	'?'
	.ascii	"_temp_308\0"
	.align
_Label_311:
	.byte	'?'
	.ascii	"_temp_307\0"
	.align
_Label_312:
	.byte	'?'
	.ascii	"_temp_306\0"
	.align
_Label_313:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION ThreadStartMain  ===============
! 
_P_Kernel_ThreadStartMain:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadStartMain,r1
	push	r1
	mov	7,r1
_Label_3039:
	push	r0
	sub	r1,1,r1
	bne	_Label_3039
	mov	112,r13		! source line 112
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	124,r13		! source line 124
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+0]
!   Call the function
	mov	124,r13		! source line 124
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	125,r13		! source line 125
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_314 = _P_Kernel_currentThread + 80
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,80,r1
	store	r1,[r14+-24]
!   Data Move: mainFun = *_temp_314  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_316 = _P_Kernel_currentThread + 84
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,84,r1
	store	r1,[r14+-16]
!   Data Move: _temp_315 = *_temp_316  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_315  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable mainFun
	mov	126,r13		! source line 126
	mov	"\0\0CF",r10
	load	[r14+-32],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CALL STATEMENT...
!   Call the function
	mov	127,r13		! source line 127
	mov	"\0\0CA",r10
	call	_P_Kernel_ThreadFinish
! CALL STATEMENT...
!   _temp_317 = _StringConst_5
	set	_StringConst_5,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_317  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	128,r13		! source line 128
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	128,r13		! source line 128
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadStartMain:
	.word	_sourceFileName
	.word	_Label_318
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_319
	.word	-12
	.word	4
	.word	_Label_320
	.word	-16
	.word	4
	.word	_Label_321
	.word	-20
	.word	4
	.word	_Label_322
	.word	-24
	.word	4
	.word	_Label_323
	.word	-28
	.word	4
	.word	_Label_324
	.word	-32
	.word	4
	.word	0
_Label_318:
	.ascii	"ThreadStartMain\0"
	.align
_Label_319:
	.byte	'?'
	.ascii	"_temp_317\0"
	.align
_Label_320:
	.byte	'?'
	.ascii	"_temp_316\0"
	.align
_Label_321:
	.byte	'?'
	.ascii	"_temp_315\0"
	.align
_Label_322:
	.byte	'?'
	.ascii	"_temp_314\0"
	.align
_Label_323:
	.byte	'I'
	.ascii	"junk\0"
	.align
_Label_324:
	.byte	'P'
	.ascii	"mainFun\0"
	.align
! 
! ===============  FUNCTION ThreadFinish  ===============
! 
_P_Kernel_ThreadFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ThreadFinish,r1
	push	r1
	mov	5,r1
_Label_3040:
	push	r0
	sub	r1,1,r1
	bne	_Label_3040
	mov	133,r13		! source line 133
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	144,r13		! source line 144
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	144,r13		! source line 144
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! SEND STATEMENT...
	mov	148,r13		! source line 148
	mov	"\0\0SE",r10
!   _temp_325 = &_P_Kernel_threadsToBeDestroyed
	set	_P_Kernel_threadsToBeDestroyed,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	149,r13		! source line 149
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! CALL STATEMENT...
!   _temp_326 = _StringConst_6
	set	_StringConst_6,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_326  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	151,r13		! source line 151
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	151,r13		! source line 151
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ThreadFinish:
	.word	_sourceFileName
	.word	_Label_327
	.word	0		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_328
	.word	-12
	.word	4
	.word	_Label_329
	.word	-16
	.word	4
	.word	_Label_330
	.word	-20
	.word	4
	.word	0
_Label_327:
	.ascii	"ThreadFinish\0"
	.align
_Label_328:
	.byte	'?'
	.ascii	"_temp_326\0"
	.align
_Label_329:
	.byte	'?'
	.ascii	"_temp_325\0"
	.align
_Label_330:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION FatalError_ThreadVersion  ===============
! 
_P_Kernel_FatalError_ThreadVersion:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion,r1
	push	r1
	mov	9,r1
_Label_3041:
	push	r0
	sub	r1,1,r1
	bne	_Label_3041
	mov	156,r13		! source line 156
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	164,r13		! source line 164
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	164,r13		! source line 164
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! CALL STATEMENT...
!   _temp_331 = _StringConst_7
	set	_StringConst_7,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_331  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	165,r13		! source line 165
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	166,r13		! source line 166
	mov	"\0\0IF",r10
!   if _P_Kernel_currentThread == 0 then goto _Label_333		(int)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_333
!	jmp	_Label_332
_Label_332:
! THEN...
	mov	167,r13		! source line 167
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_334 = _StringConst_8
	set	_StringConst_8,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_334  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	167,r13		! source line 167
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_336 = _P_Kernel_currentThread + 72
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,72,r1
	store	r1,[r14+-24]
!   Data Move: _temp_335 = *_temp_336  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_335  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	168,r13		! source line 168
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_333:
! CALL STATEMENT...
!   _temp_337 = _StringConst_9
	set	_StringConst_9,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_337  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	170,r13		! source line 170
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	171,r13		! source line 171
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_338 = _StringConst_10
	set	_StringConst_10,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_338  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	172,r13		! source line 172
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_339 = _StringConst_11
	set	_StringConst_11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_339  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	173,r13		! source line 173
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	174,r13		! source line 174
	mov	"\0\0CE",r10
	call	RuntimeExit
! RETURN STATEMENT...
	mov	174,r13		! source line 174
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_FatalError_ThreadVersion:
	.word	_sourceFileName
	.word	_Label_340
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_341
	.word	8
	.word	4
	.word	_Label_342
	.word	-12
	.word	4
	.word	_Label_343
	.word	-16
	.word	4
	.word	_Label_344
	.word	-20
	.word	4
	.word	_Label_345
	.word	-24
	.word	4
	.word	_Label_346
	.word	-28
	.word	4
	.word	_Label_347
	.word	-32
	.word	4
	.word	_Label_348
	.word	-36
	.word	4
	.word	_Label_349
	.word	-40
	.word	4
	.word	0
_Label_340:
	.ascii	"FatalError_ThreadVersion\0"
	.align
_Label_341:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_342:
	.byte	'?'
	.ascii	"_temp_339\0"
	.align
_Label_343:
	.byte	'?'
	.ascii	"_temp_338\0"
	.align
_Label_344:
	.byte	'?'
	.ascii	"_temp_337\0"
	.align
_Label_345:
	.byte	'?'
	.ascii	"_temp_336\0"
	.align
_Label_346:
	.byte	'?'
	.ascii	"_temp_335\0"
	.align
_Label_347:
	.byte	'?'
	.ascii	"_temp_334\0"
	.align
_Label_348:
	.byte	'?'
	.ascii	"_temp_331\0"
	.align
_Label_349:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  FUNCTION SetInterruptsTo  ===============
! 
_P_Kernel_SetInterruptsTo:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SetInterruptsTo,r1
	push	r1
	mov	1,r1
_Label_3042:
	push	r0
	sub	r1,1,r1
	bne	_Label_3042
	mov	179,r13		! source line 179
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   Call the function
	mov	192,r13		! source line 192
	mov	"\0\0CE",r10
	call	Cleari
! ASSIGNMENT STATEMENT...
	mov	193,r13		! source line 193
	mov	"\0\0AS",r10
!   oldStat = _P_Kernel_currentInterruptStatus		(4 bytes)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	store	r1,[r14+-12]
! IF STATEMENT...
	mov	194,r13		! source line 194
	mov	"\0\0IF",r10
!   if newStatus != 1 then goto _Label_351		(int)
	load	[r14+8],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_351
!	jmp	_Label_350
_Label_350:
! THEN...
	mov	195,r13		! source line 195
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	195,r13		! source line 195
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	196,r13		! source line 196
	mov	"\0\0CE",r10
	call	Seti
	jmp	_Label_352
_Label_351:
! ELSE...
	mov	198,r13		! source line 198
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	198,r13		! source line 198
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   Call the function
	mov	199,r13		! source line 199
	mov	"\0\0CE",r10
	call	Cleari
! END IF...
_Label_352:
! RETURN STATEMENT...
	mov	201,r13		! source line 201
	mov	"\0\0RE",r10
!   ReturnResult: oldStat  (sizeInBytes=4)
	load	[r14+-12],r1
	store	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SetInterruptsTo:
	.word	_sourceFileName
	.word	_Label_353
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_354
	.word	8
	.word	4
	.word	_Label_355
	.word	-12
	.word	4
	.word	0
_Label_353:
	.ascii	"SetInterruptsTo\0"
	.align
_Label_354:
	.byte	'I'
	.ascii	"newStatus\0"
	.align
_Label_355:
	.byte	'I'
	.ascii	"oldStat\0"
	.align
! 
! ===============  FUNCTION ThreadPrintShort  ===============
! 
_function_221_ThreadPrintShort:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_221_ThreadPrintShort,r1
	push	r1
	mov	19,r1
_Label_3043:
	push	r0
	sub	r1,1,r1
	bne	_Label_3043
	mov	753,r13		! source line 753
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! oldStatus
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	760,r13		! source line 760
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! IF STATEMENT...
	mov	761,r13		! source line 761
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_359		(int)
	load	[r14+8],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_359
!   _temp_358 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_360
_Label_359:
!   _temp_358 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_360:
!   if _temp_358 then goto _Label_357 else goto _Label_356
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_356
	jmp	_Label_357
_Label_356:
! THEN...
	mov	762,r13		! source line 762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_361 = _StringConst_12
	set	_StringConst_12,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_361  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	762,r13		! source line 762
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	763,r13		! source line 763
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_357:
! CALL STATEMENT...
!   _temp_362 = _StringConst_13
	set	_StringConst_13,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_362  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	765,r13		! source line 765
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_364 = t + 72
	load	[r14+8],r1
	add	r1,72,r1
	store	r1,[r14+-64]
!   Data Move: _temp_363 = *_temp_364  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_363  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	766,r13		! source line 766
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_365 = _StringConst_14
	set	_StringConst_14,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_365  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	767,r13		! source line 767
	mov	"\0\0CE",r10
	call	print
! SWITCH STATEMENT (using series of tests)...
	mov	768,r13		! source line 768
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_374 = t + 76
	load	[r14+8],r1
	add	r1,76,r1
	store	r1,[r14+-52]
!   Data Move: _temp_373 = *_temp_374  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   Branch to the right case label
	load	[r14+-56],r1
	cmp	r1,1
	be	_Label_368
	cmp	r1,2
	be	_Label_369
	cmp	r1,3
	be	_Label_370
	cmp	r1,4
	be	_Label_371
	cmp	r1,5
	be	_Label_372
	jmp	_Label_366
! CASE 1...
_Label_368:
! CALL STATEMENT...
!   _temp_375 = _StringConst_15
	set	_StringConst_15,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_375  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	770,r13		! source line 770
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	771,r13		! source line 771
	mov	"\0\0BR",r10
	jmp	_Label_367
! CASE 2...
_Label_369:
! CALL STATEMENT...
!   _temp_376 = _StringConst_16
	set	_StringConst_16,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_376  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	773,r13		! source line 773
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	774,r13		! source line 774
	mov	"\0\0BR",r10
	jmp	_Label_367
! CASE 3...
_Label_370:
! CALL STATEMENT...
!   _temp_377 = _StringConst_17
	set	_StringConst_17,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_377  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	776,r13		! source line 776
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	777,r13		! source line 777
	mov	"\0\0BR",r10
	jmp	_Label_367
! CASE 4...
_Label_371:
! CALL STATEMENT...
!   _temp_378 = _StringConst_18
	set	_StringConst_18,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_378  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	779,r13		! source line 779
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	780,r13		! source line 780
	mov	"\0\0BR",r10
	jmp	_Label_367
! CASE 5...
_Label_372:
! CALL STATEMENT...
!   _temp_379 = _StringConst_19
	set	_StringConst_19,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_379  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	782,r13		! source line 782
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	783,r13		! source line 783
	mov	"\0\0BR",r10
	jmp	_Label_367
! DEFAULT CASE...
_Label_366:
! CALL STATEMENT...
!   _temp_380 = _StringConst_20
	set	_StringConst_20,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_380  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	785,r13		! source line 785
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_367:
! CALL STATEMENT...
!   _temp_381 = _StringConst_21
	set	_StringConst_21,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_381  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	787,r13		! source line 787
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_382 = t		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_382  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	788,r13		! source line 788
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_383 = _StringConst_22
	set	_StringConst_22,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_383  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	789,r13		! source line 789
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	790,r13		! source line 790
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	792,r13		! source line 792
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! RETURN STATEMENT...
	mov	792,r13		! source line 792
	mov	"\0\0RE",r10
	add	r15,80,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_221_ThreadPrintShort:
	.word	_sourceFileName
	.word	_Label_384
	.word	4		! total size of parameters
	.word	76		! frame size = 76
	.word	_Label_385
	.word	8
	.word	4
	.word	_Label_386
	.word	-16
	.word	4
	.word	_Label_387
	.word	-20
	.word	4
	.word	_Label_388
	.word	-24
	.word	4
	.word	_Label_389
	.word	-28
	.word	4
	.word	_Label_390
	.word	-32
	.word	4
	.word	_Label_391
	.word	-36
	.word	4
	.word	_Label_392
	.word	-40
	.word	4
	.word	_Label_393
	.word	-44
	.word	4
	.word	_Label_394
	.word	-48
	.word	4
	.word	_Label_395
	.word	-52
	.word	4
	.word	_Label_396
	.word	-56
	.word	4
	.word	_Label_397
	.word	-60
	.word	4
	.word	_Label_398
	.word	-64
	.word	4
	.word	_Label_399
	.word	-68
	.word	4
	.word	_Label_400
	.word	-72
	.word	4
	.word	_Label_401
	.word	-76
	.word	4
	.word	_Label_402
	.word	-9
	.word	1
	.word	_Label_403
	.word	-80
	.word	4
	.word	0
_Label_384:
	.ascii	"ThreadPrintShort\0"
	.align
_Label_385:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_386:
	.byte	'?'
	.ascii	"_temp_383\0"
	.align
_Label_387:
	.byte	'?'
	.ascii	"_temp_382\0"
	.align
_Label_388:
	.byte	'?'
	.ascii	"_temp_381\0"
	.align
_Label_389:
	.byte	'?'
	.ascii	"_temp_380\0"
	.align
_Label_390:
	.byte	'?'
	.ascii	"_temp_379\0"
	.align
_Label_391:
	.byte	'?'
	.ascii	"_temp_378\0"
	.align
_Label_392:
	.byte	'?'
	.ascii	"_temp_377\0"
	.align
_Label_393:
	.byte	'?'
	.ascii	"_temp_376\0"
	.align
_Label_394:
	.byte	'?'
	.ascii	"_temp_375\0"
	.align
_Label_395:
	.byte	'?'
	.ascii	"_temp_374\0"
	.align
_Label_396:
	.byte	'?'
	.ascii	"_temp_373\0"
	.align
_Label_397:
	.byte	'?'
	.ascii	"_temp_365\0"
	.align
_Label_398:
	.byte	'?'
	.ascii	"_temp_364\0"
	.align
_Label_399:
	.byte	'?'
	.ascii	"_temp_363\0"
	.align
_Label_400:
	.byte	'?'
	.ascii	"_temp_362\0"
	.align
_Label_401:
	.byte	'?'
	.ascii	"_temp_361\0"
	.align
_Label_402:
	.byte	'C'
	.ascii	"_temp_358\0"
	.align
_Label_403:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  FUNCTION PrintObjectAddr  ===============
! 
_function_220_PrintObjectAddr:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_220_PrintObjectAddr,r1
	push	r1
	mov	2,r1
_Label_3044:
	push	r0
	sub	r1,1,r1
	bne	_Label_3044
	mov	1072,r13		! source line 1072
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_404 = p		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_404  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1076,r13		! source line 1076
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	1077,r13		! source line 1077
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	1077,r13		! source line 1077
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_220_PrintObjectAddr:
	.word	_sourceFileName
	.word	_Label_405
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_406
	.word	8
	.word	4
	.word	_Label_407
	.word	-12
	.word	4
	.word	0
_Label_405:
	.ascii	"PrintObjectAddr\0"
	.align
_Label_406:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_407:
	.byte	'?'
	.ascii	"_temp_404\0"
	.align
! 
! ===============  FUNCTION ProcessFinish  ===============
! 
_P_Kernel_ProcessFinish:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ProcessFinish,r1
	push	r1
	mov	2,r1
_Label_3045:
	push	r0
	sub	r1,1,r1
	bne	_Label_3045
	mov	1082,r13		! source line 1082
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_408 = _StringConst_23
	set	_StringConst_23,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_408  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1088,r13		! source line 1088
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1088,r13		! source line 1088
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ProcessFinish:
	.word	_sourceFileName
	.word	_Label_409
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_410
	.word	8
	.word	4
	.word	_Label_411
	.word	-12
	.word	4
	.word	0
_Label_409:
	.ascii	"ProcessFinish\0"
	.align
_Label_410:
	.byte	'I'
	.ascii	"exitStatus\0"
	.align
_Label_411:
	.byte	'?'
	.ascii	"_temp_408\0"
	.align
! 
! ===============  FUNCTION TimerInterruptHandler  ===============
! 
_P_Kernel_TimerInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_TimerInterruptHandler,r1
	push	r1
	mov	1,r1
_Label_3046:
	push	r0
	sub	r1,1,r1
	bne	_Label_3046
	mov	1600,r13		! source line 1600
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1610,r13		! source line 1610
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1612,r13		! source line 1612
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
! ASSIGNMENT STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 1		(4 bytes)
	mov	1,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1613,r13		! source line 1613
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_TimerInterruptHandler:
	.word	_sourceFileName
	.word	_Label_412
	.word	0		! total size of parameters
	.word	4		! frame size = 4
	.word	0
_Label_412:
	.ascii	"TimerInterruptHandler\0"
	.align
! 
! ===============  FUNCTION DiskInterruptHandler  ===============
! 
_P_Kernel_DiskInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_DiskInterruptHandler,r1
	push	r1
	mov	7,r1
_Label_3047:
	push	r0
	sub	r1,1,r1
	bne	_Label_3047
	mov	1618,r13		! source line 1618
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1628,r13		! source line 1628
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! IF STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0IF",r10
!   _temp_416 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   _temp_417 = _temp_416 + 24
	load	[r14+-28],r1
	add	r1,24,r1
	store	r1,[r14+-24]
!   Data Move: _temp_415 = *_temp_417  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_415 == 0 then goto _Label_414		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_414
!	jmp	_Label_413
_Label_413:
! THEN...
	mov	1631,r13		! source line 1631
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1631,r13		! source line 1631
	mov	"\0\0SE",r10
!   _temp_419 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-16]
!   _temp_420 = _temp_419 + 24
	load	[r14+-16],r1
	add	r1,24,r1
	store	r1,[r14+-12]
!   Data Move: _temp_418 = *_temp_420  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_418) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Up
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! END IF...
_Label_414:
! RETURN STATEMENT...
	mov	1630,r13		! source line 1630
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_DiskInterruptHandler:
	.word	_sourceFileName
	.word	_Label_421
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_422
	.word	-12
	.word	4
	.word	_Label_423
	.word	-16
	.word	4
	.word	_Label_424
	.word	-20
	.word	4
	.word	_Label_425
	.word	-24
	.word	4
	.word	_Label_426
	.word	-28
	.word	4
	.word	_Label_427
	.word	-32
	.word	4
	.word	0
_Label_421:
	.ascii	"DiskInterruptHandler\0"
	.align
_Label_422:
	.byte	'?'
	.ascii	"_temp_420\0"
	.align
_Label_423:
	.byte	'?'
	.ascii	"_temp_419\0"
	.align
_Label_424:
	.byte	'?'
	.ascii	"_temp_418\0"
	.align
_Label_425:
	.byte	'?'
	.ascii	"_temp_417\0"
	.align
_Label_426:
	.byte	'?'
	.ascii	"_temp_416\0"
	.align
_Label_427:
	.byte	'?'
	.ascii	"_temp_415\0"
	.align
! 
! ===============  FUNCTION SerialInterruptHandler  ===============
! 
_P_Kernel_SerialInterruptHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SerialInterruptHandler,r1
	push	r1
	mov	1638,r13		! source line 1638
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1647,r13		! source line 1647
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SerialInterruptHandler:
	.word	_sourceFileName
	.word	_Label_428
	.word	0		! total size of parameters
	.word	0		! frame size = 0
	.word	0
_Label_428:
	.ascii	"SerialInterruptHandler\0"
	.align
! 
! ===============  FUNCTION IllegalInstructionHandler  ===============
! 
_P_Kernel_IllegalInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_IllegalInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3048:
	push	r0
	sub	r1,1,r1
	bne	_Label_3048
	mov	1652,r13		! source line 1652
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1658,r13		! source line 1658
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_429 = _StringConst_24
	set	_StringConst_24,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_429  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1659,r13		! source line 1659
	mov	"\0\0CA",r10
	call	_function_219_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1659,r13		! source line 1659
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_IllegalInstructionHandler:
	.word	_sourceFileName
	.word	_Label_430
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_431
	.word	-12
	.word	4
	.word	0
_Label_430:
	.ascii	"IllegalInstructionHandler\0"
	.align
_Label_431:
	.byte	'?'
	.ascii	"_temp_429\0"
	.align
! 
! ===============  FUNCTION ArithmeticExceptionHandler  ===============
! 
_P_Kernel_ArithmeticExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3049:
	push	r0
	sub	r1,1,r1
	bne	_Label_3049
	mov	1664,r13		! source line 1664
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1670,r13		! source line 1670
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_432 = _StringConst_25
	set	_StringConst_25,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_432  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1671,r13		! source line 1671
	mov	"\0\0CA",r10
	call	_function_219_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1671,r13		! source line 1671
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_ArithmeticExceptionHandler:
	.word	_sourceFileName
	.word	_Label_433
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_434
	.word	-12
	.word	4
	.word	0
_Label_433:
	.ascii	"ArithmeticExceptionHandler\0"
	.align
_Label_434:
	.byte	'?'
	.ascii	"_temp_432\0"
	.align
! 
! ===============  FUNCTION AddressExceptionHandler  ===============
! 
_P_Kernel_AddressExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AddressExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3050:
	push	r0
	sub	r1,1,r1
	bne	_Label_3050
	mov	1676,r13		! source line 1676
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1682,r13		! source line 1682
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_435 = _StringConst_26
	set	_StringConst_26,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_435  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1683,r13		! source line 1683
	mov	"\0\0CA",r10
	call	_function_219_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1683,r13		! source line 1683
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AddressExceptionHandler:
	.word	_sourceFileName
	.word	_Label_436
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_437
	.word	-12
	.word	4
	.word	0
_Label_436:
	.ascii	"AddressExceptionHandler\0"
	.align
_Label_437:
	.byte	'?'
	.ascii	"_temp_435\0"
	.align
! 
! ===============  FUNCTION PageInvalidExceptionHandler  ===============
! 
_P_Kernel_PageInvalidExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3051:
	push	r0
	sub	r1,1,r1
	bne	_Label_3051
	mov	1688,r13		! source line 1688
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1694,r13		! source line 1694
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_438 = _StringConst_27
	set	_StringConst_27,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_438  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1695,r13		! source line 1695
	mov	"\0\0CA",r10
	call	_function_219_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1695,r13		! source line 1695
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageInvalidExceptionHandler:
	.word	_sourceFileName
	.word	_Label_439
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_440
	.word	-12
	.word	4
	.word	0
_Label_439:
	.ascii	"PageInvalidExceptionHandler\0"
	.align
_Label_440:
	.byte	'?'
	.ascii	"_temp_438\0"
	.align
! 
! ===============  FUNCTION PageReadonlyExceptionHandler  ===============
! 
_P_Kernel_PageReadonlyExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3052:
	push	r0
	sub	r1,1,r1
	bne	_Label_3052
	mov	1700,r13		! source line 1700
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1706,r13		! source line 1706
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_441 = _StringConst_28
	set	_StringConst_28,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_441  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1707,r13		! source line 1707
	mov	"\0\0CA",r10
	call	_function_219_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1707,r13		! source line 1707
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PageReadonlyExceptionHandler:
	.word	_sourceFileName
	.word	_Label_442
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_443
	.word	-12
	.word	4
	.word	0
_Label_442:
	.ascii	"PageReadonlyExceptionHandler\0"
	.align
_Label_443:
	.byte	'?'
	.ascii	"_temp_441\0"
	.align
! 
! ===============  FUNCTION PrivilegedInstructionHandler  ===============
! 
_P_Kernel_PrivilegedInstructionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler,r1
	push	r1
	mov	2,r1
_Label_3053:
	push	r0
	sub	r1,1,r1
	bne	_Label_3053
	mov	1712,r13		! source line 1712
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1718,r13		! source line 1718
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_444 = _StringConst_29
	set	_StringConst_29,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_444  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1719,r13		! source line 1719
	mov	"\0\0CA",r10
	call	_function_219_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1719,r13		! source line 1719
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_PrivilegedInstructionHandler:
	.word	_sourceFileName
	.word	_Label_445
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_446
	.word	-12
	.word	4
	.word	0
_Label_445:
	.ascii	"PrivilegedInstructionHandler\0"
	.align
_Label_446:
	.byte	'?'
	.ascii	"_temp_444\0"
	.align
! 
! ===============  FUNCTION AlignmentExceptionHandler  ===============
! 
_P_Kernel_AlignmentExceptionHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler,r1
	push	r1
	mov	2,r1
_Label_3054:
	push	r0
	sub	r1,1,r1
	bne	_Label_3054
	mov	1724,r13		! source line 1724
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1730,r13		! source line 1730
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! CALL STATEMENT...
!   _temp_447 = _StringConst_30
	set	_StringConst_30,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_447  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1731,r13		! source line 1731
	mov	"\0\0CA",r10
	call	_function_219_ErrorInUserProcess
! RETURN STATEMENT...
	mov	1731,r13		! source line 1731
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_AlignmentExceptionHandler:
	.word	_sourceFileName
	.word	_Label_448
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_449
	.word	-12
	.word	4
	.word	0
_Label_448:
	.ascii	"AlignmentExceptionHandler\0"
	.align
_Label_449:
	.byte	'?'
	.ascii	"_temp_447\0"
	.align
! 
! ===============  FUNCTION ErrorInUserProcess  ===============
! 
_function_219_ErrorInUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_219_ErrorInUserProcess,r1
	push	r1
	mov	8,r1
_Label_3055:
	push	r0
	sub	r1,1,r1
	bne	_Label_3055
	mov	1736,r13		! source line 1736
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_450 = _StringConst_31
	set	_StringConst_31,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_450  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1741,r13		! source line 1741
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=errorMessage  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1742,r13		! source line 1742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_451 = _StringConst_32
	set	_StringConst_32,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_451  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1743,r13		! source line 1743
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1746,r13		! source line 1746
	mov	"\0\0IF",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_455 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_454 = *_temp_455  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if _temp_454 == 0 then goto _Label_453		(int)
	load	[r14+-28],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_453
!	jmp	_Label_452
_Label_452:
! THEN...
	mov	1747,r13		! source line 1747
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	1747,r13		! source line 1747
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_457 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-16]
!   Data Move: _temp_456 = *_temp_457  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_456) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_458
_Label_453:
! ELSE...
	mov	1749,r13		! source line 1749
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_459 = _StringConst_33
	set	_StringConst_33,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_459  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1749,r13		! source line 1749
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_458:
! SEND STATEMENT...
	mov	1751,r13		! source line 1751
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=-1  sizeInBytes=4
	mov	-1,r1
	store	r1,[r15+0]
!   Call the function
	mov	1757,r13		! source line 1757
	mov	"\0\0CA",r10
	call	_P_Kernel_ProcessFinish
! RETURN STATEMENT...
	mov	1757,r13		! source line 1757
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_219_ErrorInUserProcess:
	.word	_sourceFileName
	.word	_Label_460
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_461
	.word	8
	.word	4
	.word	_Label_462
	.word	-12
	.word	4
	.word	_Label_463
	.word	-16
	.word	4
	.word	_Label_464
	.word	-20
	.word	4
	.word	_Label_465
	.word	-24
	.word	4
	.word	_Label_466
	.word	-28
	.word	4
	.word	_Label_467
	.word	-32
	.word	4
	.word	_Label_468
	.word	-36
	.word	4
	.word	0
_Label_460:
	.ascii	"ErrorInUserProcess\0"
	.align
_Label_461:
	.byte	'P'
	.ascii	"errorMessage\0"
	.align
_Label_462:
	.byte	'?'
	.ascii	"_temp_459\0"
	.align
_Label_463:
	.byte	'?'
	.ascii	"_temp_457\0"
	.align
_Label_464:
	.byte	'?'
	.ascii	"_temp_456\0"
	.align
_Label_465:
	.byte	'?'
	.ascii	"_temp_455\0"
	.align
_Label_466:
	.byte	'?'
	.ascii	"_temp_454\0"
	.align
_Label_467:
	.byte	'?'
	.ascii	"_temp_451\0"
	.align
_Label_468:
	.byte	'?'
	.ascii	"_temp_450\0"
	.align
! 
! ===============  FUNCTION SyscallTrapHandler  ===============
! 
_P_Kernel_SyscallTrapHandler:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_SyscallTrapHandler,r1
	push	r1
	mov	13,r1
_Label_3056:
	push	r0
	sub	r1,1,r1
	bne	_Label_3056
	mov	1762,r13		! source line 1762
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1769,r13		! source line 1769
	mov	"\0\0AS",r10
!   _P_Kernel_currentInterruptStatus = 2		(4 bytes)
	mov	2,r1
	set	_P_Kernel_currentInterruptStatus,r2
	store	r1,[r2]
! SWITCH STATEMENT (using an indirect jump table)...
	mov	1783,r13		! source line 1783
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
	load	[r14+8],r1
!   If syscallCodeNum is not within 16-bits goto default code
	srl	r1,15,r2
	cmp	r2,0
	be	_Label_3057
	set	0x1ffff,r3
	cmp	r2,r3
	bne	_Label_469
_Label_3057:
!   If syscallCodeNum is < 1 (==smallestCaseValue) goto default code
	cmp	r1,1
	bl	_Label_469
!   If syscallCodeNum is > 12 (==greatestCaseValue) goto default code
	cmp	r1,12
	bg	_Label_469
!   r1 = (r1-lowValue) * 4 + jumpTableAddr
	sub	r1,1,r1
	sll	r1,2,r1
	set	_Label_483,r2
	add	r1,r2,r1
!   Jump indirect through the jump table
	jmp	r1
!   Jump table
_Label_483:
	jmp	_Label_475	! 1:	
	jmp	_Label_482	! 2:	
	jmp	_Label_472	! 3:	
	jmp	_Label_471	! 4:	
	jmp	_Label_474	! 5:	
	jmp	_Label_473	! 6:	
	jmp	_Label_476	! 7:	
	jmp	_Label_477	! 8:	
	jmp	_Label_478	! 9:	
	jmp	_Label_479	! 10:	
	jmp	_Label_480	! 11:	
	jmp	_Label_481	! 12:	
! CASE 4...
_Label_471:
! RETURN STATEMENT...
	mov	1785,r13		! source line 1785
	mov	"\0\0RE",r10
!   Call the function
	mov	1785,r13		! source line 1785
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Fork
!   Retrieve Result: targetName=_temp_484  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-48]
!   ReturnResult: _temp_484  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 3...
_Label_472:
! CALL STATEMENT...
!   Call the function
	mov	1787,r13		! source line 1787
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Yield
! RETURN STATEMENT...
	mov	1788,r13		! source line 1788
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 6...
_Label_473:
! RETURN STATEMENT...
	mov	1790,r13		! source line 1790
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1790,r13		! source line 1790
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exec
!   Retrieve Result: targetName=_temp_485  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
!   ReturnResult: _temp_485  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 5...
_Label_474:
! RETURN STATEMENT...
	mov	1792,r13		! source line 1792
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1792,r13		! source line 1792
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Join
!   Retrieve Result: targetName=_temp_486  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   ReturnResult: _temp_486  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 1...
_Label_475:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1794,r13		! source line 1794
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Exit
! RETURN STATEMENT...
	mov	1795,r13		! source line 1795
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 7...
_Label_476:
! RETURN STATEMENT...
	mov	1797,r13		! source line 1797
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1797,r13		! source line 1797
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Create
!   Retrieve Result: targetName=_temp_487  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
!   ReturnResult: _temp_487  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 8...
_Label_477:
! RETURN STATEMENT...
	mov	1799,r13		! source line 1799
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1799,r13		! source line 1799
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Open
!   Retrieve Result: targetName=_temp_488  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
!   ReturnResult: _temp_488  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 9...
_Label_478:
! RETURN STATEMENT...
	mov	1801,r13		! source line 1801
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1801,r13		! source line 1801
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Read
!   Retrieve Result: targetName=_temp_489  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_489  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 10...
_Label_479:
! RETURN STATEMENT...
	mov	1803,r13		! source line 1803
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=arg3  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+8]
!   Call the function
	mov	1803,r13		! source line 1803
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Write
!   Retrieve Result: targetName=_temp_490  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_490  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 11...
_Label_480:
! RETURN STATEMENT...
	mov	1805,r13		! source line 1805
	mov	"\0\0RE",r10
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=arg2  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1805,r13		! source line 1805
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Seek
!   Retrieve Result: targetName=_temp_491  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   ReturnResult: _temp_491  (sizeInBytes=4)
	load	[r14+-20],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 12...
_Label_481:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=arg1  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1807,r13		! source line 1807
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Close
! RETURN STATEMENT...
	mov	1808,r13		! source line 1808
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_482:
! CALL STATEMENT...
!   Call the function
	mov	1810,r13		! source line 1810
	mov	"\0\0CA",r10
	call	_P_Kernel_Handle_Sys_Shutdown
! RETURN STATEMENT...
	mov	1811,r13		! source line 1811
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! DEFAULT CASE...
_Label_469:
! CALL STATEMENT...
!   _temp_492 = _StringConst_34
	set	_StringConst_34,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_492  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1813,r13		! source line 1813
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=syscallCodeNum  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1814,r13		! source line 1814
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1815,r13		! source line 1815
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_493 = _StringConst_35
	set	_StringConst_35,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_493  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1816,r13		! source line 1816
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_470:
! RETURN STATEMENT...
	mov	1818,r13		! source line 1818
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_SyscallTrapHandler:
	.word	_sourceFileName
	.word	_Label_494
	.word	20		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_495
	.word	8
	.word	4
	.word	_Label_496
	.word	12
	.word	4
	.word	_Label_497
	.word	16
	.word	4
	.word	_Label_498
	.word	20
	.word	4
	.word	_Label_499
	.word	24
	.word	4
	.word	_Label_500
	.word	-12
	.word	4
	.word	_Label_501
	.word	-16
	.word	4
	.word	_Label_502
	.word	-20
	.word	4
	.word	_Label_503
	.word	-24
	.word	4
	.word	_Label_504
	.word	-28
	.word	4
	.word	_Label_505
	.word	-32
	.word	4
	.word	_Label_506
	.word	-36
	.word	4
	.word	_Label_507
	.word	-40
	.word	4
	.word	_Label_508
	.word	-44
	.word	4
	.word	_Label_509
	.word	-48
	.word	4
	.word	0
_Label_494:
	.ascii	"SyscallTrapHandler\0"
	.align
_Label_495:
	.byte	'I'
	.ascii	"syscallCodeNum\0"
	.align
_Label_496:
	.byte	'I'
	.ascii	"arg1\0"
	.align
_Label_497:
	.byte	'I'
	.ascii	"arg2\0"
	.align
_Label_498:
	.byte	'I'
	.ascii	"arg3\0"
	.align
_Label_499:
	.byte	'I'
	.ascii	"arg4\0"
	.align
_Label_500:
	.byte	'?'
	.ascii	"_temp_493\0"
	.align
_Label_501:
	.byte	'?'
	.ascii	"_temp_492\0"
	.align
_Label_502:
	.byte	'?'
	.ascii	"_temp_491\0"
	.align
_Label_503:
	.byte	'?'
	.ascii	"_temp_490\0"
	.align
_Label_504:
	.byte	'?'
	.ascii	"_temp_489\0"
	.align
_Label_505:
	.byte	'?'
	.ascii	"_temp_488\0"
	.align
_Label_506:
	.byte	'?'
	.ascii	"_temp_487\0"
	.align
_Label_507:
	.byte	'?'
	.ascii	"_temp_486\0"
	.align
_Label_508:
	.byte	'?'
	.ascii	"_temp_485\0"
	.align
_Label_509:
	.byte	'?'
	.ascii	"_temp_484\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exit  ===============
! 
_P_Kernel_Handle_Sys_Exit:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exit,r1
	push	r1
	mov	3,r1
_Label_3058:
	push	r0
	sub	r1,1,r1
	bne	_Label_3058
	mov	1823,r13		! source line 1823
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_510 = _StringConst_36
	set	_StringConst_36,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_510  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1825,r13		! source line 1825
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1826,r13		! source line 1826
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_511 = _StringConst_37
	set	_StringConst_37,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_511  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1827,r13		! source line 1827
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=returnStatus  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1828,r13		! source line 1828
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1829,r13		! source line 1829
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1829,r13		! source line 1829
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exit:
	.word	_sourceFileName
	.word	_Label_512
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_513
	.word	8
	.word	4
	.word	_Label_514
	.word	-12
	.word	4
	.word	_Label_515
	.word	-16
	.word	4
	.word	0
_Label_512:
	.ascii	"Handle_Sys_Exit\0"
	.align
_Label_513:
	.byte	'I'
	.ascii	"returnStatus\0"
	.align
_Label_514:
	.byte	'?'
	.ascii	"_temp_511\0"
	.align
_Label_515:
	.byte	'?'
	.ascii	"_temp_510\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Shutdown  ===============
! 
_P_Kernel_Handle_Sys_Shutdown:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown,r1
	push	r1
	mov	2,r1
_Label_3059:
	push	r0
	sub	r1,1,r1
	bne	_Label_3059
	mov	1834,r13		! source line 1834
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_516 = _StringConst_38
	set	_StringConst_38,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_516  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1835,r13		! source line 1835
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! RETURN STATEMENT...
	mov	1835,r13		! source line 1835
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Shutdown:
	.word	_sourceFileName
	.word	_Label_517
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_518
	.word	-12
	.word	4
	.word	0
_Label_517:
	.ascii	"Handle_Sys_Shutdown\0"
	.align
_Label_518:
	.byte	'?'
	.ascii	"_temp_516\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Yield  ===============
! 
_P_Kernel_Handle_Sys_Yield:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Yield,r1
	push	r1
	mov	2,r1
_Label_3060:
	push	r0
	sub	r1,1,r1
	bne	_Label_3060
	mov	1840,r13		! source line 1840
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_519 = _StringConst_39
	set	_StringConst_39,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_519  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1842,r13		! source line 1842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1843,r13		! source line 1843
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1843,r13		! source line 1843
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Yield:
	.word	_sourceFileName
	.word	_Label_520
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_521
	.word	-12
	.word	4
	.word	0
_Label_520:
	.ascii	"Handle_Sys_Yield\0"
	.align
_Label_521:
	.byte	'?'
	.ascii	"_temp_519\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Fork  ===============
! 
_P_Kernel_Handle_Sys_Fork:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Fork,r1
	push	r1
	mov	2,r1
_Label_3061:
	push	r0
	sub	r1,1,r1
	bne	_Label_3061
	mov	1848,r13		! source line 1848
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_522 = _StringConst_40
	set	_StringConst_40,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_522  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1850,r13		! source line 1850
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1851,r13		! source line 1851
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1852,r13		! source line 1852
	mov	"\0\0RE",r10
!   ReturnResult: 1000  (sizeInBytes=4)
	mov	1000,r1
	store	r1,[r14+8]
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Fork:
	.word	_sourceFileName
	.word	_Label_523
	.word	0		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_524
	.word	-12
	.word	4
	.word	0
_Label_523:
	.ascii	"Handle_Sys_Fork\0"
	.align
_Label_524:
	.byte	'?'
	.ascii	"_temp_522\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Join  ===============
! 
_P_Kernel_Handle_Sys_Join:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Join,r1
	push	r1
	mov	3,r1
_Label_3062:
	push	r0
	sub	r1,1,r1
	bne	_Label_3062
	mov	1857,r13		! source line 1857
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_525 = _StringConst_41
	set	_StringConst_41,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_525  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1859,r13		! source line 1859
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1860,r13		! source line 1860
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_526 = _StringConst_42
	set	_StringConst_42,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_526  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1861,r13		! source line 1861
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=processID  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1862,r13		! source line 1862
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1863,r13		! source line 1863
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1864,r13		! source line 1864
	mov	"\0\0RE",r10
!   ReturnResult: 2000  (sizeInBytes=4)
	mov	2000,r1
	store	r1,[r14+8]
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Join:
	.word	_sourceFileName
	.word	_Label_527
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_528
	.word	8
	.word	4
	.word	_Label_529
	.word	-12
	.word	4
	.word	_Label_530
	.word	-16
	.word	4
	.word	0
_Label_527:
	.ascii	"Handle_Sys_Join\0"
	.align
_Label_528:
	.byte	'I'
	.ascii	"processID\0"
	.align
_Label_529:
	.byte	'?'
	.ascii	"_temp_526\0"
	.align
_Label_530:
	.byte	'?'
	.ascii	"_temp_525\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Exec  ===============
! 
_P_Kernel_Handle_Sys_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Exec,r1
	push	r1
	mov	4,r1
_Label_3063:
	push	r0
	sub	r1,1,r1
	bne	_Label_3063
	mov	1869,r13		! source line 1869
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_531 = _StringConst_43
	set	_StringConst_43,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_531  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1872,r13		! source line 1872
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1873,r13		! source line 1873
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1885,r13		! source line 1885
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=filename  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1885,r13		! source line 1885
	mov	"\0\0CA",r10
	call	_function_214_Exec
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	1886,r13		! source line 1886
	mov	"\0\0IF",r10
!   if i != -1 then goto _Label_533		(int)
	load	[r14+-20],r1
	mov	-1,r2
	cmp	r1,r2
	bne	_Label_533
!	jmp	_Label_532
_Label_532:
! THEN...
	mov	1887,r13		! source line 1887
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_534 = _StringConst_44
	set	_StringConst_44,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_534  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1887,r13		! source line 1887
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1888,r13		! source line 1888
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_533:
! RETURN STATEMENT...
	mov	1890,r13		! source line 1890
	mov	"\0\0RE",r10
!   ReturnResult: 3000  (sizeInBytes=4)
	mov	3000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Exec:
	.word	_sourceFileName
	.word	_Label_535
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_536
	.word	8
	.word	4
	.word	_Label_537
	.word	-12
	.word	4
	.word	_Label_538
	.word	-16
	.word	4
	.word	_Label_539
	.word	-20
	.word	4
	.word	0
_Label_535:
	.ascii	"Handle_Sys_Exec\0"
	.align
_Label_536:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_537:
	.byte	'?'
	.ascii	"_temp_534\0"
	.align
_Label_538:
	.byte	'?'
	.ascii	"_temp_531\0"
	.align
_Label_539:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Create  ===============
! 
_P_Kernel_Handle_Sys_Create:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Create,r1
	push	r1
	mov	15,r1
_Label_3064:
	push	r0
	sub	r1,1,r1
	bne	_Label_3064
	mov	1895,r13		! source line 1895
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_540 = _StringConst_45
	set	_StringConst_45,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_540  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1898,r13		! source line 1898
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1899,r13		! source line 1899
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_541 = _StringConst_46
	set	_StringConst_46,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_541  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1900,r13		! source line 1900
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_542 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_542  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1901,r13		! source line 1901
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1902,r13		! source line 1902
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_543 = _StringConst_47
	set	_StringConst_47,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_543  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1903,r13		! source line 1903
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1904,r13		! source line 1904
	mov	"\0\0AS",r10
	mov	1904,r13		! source line 1904
	mov	"\0\0SE",r10
!   _temp_544 = &_Global_strBuffer
	set	_Global_strBuffer,r1
	store	r1,[r14+-32]
!   _temp_545 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_547 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_546 = *_temp_547  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_546) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_548 = _temp_546 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_544  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_545  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_549 = &_Global_strBuffer
	set	_Global_strBuffer,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_549  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1905,r13		! source line 1905
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1906,r13		! source line 1906
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1907,r13		! source line 1907
	mov	"\0\0RE",r10
!   ReturnResult: 4000  (sizeInBytes=4)
	mov	4000,r1
	store	r1,[r14+8]
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Create:
	.word	_sourceFileName
	.word	_Label_550
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_551
	.word	8
	.word	4
	.word	_Label_552
	.word	-12
	.word	4
	.word	_Label_553
	.word	-16
	.word	4
	.word	_Label_554
	.word	-20
	.word	4
	.word	_Label_555
	.word	-24
	.word	4
	.word	_Label_556
	.word	-28
	.word	4
	.word	_Label_557
	.word	-32
	.word	4
	.word	_Label_558
	.word	-36
	.word	4
	.word	_Label_559
	.word	-40
	.word	4
	.word	_Label_560
	.word	-44
	.word	4
	.word	_Label_561
	.word	-48
	.word	4
	.word	_Label_562
	.word	-52
	.word	4
	.word	0
_Label_550:
	.ascii	"Handle_Sys_Create\0"
	.align
_Label_551:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_552:
	.byte	'?'
	.ascii	"_temp_549\0"
	.align
_Label_553:
	.byte	'?'
	.ascii	"_temp_548\0"
	.align
_Label_554:
	.byte	'?'
	.ascii	"_temp_547\0"
	.align
_Label_555:
	.byte	'?'
	.ascii	"_temp_546\0"
	.align
_Label_556:
	.byte	'?'
	.ascii	"_temp_545\0"
	.align
_Label_557:
	.byte	'?'
	.ascii	"_temp_544\0"
	.align
_Label_558:
	.byte	'?'
	.ascii	"_temp_543\0"
	.align
_Label_559:
	.byte	'?'
	.ascii	"_temp_542\0"
	.align
_Label_560:
	.byte	'?'
	.ascii	"_temp_541\0"
	.align
_Label_561:
	.byte	'?'
	.ascii	"_temp_540\0"
	.align
_Label_562:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Open  ===============
! 
_P_Kernel_Handle_Sys_Open:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Open,r1
	push	r1
	mov	15,r1
_Label_3065:
	push	r0
	sub	r1,1,r1
	bne	_Label_3065
	mov	1912,r13		! source line 1912
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_563 = _StringConst_48
	set	_StringConst_48,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_563  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1915,r13		! source line 1915
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1916,r13		! source line 1916
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_564 = _StringConst_49
	set	_StringConst_49,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_564  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1917,r13		! source line 1917
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_565 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_565  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1918,r13		! source line 1918
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1919,r13		! source line 1919
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_566 = _StringConst_50
	set	_StringConst_50,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_566  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	1920,r13		! source line 1920
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1921,r13		! source line 1921
	mov	"\0\0AS",r10
	mov	1921,r13		! source line 1921
	mov	"\0\0SE",r10
!   _temp_567 = &_Global_strBuffer
	set	_Global_strBuffer,r1
	store	r1,[r14+-32]
!   _temp_568 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_570 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-20]
!   Data Move: _temp_569 = *_temp_570  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_569) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_571 = _temp_569 + 32
	load	[r14+-24],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_567  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_568  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_572 = &_Global_strBuffer
	set	_Global_strBuffer,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_572  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1922,r13		! source line 1922
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1923,r13		! source line 1923
	mov	"\0\0RE",r10
!   ReturnResult: 5000  (sizeInBytes=4)
	mov	5000,r1
	store	r1,[r14+8]
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Open:
	.word	_sourceFileName
	.word	_Label_573
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_574
	.word	8
	.word	4
	.word	_Label_575
	.word	-12
	.word	4
	.word	_Label_576
	.word	-16
	.word	4
	.word	_Label_577
	.word	-20
	.word	4
	.word	_Label_578
	.word	-24
	.word	4
	.word	_Label_579
	.word	-28
	.word	4
	.word	_Label_580
	.word	-32
	.word	4
	.word	_Label_581
	.word	-36
	.word	4
	.word	_Label_582
	.word	-40
	.word	4
	.word	_Label_583
	.word	-44
	.word	4
	.word	_Label_584
	.word	-48
	.word	4
	.word	_Label_585
	.word	-52
	.word	4
	.word	0
_Label_573:
	.ascii	"Handle_Sys_Open\0"
	.align
_Label_574:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_575:
	.byte	'?'
	.ascii	"_temp_572\0"
	.align
_Label_576:
	.byte	'?'
	.ascii	"_temp_571\0"
	.align
_Label_577:
	.byte	'?'
	.ascii	"_temp_570\0"
	.align
_Label_578:
	.byte	'?'
	.ascii	"_temp_569\0"
	.align
_Label_579:
	.byte	'?'
	.ascii	"_temp_568\0"
	.align
_Label_580:
	.byte	'?'
	.ascii	"_temp_567\0"
	.align
_Label_581:
	.byte	'?'
	.ascii	"_temp_566\0"
	.align
_Label_582:
	.byte	'?'
	.ascii	"_temp_565\0"
	.align
_Label_583:
	.byte	'?'
	.ascii	"_temp_564\0"
	.align
_Label_584:
	.byte	'?'
	.ascii	"_temp_563\0"
	.align
_Label_585:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Read  ===============
! 
_P_Kernel_Handle_Sys_Read:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Read,r1
	push	r1
	mov	6,r1
_Label_3066:
	push	r0
	sub	r1,1,r1
	bne	_Label_3066
	mov	1928,r13		! source line 1928
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_586 = _StringConst_51
	set	_StringConst_51,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_586  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1930,r13		! source line 1930
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1931,r13		! source line 1931
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_587 = _StringConst_52
	set	_StringConst_52,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_587  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1932,r13		! source line 1932
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1933,r13		! source line 1933
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1934,r13		! source line 1934
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_588 = _StringConst_53
	set	_StringConst_53,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_588  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1935,r13		! source line 1935
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_589 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_589  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1936,r13		! source line 1936
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1937,r13		! source line 1937
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_590 = _StringConst_54
	set	_StringConst_54,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_590  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1938,r13		! source line 1938
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1939,r13		! source line 1939
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1940,r13		! source line 1940
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1941,r13		! source line 1941
	mov	"\0\0RE",r10
!   ReturnResult: 6000  (sizeInBytes=4)
	mov	6000,r1
	store	r1,[r14+8]
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Read:
	.word	_sourceFileName
	.word	_Label_591
	.word	12		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_592
	.word	8
	.word	4
	.word	_Label_593
	.word	12
	.word	4
	.word	_Label_594
	.word	16
	.word	4
	.word	_Label_595
	.word	-12
	.word	4
	.word	_Label_596
	.word	-16
	.word	4
	.word	_Label_597
	.word	-20
	.word	4
	.word	_Label_598
	.word	-24
	.word	4
	.word	_Label_599
	.word	-28
	.word	4
	.word	0
_Label_591:
	.ascii	"Handle_Sys_Read\0"
	.align
_Label_592:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_593:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_594:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_595:
	.byte	'?'
	.ascii	"_temp_590\0"
	.align
_Label_596:
	.byte	'?'
	.ascii	"_temp_589\0"
	.align
_Label_597:
	.byte	'?'
	.ascii	"_temp_588\0"
	.align
_Label_598:
	.byte	'?'
	.ascii	"_temp_587\0"
	.align
_Label_599:
	.byte	'?'
	.ascii	"_temp_586\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Write  ===============
! 
_P_Kernel_Handle_Sys_Write:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Write,r1
	push	r1
	mov	17,r1
_Label_3067:
	push	r0
	sub	r1,1,r1
	bne	_Label_3067
	mov	1946,r13		! source line 1946
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_600 = _StringConst_55
	set	_StringConst_55,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_600  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1949,r13		! source line 1949
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1950,r13		! source line 1950
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_601 = _StringConst_56
	set	_StringConst_56,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_601  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1951,r13		! source line 1951
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1952,r13		! source line 1952
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1953,r13		! source line 1953
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_602 = _StringConst_57
	set	_StringConst_57,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_602  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1954,r13		! source line 1954
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_603 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_603  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1955,r13		! source line 1955
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   Call the function
	mov	1956,r13		! source line 1956
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_604 = _StringConst_58
	set	_StringConst_58,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_604  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1957,r13		! source line 1957
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1958,r13		! source line 1958
	mov	"\0\0AS",r10
	mov	1958,r13		! source line 1958
	mov	"\0\0SE",r10
!   _temp_605 = &_Global_strBuffer
	set	_Global_strBuffer,r1
	store	r1,[r14+-36]
!   _temp_606 = buffer		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-32]
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_608 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-24]
!   Data Move: _temp_607 = *_temp_608  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_607) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_609 = _temp_607 + 32
	load	[r14+-28],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=_temp_605  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_606  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_610 = &_Global_strBuffer
	set	_Global_strBuffer,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_610  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1959,r13		! source line 1959
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1960,r13		! source line 1960
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_611 = _StringConst_59
	set	_StringConst_59,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_611  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1961,r13		! source line 1961
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeInBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1962,r13		! source line 1962
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1963,r13		! source line 1963
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1964,r13		! source line 1964
	mov	"\0\0RE",r10
!   ReturnResult: 7000  (sizeInBytes=4)
	mov	7000,r1
	store	r1,[r14+8]
	add	r15,72,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Write:
	.word	_sourceFileName
	.word	_Label_612
	.word	12		! total size of parameters
	.word	68		! frame size = 68
	.word	_Label_613
	.word	8
	.word	4
	.word	_Label_614
	.word	12
	.word	4
	.word	_Label_615
	.word	16
	.word	4
	.word	_Label_616
	.word	-12
	.word	4
	.word	_Label_617
	.word	-16
	.word	4
	.word	_Label_618
	.word	-20
	.word	4
	.word	_Label_619
	.word	-24
	.word	4
	.word	_Label_620
	.word	-28
	.word	4
	.word	_Label_621
	.word	-32
	.word	4
	.word	_Label_622
	.word	-36
	.word	4
	.word	_Label_623
	.word	-40
	.word	4
	.word	_Label_624
	.word	-44
	.word	4
	.word	_Label_625
	.word	-48
	.word	4
	.word	_Label_626
	.word	-52
	.word	4
	.word	_Label_627
	.word	-56
	.word	4
	.word	_Label_628
	.word	-60
	.word	4
	.word	0
_Label_612:
	.ascii	"Handle_Sys_Write\0"
	.align
_Label_613:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_614:
	.byte	'P'
	.ascii	"buffer\0"
	.align
_Label_615:
	.byte	'I'
	.ascii	"sizeInBytes\0"
	.align
_Label_616:
	.byte	'?'
	.ascii	"_temp_611\0"
	.align
_Label_617:
	.byte	'?'
	.ascii	"_temp_610\0"
	.align
_Label_618:
	.byte	'?'
	.ascii	"_temp_609\0"
	.align
_Label_619:
	.byte	'?'
	.ascii	"_temp_608\0"
	.align
_Label_620:
	.byte	'?'
	.ascii	"_temp_607\0"
	.align
_Label_621:
	.byte	'?'
	.ascii	"_temp_606\0"
	.align
_Label_622:
	.byte	'?'
	.ascii	"_temp_605\0"
	.align
_Label_623:
	.byte	'?'
	.ascii	"_temp_604\0"
	.align
_Label_624:
	.byte	'?'
	.ascii	"_temp_603\0"
	.align
_Label_625:
	.byte	'?'
	.ascii	"_temp_602\0"
	.align
_Label_626:
	.byte	'?'
	.ascii	"_temp_601\0"
	.align
_Label_627:
	.byte	'?'
	.ascii	"_temp_600\0"
	.align
_Label_628:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Seek  ===============
! 
_P_Kernel_Handle_Sys_Seek:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Seek,r1
	push	r1
	mov	4,r1
_Label_3068:
	push	r0
	sub	r1,1,r1
	bne	_Label_3068
	mov	1969,r13		! source line 1969
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_629 = _StringConst_60
	set	_StringConst_60,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_629  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1971,r13		! source line 1971
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1972,r13		! source line 1972
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_630 = _StringConst_61
	set	_StringConst_61,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_630  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1973,r13		! source line 1973
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1974,r13		! source line 1974
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1975,r13		! source line 1975
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_631 = _StringConst_62
	set	_StringConst_62,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_631  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1976,r13		! source line 1976
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=newCurrentPos  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1977,r13		! source line 1977
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1978,r13		! source line 1978
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1979,r13		! source line 1979
	mov	"\0\0RE",r10
!   ReturnResult: 8000  (sizeInBytes=4)
	mov	8000,r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Seek:
	.word	_sourceFileName
	.word	_Label_632
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_633
	.word	8
	.word	4
	.word	_Label_634
	.word	12
	.word	4
	.word	_Label_635
	.word	-12
	.word	4
	.word	_Label_636
	.word	-16
	.word	4
	.word	_Label_637
	.word	-20
	.word	4
	.word	0
_Label_632:
	.ascii	"Handle_Sys_Seek\0"
	.align
_Label_633:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_634:
	.byte	'I'
	.ascii	"newCurrentPos\0"
	.align
_Label_635:
	.byte	'?'
	.ascii	"_temp_631\0"
	.align
_Label_636:
	.byte	'?'
	.ascii	"_temp_630\0"
	.align
_Label_637:
	.byte	'?'
	.ascii	"_temp_629\0"
	.align
! 
! ===============  FUNCTION Handle_Sys_Close  ===============
! 
_P_Kernel_Handle_Sys_Close:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_Handle_Sys_Close,r1
	push	r1
	mov	3,r1
_Label_3069:
	push	r0
	sub	r1,1,r1
	bne	_Label_3069
	mov	1984,r13		! source line 1984
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_638 = _StringConst_63
	set	_StringConst_63,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_638  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1986,r13		! source line 1986
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Call the function
	mov	1987,r13		! source line 1987
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_639 = _StringConst_64
	set	_StringConst_64,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_639  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1988,r13		! source line 1988
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fileDesc  sizeInBytes=4
	load	[r14+8],r1
	store	r1,[r15+0]
!   Call the function
	mov	1989,r13		! source line 1989
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	1990,r13		! source line 1990
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	1990,r13		! source line 1990
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_Handle_Sys_Close:
	.word	_sourceFileName
	.word	_Label_640
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_641
	.word	8
	.word	4
	.word	_Label_642
	.word	-12
	.word	4
	.word	_Label_643
	.word	-16
	.word	4
	.word	0
_Label_640:
	.ascii	"Handle_Sys_Close\0"
	.align
_Label_641:
	.byte	'I'
	.ascii	"fileDesc\0"
	.align
_Label_642:
	.byte	'?'
	.ascii	"_temp_639\0"
	.align
_Label_643:
	.byte	'?'
	.ascii	"_temp_638\0"
	.align
! 
! ===============  FUNCTION copyUnalignedWord  ===============
! 
_function_218_copyUnalignedWord:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_218_copyUnalignedWord,r1
	push	r1
	mov	9,r1
_Label_3070:
	push	r0
	sub	r1,1,r1
	bne	_Label_3070
	mov	2581,r13		! source line 2581
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2583,r13		! source line 2583
	mov	"\0\0AS",r10
!   from = fromPtr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2584,r13		! source line 2584
	mov	"\0\0AS",r10
!   dest = destPtr		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	2585,r13		! source line 2585
	mov	"\0\0AS",r10
!   if intIsZero (dest) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (from) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_644 = *from  (sizeInBytes=1)
	load	[r14+-40],r1
	loadb	[r1],r1
	storeb	r1,[r14+-12]
!   Data Move: *dest = _temp_644  (sizeInBytes=1)
	loadb	[r14+-12],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2586,r13		! source line 2586
	mov	"\0\0AS",r10
!   _temp_645 = dest + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
!   if intIsZero (_temp_645) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_647 = from + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   if intIsZero (_temp_647) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_646 = *_temp_647  (sizeInBytes=1)
	load	[r14+-32],r1
	loadb	[r1],r1
	storeb	r1,[r14+-11]
!   Data Move: *_temp_645 = _temp_646  (sizeInBytes=1)
	loadb	[r14+-11],r1
	load	[r14+-36],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2587,r13		! source line 2587
	mov	"\0\0AS",r10
!   _temp_648 = dest + 2		(int)
	load	[r14+-44],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   if intIsZero (_temp_648) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_650 = from + 2		(int)
	load	[r14+-40],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   if intIsZero (_temp_650) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_649 = *_temp_650  (sizeInBytes=1)
	load	[r14+-24],r1
	loadb	[r1],r1
	storeb	r1,[r14+-10]
!   Data Move: *_temp_648 = _temp_649  (sizeInBytes=1)
	loadb	[r14+-10],r1
	load	[r14+-28],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0AS",r10
!   _temp_651 = dest + 3		(int)
	load	[r14+-44],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   if intIsZero (_temp_651) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_653 = from + 3		(int)
	load	[r14+-40],r1
	mov	3,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
!   if intIsZero (_temp_653) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_652 = *_temp_653  (sizeInBytes=1)
	load	[r14+-16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_651 = _temp_652  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! RETURN STATEMENT...
	mov	2588,r13		! source line 2588
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_218_copyUnalignedWord:
	.word	_sourceFileName
	.word	_Label_654
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_655
	.word	8
	.word	4
	.word	_Label_656
	.word	12
	.word	4
	.word	_Label_657
	.word	-16
	.word	4
	.word	_Label_658
	.word	-9
	.word	1
	.word	_Label_659
	.word	-20
	.word	4
	.word	_Label_660
	.word	-24
	.word	4
	.word	_Label_661
	.word	-10
	.word	1
	.word	_Label_662
	.word	-28
	.word	4
	.word	_Label_663
	.word	-32
	.word	4
	.word	_Label_664
	.word	-11
	.word	1
	.word	_Label_665
	.word	-36
	.word	4
	.word	_Label_666
	.word	-12
	.word	1
	.word	_Label_667
	.word	-40
	.word	4
	.word	_Label_668
	.word	-44
	.word	4
	.word	0
_Label_654:
	.ascii	"copyUnalignedWord\0"
	.align
_Label_655:
	.byte	'P'
	.ascii	"destPtr\0"
	.align
_Label_656:
	.byte	'P'
	.ascii	"fromPtr\0"
	.align
_Label_657:
	.byte	'?'
	.ascii	"_temp_653\0"
	.align
_Label_658:
	.byte	'C'
	.ascii	"_temp_652\0"
	.align
_Label_659:
	.byte	'?'
	.ascii	"_temp_651\0"
	.align
_Label_660:
	.byte	'?'
	.ascii	"_temp_650\0"
	.align
_Label_661:
	.byte	'C'
	.ascii	"_temp_649\0"
	.align
_Label_662:
	.byte	'?'
	.ascii	"_temp_648\0"
	.align
_Label_663:
	.byte	'?'
	.ascii	"_temp_647\0"
	.align
_Label_664:
	.byte	'C'
	.ascii	"_temp_646\0"
	.align
_Label_665:
	.byte	'?'
	.ascii	"_temp_645\0"
	.align
_Label_666:
	.byte	'C'
	.ascii	"_temp_644\0"
	.align
_Label_667:
	.byte	'P'
	.ascii	"from\0"
	.align
_Label_668:
	.byte	'P'
	.ascii	"dest\0"
	.align
! 
! ===============  FUNCTION printFCB  ===============
! 
_function_217_printFCB:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_217_printFCB,r1
	push	r1
	mov	3,r1
_Label_3071:
	push	r0
	sub	r1,1,r1
	bne	_Label_3071
	mov	2591,r13		! source line 2591
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_670 = fcb + 12
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-12]
!   Data Move: _temp_669 = *_temp_670  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_669  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2592,r13		! source line 2592
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=32  sizeInBytes=1
	mov	32,r1
	storeb	r1,[r15+0]
!   Call the function
	mov	2593,r13		! source line 2593
	mov	"\0\0CE",r10
	call	printChar
! RETURN STATEMENT...
	mov	2593,r13		! source line 2593
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_217_printFCB:
	.word	_sourceFileName
	.word	_Label_671
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_672
	.word	8
	.word	4
	.word	_Label_673
	.word	-12
	.word	4
	.word	_Label_674
	.word	-16
	.word	4
	.word	0
_Label_671:
	.ascii	"printFCB\0"
	.align
_Label_672:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_673:
	.byte	'?'
	.ascii	"_temp_670\0"
	.align
_Label_674:
	.byte	'?'
	.ascii	"_temp_669\0"
	.align
! 
! ===============  FUNCTION printOpen  ===============
! 
_function_216_printOpen:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_216_printOpen,r1
	push	r1
	mov	4,r1
_Label_3072:
	push	r0
	sub	r1,1,r1
	bne	_Label_3072
	mov	2596,r13		! source line 2596
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_675 = _StringConst_65
	set	_StringConst_65,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_675  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2597,r13		! source line 2597
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_676 = open		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_676  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2598,r13		! source line 2598
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_677 = _StringConst_66
	set	_StringConst_66,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_677  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2599,r13		! source line 2599
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2600,r13		! source line 2600
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_216_printOpen:
	.word	_sourceFileName
	.word	_Label_678
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_679
	.word	8
	.word	4
	.word	_Label_680
	.word	-12
	.word	4
	.word	_Label_681
	.word	-16
	.word	4
	.word	_Label_682
	.word	-20
	.word	4
	.word	0
_Label_678:
	.ascii	"printOpen\0"
	.align
_Label_679:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_680:
	.byte	'?'
	.ascii	"_temp_677\0"
	.align
_Label_681:
	.byte	'?'
	.ascii	"_temp_676\0"
	.align
_Label_682:
	.byte	'?'
	.ascii	"_temp_675\0"
	.align
! 
! ===============  FUNCTION StartUserProcess  ===============
! 
_function_215_StartUserProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_215_StartUserProcess,r1
	push	r1
	mov	25,r1
_Label_3073:
	push	r0
	sub	r1,1,r1
	bne	_Label_3073
	mov	2865,r13		! source line 2865
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2875,r13		! source line 2875
	mov	"\0\0AS",r10
	mov	2875,r13		! source line 2875
	mov	"\0\0SE",r10
!   _temp_683 = &_P_Kernel_processManager
	set	_P_Kernel_processManager,r1
	store	r1,[r14+-72]
!   Send message GetANewProcess
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=pcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-76]
! ASSIGNMENT STATEMENT...
	mov	2877,r13		! source line 2877
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_684 = pcb + 24
	load	[r14+-76],r1
	add	r1,24,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_684 = _P_Kernel_currentThread  (sizeInBytes=4)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+-68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2878,r13		! source line 2878
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_685 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-64]
!   Data Move: *_temp_685 = pcb  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r14+-64],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2881,r13		! source line 2881
	mov	"\0\0AS",r10
	mov	2881,r13		! source line 2881
	mov	"\0\0SE",r10
!   _temp_686 = _StringConst_67
	set	_StringConst_67,r1
	store	r1,[r14+-60]
!   _temp_687 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=12  value=_temp_686  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-80]
! ASSIGNMENT STATEMENT...
	mov	2883,r13		! source line 2883
	mov	"\0\0AS",r10
	mov	2883,r13		! source line 2883
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_689 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   _temp_688 = _temp_689		(4 bytes)
	load	[r14+-48],r1
	store	r1,[r14+-52]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_688  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
! IF STATEMENT...
	mov	2885,r13		! source line 2885
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_691		(int)
	load	[r14+-84],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_691
!	jmp	_Label_690
_Label_690:
! THEN...
	mov	2886,r13		! source line 2886
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_692 = _StringConst_68
	set	_StringConst_68,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_692  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2886,r13		! source line 2886
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_691:
! SEND STATEMENT...
	mov	2889,r13		! source line 2889
	mov	"\0\0SE",r10
!   _temp_693 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2892,r13		! source line 2892
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_695 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-32]
!   _temp_696 = _temp_695 + 4
	load	[r14+-32],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Data Move: _temp_694 = *_temp_696  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   initUserStack = _temp_694 * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-88]
! ASSIGNMENT STATEMENT...
	mov	2894,r13		! source line 2894
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_697 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-24]
!   Move address of _temp_697 [999 ] into _temp_698
!     make sure index expr is >= 0
	mov	999,r2
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
!   initSystemStack = _temp_698		(4 bytes)
	load	[r14+-20],r1
	store	r1,[r14+-92]
! ASSIGNMENT STATEMENT...
	mov	2897,r13		! source line 2897
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2897,r13		! source line 2897
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-96]
! SEND STATEMENT...
	mov	2899,r13		! source line 2899
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_699 = pcb + 32
	load	[r14+-76],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message SetToThisPageTable
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2901,r13		! source line 2901
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_700 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-12]
!   Data Move: *_temp_700 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-12],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStack  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStack  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Call the function
	mov	2903,r13		! source line 2903
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2903,r13		! source line 2903
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_215_StartUserProcess:
	.word	_sourceFileName
	.word	_Label_701
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_702
	.word	8
	.word	4
	.word	_Label_703
	.word	-12
	.word	4
	.word	_Label_704
	.word	-16
	.word	4
	.word	_Label_705
	.word	-20
	.word	4
	.word	_Label_706
	.word	-24
	.word	4
	.word	_Label_707
	.word	-28
	.word	4
	.word	_Label_708
	.word	-32
	.word	4
	.word	_Label_709
	.word	-36
	.word	4
	.word	_Label_710
	.word	-40
	.word	4
	.word	_Label_711
	.word	-44
	.word	4
	.word	_Label_712
	.word	-48
	.word	4
	.word	_Label_713
	.word	-52
	.word	4
	.word	_Label_714
	.word	-56
	.word	4
	.word	_Label_715
	.word	-60
	.word	4
	.word	_Label_716
	.word	-64
	.word	4
	.word	_Label_717
	.word	-68
	.word	4
	.word	_Label_718
	.word	-72
	.word	4
	.word	_Label_719
	.word	-76
	.word	4
	.word	_Label_720
	.word	-80
	.word	4
	.word	_Label_721
	.word	-84
	.word	4
	.word	_Label_722
	.word	-88
	.word	4
	.word	_Label_723
	.word	-92
	.word	4
	.word	_Label_724
	.word	-96
	.word	4
	.word	0
_Label_701:
	.ascii	"StartUserProcess\0"
	.align
_Label_702:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_703:
	.byte	'?'
	.ascii	"_temp_700\0"
	.align
_Label_704:
	.byte	'?'
	.ascii	"_temp_699\0"
	.align
_Label_705:
	.byte	'?'
	.ascii	"_temp_698\0"
	.align
_Label_706:
	.byte	'?'
	.ascii	"_temp_697\0"
	.align
_Label_707:
	.byte	'?'
	.ascii	"_temp_696\0"
	.align
_Label_708:
	.byte	'?'
	.ascii	"_temp_695\0"
	.align
_Label_709:
	.byte	'?'
	.ascii	"_temp_694\0"
	.align
_Label_710:
	.byte	'?'
	.ascii	"_temp_693\0"
	.align
_Label_711:
	.byte	'?'
	.ascii	"_temp_692\0"
	.align
_Label_712:
	.byte	'?'
	.ascii	"_temp_689\0"
	.align
_Label_713:
	.byte	'?'
	.ascii	"_temp_688\0"
	.align
_Label_714:
	.byte	'?'
	.ascii	"_temp_687\0"
	.align
_Label_715:
	.byte	'?'
	.ascii	"_temp_686\0"
	.align
_Label_716:
	.byte	'?'
	.ascii	"_temp_685\0"
	.align
_Label_717:
	.byte	'?'
	.ascii	"_temp_684\0"
	.align
_Label_718:
	.byte	'?'
	.ascii	"_temp_683\0"
	.align
_Label_719:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_720:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_721:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_722:
	.byte	'I'
	.ascii	"initUserStack\0"
	.align
_Label_723:
	.byte	'I'
	.ascii	"initSystemStack\0"
	.align
_Label_724:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  FUNCTION InitFirstProcess  ===============
! 
_P_Kernel_InitFirstProcess:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__P_Kernel_InitFirstProcess,r1
	push	r1
	mov	7,r1
_Label_3074:
	push	r0
	sub	r1,1,r1
	bne	_Label_3074
	mov	2908,r13		! source line 2908
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2912,r13		! source line 2912
	mov	"\0\0AS",r10
	mov	2912,r13		! source line 2912
	mov	"\0\0SE",r10
!   _temp_725 = &_P_Kernel_threadManager
	set	_P_Kernel_threadManager,r1
	store	r1,[r14+-20]
!   Send message GetANewThread
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	2913,r13		! source line 2913
	mov	"\0\0SE",r10
!   _temp_726 = _StringConst_69
	set	_StringConst_69,r1
	store	r1,[r14+-16]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_726  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0SE",r10
!   _temp_727 = _function_215_StartUserProcess
	set	_function_215_StartUserProcess,r1
	store	r1,[r14+-12]
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_727  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+8]
!   Send message Fork
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2914,r13		! source line 2914
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__P_Kernel_InitFirstProcess:
	.word	_sourceFileName
	.word	_Label_728
	.word	0		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_729
	.word	-12
	.word	4
	.word	_Label_730
	.word	-16
	.word	4
	.word	_Label_731
	.word	-20
	.word	4
	.word	_Label_732
	.word	-24
	.word	4
	.word	0
_Label_728:
	.ascii	"InitFirstProcess\0"
	.align
_Label_729:
	.byte	'?'
	.ascii	"_temp_727\0"
	.align
_Label_730:
	.byte	'?'
	.ascii	"_temp_726\0"
	.align
_Label_731:
	.byte	'?'
	.ascii	"_temp_725\0"
	.align
_Label_732:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  FUNCTION Exec  ===============
! 
_function_214_Exec:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__function_214_Exec,r1
	push	r1
	mov	59,r1
_Label_3075:
	push	r0
	sub	r1,1,r1
	bne	_Label_3075
	mov	2932,r13		! source line 2932
	mov	"\0\0FU",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2946,r13		! source line 2946
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_733 = _P_Kernel_currentThread + 4160
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4160,r1
	store	r1,[r14+-108]
!   Data Move: pcb = *_temp_733  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2947,r13		! source line 2947
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newAddrSpace = zeros  (sizeInBytes=92)
	add	r14,-204,r4
	mov	23,r3
_Label_3076:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3076
!   newAddrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	store	r1,[r14+-204]
! SEND STATEMENT...
	mov	2948,r13		! source line 2948
	mov	"\0\0SE",r10
!   _temp_735 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-100]
!   Send message Init
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2951,r13		! source line 2951
	mov	"\0\0AS",r10
	mov	2951,r13		! source line 2951
	mov	"\0\0SE",r10
!   _temp_736 = &_Global_strBuffer
	set	_Global_strBuffer,r1
	store	r1,[r14+-96]
!   _temp_737 = filename		(4 bytes)
	load	[r14+8],r1
	store	r1,[r14+-92]
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_738 = pcb + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=_temp_736  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_737  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+12]
!   Send message GetStringFromVirtual
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,84,r2
	call	r2
!   Retrieve Result: targetName=i  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-216]
! IF STATEMENT...
	mov	2952,r13		! source line 2952
	mov	"\0\0IF",r10
!   if i >= 0 then goto _Label_740		(int)
	load	[r14+-216],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_740
!	jmp	_Label_739
_Label_739:
! THEN...
	mov	2953,r13		! source line 2953
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_741 = _StringConst_70
	set	_StringConst_70,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_741  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	2953,r13		! source line 2953
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2954,r13		! source line 2954
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,240,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_740:
! ASSIGNMENT STATEMENT...
	mov	2958,r13		! source line 2958
	mov	"\0\0AS",r10
	mov	2958,r13		! source line 2958
	mov	"\0\0SE",r10
!   _temp_742 = &_Global_strBuffer
	set	_Global_strBuffer,r1
	store	r1,[r14+-80]
!   _temp_743 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=12  value=_temp_742  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+4]
!   Send message Open
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=openFile  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-212]
! IF STATEMENT...
	mov	2960,r13		! source line 2960
	mov	"\0\0IF",r10
!   if openFile == 0 then goto _Label_747		(int)
	load	[r14+-212],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_747
!   _temp_746 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_748
_Label_747:
!   _temp_746 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_748:
!   if _temp_746 then goto _Label_745 else goto _Label_744
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_744
	jmp	_Label_745
_Label_744:
! THEN...
	mov	2961,r13		! source line 2961
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_749 = _StringConst_71
	set	_StringConst_71,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_749  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2961,r13		! source line 2961
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2962,r13		! source line 2962
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,240,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_745:
! ASSIGNMENT STATEMENT...
	mov	2966,r13		! source line 2966
	mov	"\0\0AS",r10
	mov	2966,r13		! source line 2966
	mov	"\0\0SE",r10
!   _temp_750 = &newAddrSpace
	add	r14,-204,r1
	store	r1,[r14+-68]
!   if intIsZero (openFile) then goto _runtimeErrorNullPointer
	load	[r14+-212],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_750  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+4]
!   Send message LoadExecutable
	load	[r14+-212],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=initPC  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
! SEND STATEMENT...
	mov	2968,r13		! source line 2968
	mov	"\0\0SE",r10
!   _temp_751 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=12  value=openFile  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+4]
!   Send message Close
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! IF STATEMENT...
	mov	2970,r13		! source line 2970
	mov	"\0\0IF",r10
!   if initPC >= 0 then goto _Label_753		(int)
	load	[r14+-208],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_753
!	jmp	_Label_752
_Label_752:
! THEN...
	mov	2971,r13		! source line 2971
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_754 = _StringConst_72
	set	_StringConst_72,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_754  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	2971,r13		! source line 2971
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2972,r13		! source line 2972
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,240,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_753:
! SEND STATEMENT...
	mov	2976,r13		! source line 2976
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_756 = pcb + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   _temp_755 = _temp_756		(4 bytes)
	load	[r14+-52],r1
	store	r1,[r14+-56]
!   _temp_757 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_755  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2978,r13		! source line 2978
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_758 = pcb + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-44]
!   Data Move: *_temp_758 = newAddrSpace  (sizeInBytes=92)
	add	r14,-204,r5
	load	[r14+-44],r4
	mov	23,r3
_Label_3077:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3077
! ASSIGNMENT STATEMENT...
	mov	2981,r13		! source line 2981
	mov	"\0\0AS",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_760 = pcb + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   _temp_761 = _temp_760 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Data Move: _temp_759 = *_temp_761  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   initUserStack = _temp_759 * 8192		(int)
	load	[r14+-40],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-220]
! ASSIGNMENT STATEMENT...
	mov	2983,r13		! source line 2983
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_762 = _P_Kernel_currentThread + 88
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,88,r1
	store	r1,[r14+-28]
!   Move address of _temp_762 [999 ] into _temp_763
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
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
	store	r2,[r14+-24]
!   initSystemStack = _temp_763		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-224]
! ASSIGNMENT STATEMENT...
	mov	2986,r13		! source line 2986
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	2986,r13		! source line 2986
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! SEND STATEMENT...
	mov	2988,r13		! source line 2988
	mov	"\0\0SE",r10
!   if intIsZero (pcb) then goto _runtimeErrorNullPointer
	load	[r14+-112],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_764 = pcb + 32
	load	[r14+-112],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Send message SetToThisPageTable
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,72,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2990,r13		! source line 2990
	mov	"\0\0AS",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_765 = _P_Kernel_currentThread + 4092
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	add	r1,4092,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_765 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-16],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=initUserStack  sizeInBytes=4
	load	[r14+-220],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=initPC  sizeInBytes=4
	load	[r14+-208],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=initSystemStack  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+8]
!   Call the function
	mov	2992,r13		! source line 2992
	mov	"\0\0CE",r10
	call	BecomeUserThread
! RETURN STATEMENT...
	mov	2994,r13		! source line 2994
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,240,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__function_214_Exec:
	.word	_sourceFileName
	.word	_Label_766
	.word	4		! total size of parameters
	.word	236		! frame size = 236
	.word	_Label_767
	.word	8
	.word	4
	.word	_Label_768
	.word	-16
	.word	4
	.word	_Label_769
	.word	-20
	.word	4
	.word	_Label_770
	.word	-24
	.word	4
	.word	_Label_771
	.word	-28
	.word	4
	.word	_Label_772
	.word	-32
	.word	4
	.word	_Label_773
	.word	-36
	.word	4
	.word	_Label_774
	.word	-40
	.word	4
	.word	_Label_775
	.word	-44
	.word	4
	.word	_Label_776
	.word	-48
	.word	4
	.word	_Label_777
	.word	-52
	.word	4
	.word	_Label_778
	.word	-56
	.word	4
	.word	_Label_779
	.word	-60
	.word	4
	.word	_Label_780
	.word	-64
	.word	4
	.word	_Label_781
	.word	-68
	.word	4
	.word	_Label_782
	.word	-72
	.word	4
	.word	_Label_783
	.word	-9
	.word	1
	.word	_Label_784
	.word	-76
	.word	4
	.word	_Label_785
	.word	-80
	.word	4
	.word	_Label_786
	.word	-84
	.word	4
	.word	_Label_787
	.word	-88
	.word	4
	.word	_Label_788
	.word	-92
	.word	4
	.word	_Label_789
	.word	-96
	.word	4
	.word	_Label_790
	.word	-100
	.word	4
	.word	_Label_791
	.word	-104
	.word	4
	.word	_Label_792
	.word	-108
	.word	4
	.word	_Label_793
	.word	-112
	.word	4
	.word	_Label_794
	.word	-204
	.word	92
	.word	_Label_795
	.word	-208
	.word	4
	.word	_Label_796
	.word	-212
	.word	4
	.word	_Label_797
	.word	-216
	.word	4
	.word	_Label_798
	.word	-220
	.word	4
	.word	_Label_799
	.word	-224
	.word	4
	.word	_Label_800
	.word	-228
	.word	4
	.word	0
_Label_766:
	.ascii	"Exec\0"
	.align
_Label_767:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_768:
	.byte	'?'
	.ascii	"_temp_765\0"
	.align
_Label_769:
	.byte	'?'
	.ascii	"_temp_764\0"
	.align
_Label_770:
	.byte	'?'
	.ascii	"_temp_763\0"
	.align
_Label_771:
	.byte	'?'
	.ascii	"_temp_762\0"
	.align
_Label_772:
	.byte	'?'
	.ascii	"_temp_761\0"
	.align
_Label_773:
	.byte	'?'
	.ascii	"_temp_760\0"
	.align
_Label_774:
	.byte	'?'
	.ascii	"_temp_759\0"
	.align
_Label_775:
	.byte	'?'
	.ascii	"_temp_758\0"
	.align
_Label_776:
	.byte	'?'
	.ascii	"_temp_757\0"
	.align
_Label_777:
	.byte	'?'
	.ascii	"_temp_756\0"
	.align
_Label_778:
	.byte	'?'
	.ascii	"_temp_755\0"
	.align
_Label_779:
	.byte	'?'
	.ascii	"_temp_754\0"
	.align
_Label_780:
	.byte	'?'
	.ascii	"_temp_751\0"
	.align
_Label_781:
	.byte	'?'
	.ascii	"_temp_750\0"
	.align
_Label_782:
	.byte	'?'
	.ascii	"_temp_749\0"
	.align
_Label_783:
	.byte	'C'
	.ascii	"_temp_746\0"
	.align
_Label_784:
	.byte	'?'
	.ascii	"_temp_743\0"
	.align
_Label_785:
	.byte	'?'
	.ascii	"_temp_742\0"
	.align
_Label_786:
	.byte	'?'
	.ascii	"_temp_741\0"
	.align
_Label_787:
	.byte	'?'
	.ascii	"_temp_738\0"
	.align
_Label_788:
	.byte	'?'
	.ascii	"_temp_737\0"
	.align
_Label_789:
	.byte	'?'
	.ascii	"_temp_736\0"
	.align
_Label_790:
	.byte	'?'
	.ascii	"_temp_735\0"
	.align
_Label_791:
	.byte	'?'
	.ascii	"_temp_734\0"
	.align
_Label_792:
	.byte	'?'
	.ascii	"_temp_733\0"
	.align
_Label_793:
	.byte	'P'
	.ascii	"pcb\0"
	.align
_Label_794:
	.byte	'O'
	.ascii	"newAddrSpace\0"
	.align
_Label_795:
	.byte	'I'
	.ascii	"initPC\0"
	.align
_Label_796:
	.byte	'P'
	.ascii	"openFile\0"
	.align
_Label_797:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_798:
	.byte	'I'
	.ascii	"initUserStack\0"
	.align
_Label_799:
	.byte	'I'
	.ascii	"initSystemStack\0"
	.align
_Label_800:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Semaphore  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Semaphore:
	.word	_Label_801
	jmp	_Method_P_Kernel_Semaphore_1	! 4:	Init
	jmp	_Method_P_Kernel_Semaphore_3	! 8:	Down
	jmp	_Method_P_Kernel_Semaphore_2	! 12:	Up
	.word	0
! 
! Class descriptor:
! 
_Label_801:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_802
	.word	_sourceFileName
	.word	126		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Semaphore
	.word	_P_System_Object
	.word	0
_Label_802:
	.ascii	"Semaphore\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Semaphore_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_1,r1
	push	r1
	mov	3,r1
_Label_3078:
	push	r0
	sub	r1,1,r1
	bne	_Label_3078
	mov	230,r13		! source line 230
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	231,r13		! source line 231
	mov	"\0\0IF",r10
!   if initialCount >= 0 then goto _Label_804		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_804
!	jmp	_Label_803
_Label_803:
! THEN...
	mov	232,r13		! source line 232
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_805 = _StringConst_73
	set	_StringConst_73,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_805  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	232,r13		! source line 232
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_804:
! ASSIGNMENT STATEMENT...
	mov	234,r13		! source line 234
	mov	"\0\0AS",r10
!   count = initialCount		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	235,r13		! source line 235
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
	mov	235,r13		! source line 235
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_1:
	.word	_sourceFileName
	.word	_Label_807
	.word	8		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_808
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_809
	.word	12
	.word	4
	.word	_Label_810
	.word	-12
	.word	4
	.word	_Label_811
	.word	-16
	.word	4
	.word	0
_Label_807:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_808:
	.ascii	"Pself\0"
	.align
_Label_809:
	.byte	'I'
	.ascii	"initialCount\0"
	.align
_Label_810:
	.byte	'?'
	.ascii	"_temp_806\0"
	.align
_Label_811:
	.byte	'?'
	.ascii	"_temp_805\0"
	.align
! 
! ===============  METHOD Up  ===============
! 
_Method_P_Kernel_Semaphore_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_2,r1
	push	r1
	mov	8,r1
_Label_3079:
	push	r0
	sub	r1,1,r1
	bne	_Label_3079
	mov	240,r13		! source line 240
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	244,r13		! source line 244
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	244,r13		! source line 244
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	245,r13		! source line 245
	mov	"\0\0IF",r10
!   if count != 2147483647 then goto _Label_813		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	2147483647,r2
	cmp	r1,r2
	bne	_Label_813
!	jmp	_Label_812
_Label_812:
! THEN...
	mov	246,r13		! source line 246
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_814 = _StringConst_74
	set	_StringConst_74,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_814  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	246,r13		! source line 246
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_813:
! ASSIGNMENT STATEMENT...
	mov	248,r13		! source line 248
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
	mov	249,r13		! source line 249
	mov	"\0\0IF",r10
!   if count > 0 then goto _Label_816		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_816
!	jmp	_Label_815
_Label_815:
! THEN...
	mov	250,r13		! source line 250
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	250,r13		! source line 250
	mov	"\0\0AS",r10
	mov	250,r13		! source line 250
	mov	"\0\0SE",r10
!   _temp_817 = &waitingThreads
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
	mov	251,r13		! source line 251
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_818 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_818 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	252,r13		! source line 252
	mov	"\0\0SE",r10
!   _temp_819 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_816:
! ASSIGNMENT STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	254,r13		! source line 254
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	254,r13		! source line 254
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_2:
	.word	_sourceFileName
	.word	_Label_820
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_821
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_822
	.word	-12
	.word	4
	.word	_Label_823
	.word	-16
	.word	4
	.word	_Label_824
	.word	-20
	.word	4
	.word	_Label_825
	.word	-24
	.word	4
	.word	_Label_826
	.word	-28
	.word	4
	.word	_Label_827
	.word	-32
	.word	4
	.word	0
_Label_820:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Up\0"
	.align
_Label_821:
	.ascii	"Pself\0"
	.align
_Label_822:
	.byte	'?'
	.ascii	"_temp_819\0"
	.align
_Label_823:
	.byte	'?'
	.ascii	"_temp_818\0"
	.align
_Label_824:
	.byte	'?'
	.ascii	"_temp_817\0"
	.align
_Label_825:
	.byte	'?'
	.ascii	"_temp_814\0"
	.align
_Label_826:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_827:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Down  ===============
! 
_Method_P_Kernel_Semaphore_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Semaphore_3,r1
	push	r1
	mov	5,r1
_Label_3080:
	push	r0
	sub	r1,1,r1
	bne	_Label_3080
	mov	259,r13		! source line 259
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	262,r13		! source line 262
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	262,r13		! source line 262
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! IF STATEMENT...
	mov	263,r13		! source line 263
	mov	"\0\0IF",r10
!   if count != -2147483648 then goto _Label_829		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	0x80000000,r2
	cmp	r1,r2
	bne	_Label_829
!	jmp	_Label_828
_Label_828:
! THEN...
	mov	264,r13		! source line 264
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_830 = _StringConst_75
	set	_StringConst_75,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_830  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	264,r13		! source line 264
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_829:
! ASSIGNMENT STATEMENT...
	mov	266,r13		! source line 266
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
	mov	267,r13		! source line 267
	mov	"\0\0IF",r10
!   if count >= 0 then goto _Label_832		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_832
!	jmp	_Label_831
_Label_831:
! THEN...
	mov	268,r13		! source line 268
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	268,r13		! source line 268
	mov	"\0\0SE",r10
!   _temp_833 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	269,r13		! source line 269
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_832:
! ASSIGNMENT STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	271,r13		! source line 271
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
! RETURN STATEMENT...
	mov	271,r13		! source line 271
	mov	"\0\0RE",r10
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Semaphore_3:
	.word	_sourceFileName
	.word	_Label_834
	.word	4		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_835
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_836
	.word	-12
	.word	4
	.word	_Label_837
	.word	-16
	.word	4
	.word	_Label_838
	.word	-20
	.word	4
	.word	0
_Label_834:
	.ascii	"Semaphore"
	.ascii	"::"
	.ascii	"Down\0"
	.align
_Label_835:
	.ascii	"Pself\0"
	.align
_Label_836:
	.byte	'?'
	.ascii	"_temp_833\0"
	.align
_Label_837:
	.byte	'?'
	.ascii	"_temp_830\0"
	.align
_Label_838:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Mutex  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Mutex:
	.word	_Label_839
	jmp	_Method_P_Kernel_Mutex_1	! 4:	Init
	jmp	_Method_P_Kernel_Mutex_2	! 8:	Lock
	jmp	_Method_P_Kernel_Mutex_3	! 12:	Unlock
	jmp	_Method_P_Kernel_Mutex_4	! 16:	IsHeldByCurrentThread
	.word	0
! 
! Class descriptor:
! 
_Label_839:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_840
	.word	_sourceFileName
	.word	139		! line number
	.word	20		! size of instances, in bytes
	.word	_P_Kernel_Mutex
	.word	_P_System_Object
	.word	0
_Label_840:
	.ascii	"Mutex\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Mutex_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_1,r1
	push	r1
	mov	1,r1
_Label_3081:
	push	r0
	sub	r1,1,r1
	bne	_Label_3081
	mov	294,r13		! source line 294
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	295,r13		! source line 295
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
	mov	295,r13		! source line 295
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_1:
	.word	_sourceFileName
	.word	_Label_842
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_843
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_844
	.word	-12
	.word	4
	.word	0
_Label_842:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_843:
	.ascii	"Pself\0"
	.align
_Label_844:
	.byte	'?'
	.ascii	"_temp_841\0"
	.align
! 
! ===============  METHOD Lock  ===============
! 
_Method_P_Kernel_Mutex_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_2,r1
	push	r1
	mov	6,r1
_Label_3082:
	push	r0
	sub	r1,1,r1
	bne	_Label_3082
	mov	300,r13		! source line 300
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	303,r13		! source line 303
	mov	"\0\0IF",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_846		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_846
!	jmp	_Label_845
_Label_845:
! THEN...
	mov	304,r13		! source line 304
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_847 = _StringConst_76
	set	_StringConst_76,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_847  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	304,r13		! source line 304
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_846:
! ASSIGNMENT STATEMENT...
	mov	306,r13		! source line 306
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	306,r13		! source line 306
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! IF STATEMENT...
	mov	307,r13		! source line 307
	mov	"\0\0IF",r10
!   if heldBy == 0 then goto _Label_851		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_851
!   _temp_850 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_852
_Label_851:
!   _temp_850 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_852:
!   if _temp_850 then goto _Label_849 else goto _Label_848
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_848
	jmp	_Label_849
_Label_848:
! THEN...
	mov	308,r13		! source line 308
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	308,r13		! source line 308
	mov	"\0\0AS",r10
!   heldBy = _P_Kernel_currentThread		(4 bytes)
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_853
_Label_849:
! ELSE...
	mov	310,r13		! source line 310
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	310,r13		! source line 310
	mov	"\0\0SE",r10
!   _temp_854 = &waitingThreads
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	311,r13		! source line 311
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_853:
! ASSIGNMENT STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	313,r13		! source line 313
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	313,r13		! source line 313
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_2:
	.word	_sourceFileName
	.word	_Label_855
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_856
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_857
	.word	-16
	.word	4
	.word	_Label_858
	.word	-9
	.word	1
	.word	_Label_859
	.word	-20
	.word	4
	.word	_Label_860
	.word	-24
	.word	4
	.word	0
_Label_855:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Lock\0"
	.align
_Label_856:
	.ascii	"Pself\0"
	.align
_Label_857:
	.byte	'?'
	.ascii	"_temp_854\0"
	.align
_Label_858:
	.byte	'C'
	.ascii	"_temp_850\0"
	.align
_Label_859:
	.byte	'?'
	.ascii	"_temp_847\0"
	.align
_Label_860:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Unlock  ===============
! 
_Method_P_Kernel_Mutex_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_3,r1
	push	r1
	mov	8,r1
_Label_3083:
	push	r0
	sub	r1,1,r1
	bne	_Label_3083
	mov	318,r13		! source line 318
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	322,r13		! source line 322
	mov	"\0\0IF",r10
!   if heldBy == _P_Kernel_currentThread then goto _Label_862		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_862
!	jmp	_Label_861
_Label_861:
! THEN...
	mov	323,r13		! source line 323
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_863 = _StringConst_77
	set	_StringConst_77,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_863  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	323,r13		! source line 323
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_862:
! ASSIGNMENT STATEMENT...
	mov	325,r13		! source line 325
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	325,r13		! source line 325
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! ASSIGNMENT STATEMENT...
	mov	326,r13		! source line 326
	mov	"\0\0AS",r10
	mov	326,r13		! source line 326
	mov	"\0\0SE",r10
!   _temp_864 = &waitingThreads
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
! IF STATEMENT...
	mov	327,r13		! source line 327
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_866		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_866
!	jmp	_Label_865
_Label_865:
! THEN...
	mov	328,r13		! source line 328
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	328,r13		! source line 328
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_867 = t + 76
	load	[r14+-32],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_867 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	329,r13		! source line 329
	mov	"\0\0SE",r10
!   _temp_868 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
! ASSIGNMENT STATEMENT...
	mov	330,r13		! source line 330
	mov	"\0\0AS",r10
!   heldBy = t		(4 bytes)
	load	[r14+-32],r1
	load	[r14+8],r2
	store	r1,[r2+4]
	jmp	_Label_869
_Label_866:
! ELSE...
	mov	332,r13		! source line 332
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	332,r13		! source line 332
	mov	"\0\0AS",r10
!   heldBy = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! END IF...
_Label_869:
! ASSIGNMENT STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	334,r13		! source line 334
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	334,r13		! source line 334
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_3:
	.word	_sourceFileName
	.word	_Label_870
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_871
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_872
	.word	-12
	.word	4
	.word	_Label_873
	.word	-16
	.word	4
	.word	_Label_874
	.word	-20
	.word	4
	.word	_Label_875
	.word	-24
	.word	4
	.word	_Label_876
	.word	-28
	.word	4
	.word	_Label_877
	.word	-32
	.word	4
	.word	0
_Label_870:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"Unlock\0"
	.align
_Label_871:
	.ascii	"Pself\0"
	.align
_Label_872:
	.byte	'?'
	.ascii	"_temp_868\0"
	.align
_Label_873:
	.byte	'?'
	.ascii	"_temp_867\0"
	.align
_Label_874:
	.byte	'?'
	.ascii	"_temp_864\0"
	.align
_Label_875:
	.byte	'?'
	.ascii	"_temp_863\0"
	.align
_Label_876:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_877:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD IsHeldByCurrentThread  ===============
! 
_Method_P_Kernel_Mutex_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Mutex_4,r1
	push	r1
	mov	1,r1
_Label_3084:
	push	r0
	sub	r1,1,r1
	bne	_Label_3084
	mov	339,r13		! source line 339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	340,r13		! source line 340
	mov	"\0\0RE",r10
!   if heldBy != _P_Kernel_currentThread then goto _Label_880		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	bne	_Label_880
!	jmp	_Label_879
_Label_879:
!   _temp_878 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_881
_Label_880:
!   _temp_878 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_881:
!   ReturnResult: _temp_878  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Mutex_4:
	.word	_sourceFileName
	.word	_Label_882
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_883
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_884
	.word	-9
	.word	1
	.word	0
_Label_882:
	.ascii	"Mutex"
	.ascii	"::"
	.ascii	"IsHeldByCurrentThread\0"
	.align
_Label_883:
	.ascii	"Pself\0"
	.align
_Label_884:
	.byte	'C'
	.ascii	"_temp_878\0"
	.align
! 
! ===============  CLASS Condition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Condition:
	.word	_Label_885
	jmp	_Method_P_Kernel_Condition_1	! 4:	Init
	jmp	_Method_P_Kernel_Condition_2	! 8:	Wait
	jmp	_Method_P_Kernel_Condition_3	! 12:	Signal
	jmp	_Method_P_Kernel_Condition_4	! 16:	Broadcast
	.word	0
! 
! Class descriptor:
! 
_Label_885:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_886
	.word	_sourceFileName
	.word	153		! line number
	.word	16		! size of instances, in bytes
	.word	_P_Kernel_Condition
	.word	_P_System_Object
	.word	0
_Label_886:
	.ascii	"Condition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Condition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_1,r1
	push	r1
	mov	1,r1
_Label_3085:
	push	r0
	sub	r1,1,r1
	bne	_Label_3085
	mov	380,r13		! source line 380
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	381,r13		! source line 381
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
	mov	381,r13		! source line 381
	mov	"\0\0RE",r10
	add	r15,8,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_1:
	.word	_sourceFileName
	.word	_Label_888
	.word	4		! total size of parameters
	.word	4		! frame size = 4
	.word	_Label_889
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_890
	.word	-12
	.word	4
	.word	0
_Label_888:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_889:
	.ascii	"Pself\0"
	.align
_Label_890:
	.byte	'?'
	.ascii	"_temp_887\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_Condition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_2,r1
	push	r1
	mov	6,r1
_Label_3086:
	push	r0
	sub	r1,1,r1
	bne	_Label_3086
	mov	386,r13		! source line 386
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	389,r13		! source line 389
	mov	"\0\0IF",r10
	mov	389,r13		! source line 389
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
!   Retrieve Result: targetName=_temp_893  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_893 then goto _Label_892 else goto _Label_891
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_891
	jmp	_Label_892
_Label_891:
! THEN...
	mov	390,r13		! source line 390
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_894 = _StringConst_78
	set	_StringConst_78,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_894  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	390,r13		! source line 390
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_892:
! ASSIGNMENT STATEMENT...
	mov	392,r13		! source line 392
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	392,r13		! source line 392
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	393,r13		! source line 393
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
	mov	395,r13		! source line 395
	mov	"\0\0SE",r10
!   _temp_895 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
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
	mov	396,r13		! source line 396
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	397,r13		! source line 397
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
	mov	398,r13		! source line 398
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	398,r13		! source line 398
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! RETURN STATEMENT...
	mov	398,r13		! source line 398
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_2:
	.word	_sourceFileName
	.word	_Label_896
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_897
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_898
	.word	12
	.word	4
	.word	_Label_899
	.word	-16
	.word	4
	.word	_Label_900
	.word	-20
	.word	4
	.word	_Label_901
	.word	-9
	.word	1
	.word	_Label_902
	.word	-24
	.word	4
	.word	0
_Label_896:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_897:
	.ascii	"Pself\0"
	.align
_Label_898:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_899:
	.byte	'?'
	.ascii	"_temp_895\0"
	.align
_Label_900:
	.byte	'?'
	.ascii	"_temp_894\0"
	.align
_Label_901:
	.byte	'C'
	.ascii	"_temp_893\0"
	.align
_Label_902:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_Condition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_3,r1
	push	r1
	mov	9,r1
_Label_3087:
	push	r0
	sub	r1,1,r1
	bne	_Label_3087
	mov	403,r13		! source line 403
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	407,r13		! source line 407
	mov	"\0\0IF",r10
	mov	407,r13		! source line 407
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
!   Retrieve Result: targetName=_temp_905  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_905 then goto _Label_904 else goto _Label_903
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_903
	jmp	_Label_904
_Label_903:
! THEN...
	mov	408,r13		! source line 408
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_906 = _StringConst_79
	set	_StringConst_79,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_906  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	408,r13		! source line 408
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_904:
! ASSIGNMENT STATEMENT...
	mov	410,r13		! source line 410
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	410,r13		! source line 410
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! ASSIGNMENT STATEMENT...
	mov	411,r13		! source line 411
	mov	"\0\0AS",r10
	mov	411,r13		! source line 411
	mov	"\0\0SE",r10
!   _temp_907 = &waitingThreads
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
	mov	412,r13		! source line 412
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_909		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_909
!	jmp	_Label_908
_Label_908:
! THEN...
	mov	413,r13		! source line 413
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	413,r13		! source line 413
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_910 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_910 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	415,r13		! source line 415
	mov	"\0\0SE",r10
!   _temp_911 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
_Label_909:
! ASSIGNMENT STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	417,r13		! source line 417
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	417,r13		! source line 417
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_3:
	.word	_sourceFileName
	.word	_Label_912
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_913
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_914
	.word	12
	.word	4
	.word	_Label_915
	.word	-16
	.word	4
	.word	_Label_916
	.word	-20
	.word	4
	.word	_Label_917
	.word	-24
	.word	4
	.word	_Label_918
	.word	-28
	.word	4
	.word	_Label_919
	.word	-9
	.word	1
	.word	_Label_920
	.word	-32
	.word	4
	.word	_Label_921
	.word	-36
	.word	4
	.word	0
_Label_912:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_913:
	.ascii	"Pself\0"
	.align
_Label_914:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_915:
	.byte	'?'
	.ascii	"_temp_911\0"
	.align
_Label_916:
	.byte	'?'
	.ascii	"_temp_910\0"
	.align
_Label_917:
	.byte	'?'
	.ascii	"_temp_907\0"
	.align
_Label_918:
	.byte	'?'
	.ascii	"_temp_906\0"
	.align
_Label_919:
	.byte	'C'
	.ascii	"_temp_905\0"
	.align
_Label_920:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_921:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Broadcast  ===============
! 
_Method_P_Kernel_Condition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Condition_4,r1
	push	r1
	mov	9,r1
_Label_3088:
	push	r0
	sub	r1,1,r1
	bne	_Label_3088
	mov	422,r13		! source line 422
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	426,r13		! source line 426
	mov	"\0\0IF",r10
	mov	426,r13		! source line 426
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
!   Retrieve Result: targetName=_temp_924  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_924 then goto _Label_923 else goto _Label_922
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_922
	jmp	_Label_923
_Label_922:
! THEN...
	mov	427,r13		! source line 427
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_925 = _StringConst_80
	set	_StringConst_80,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_925  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	427,r13		! source line 427
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_923:
! ASSIGNMENT STATEMENT...
	mov	429,r13		! source line 429
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	429,r13		! source line 429
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! WHILE STATEMENT...
	mov	430,r13		! source line 430
	mov	"\0\0WH",r10
_Label_926:
!	jmp	_Label_927
_Label_927:
	mov	430,r13		! source line 430
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	431,r13		! source line 431
	mov	"\0\0AS",r10
	mov	431,r13		! source line 431
	mov	"\0\0SE",r10
!   _temp_929 = &waitingThreads
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
	mov	432,r13		! source line 432
	mov	"\0\0IF",r10
!   if intIsZero (t) then goto _Label_930
	load	[r14+-36],r1
	cmp	r1,r0
	be	_Label_930
	jmp	_Label_931
_Label_930:
! THEN...
	mov	433,r13		! source line 433
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	433,r13		! source line 433
	mov	"\0\0BR",r10
	jmp	_Label_928
! END IF...
_Label_931:
! ASSIGNMENT STATEMENT...
	mov	435,r13		! source line 435
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_932 = t + 76
	load	[r14+-36],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_932 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	436,r13		! source line 436
	mov	"\0\0SE",r10
!   _temp_933 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
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
	jmp	_Label_926
_Label_928:
! ASSIGNMENT STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	438,r13		! source line 438
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! RETURN STATEMENT...
	mov	438,r13		! source line 438
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Condition_4:
	.word	_sourceFileName
	.word	_Label_934
	.word	8		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_935
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_936
	.word	12
	.word	4
	.word	_Label_937
	.word	-16
	.word	4
	.word	_Label_938
	.word	-20
	.word	4
	.word	_Label_939
	.word	-24
	.word	4
	.word	_Label_940
	.word	-28
	.word	4
	.word	_Label_941
	.word	-9
	.word	1
	.word	_Label_942
	.word	-32
	.word	4
	.word	_Label_943
	.word	-36
	.word	4
	.word	0
_Label_934:
	.ascii	"Condition"
	.ascii	"::"
	.ascii	"Broadcast\0"
	.align
_Label_935:
	.ascii	"Pself\0"
	.align
_Label_936:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_937:
	.byte	'?'
	.ascii	"_temp_933\0"
	.align
_Label_938:
	.byte	'?'
	.ascii	"_temp_932\0"
	.align
_Label_939:
	.byte	'?'
	.ascii	"_temp_929\0"
	.align
_Label_940:
	.byte	'?'
	.ascii	"_temp_925\0"
	.align
_Label_941:
	.byte	'C'
	.ascii	"_temp_924\0"
	.align
_Label_942:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_943:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  CLASS HoareCondition  ===============
! 
! Dispatch Table:
! 
_P_Kernel_HoareCondition:
	.word	_Label_944
	jmp	_Method_P_Kernel_HoareCondition_1	! 4:	Init
	jmp	_Method_P_Kernel_HoareCondition_2	! 8:	Wait
	jmp	_Method_P_Kernel_HoareCondition_3	! 12:	Signal
	jmp	_Method_P_Kernel_HoareCondition_4	! 16:	Farewell
	.word	0
! 
! Class descriptor:
! 
_Label_944:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_945
	.word	_sourceFileName
	.word	166		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_HoareCondition
	.word	_P_System_Object
	.word	0
_Label_945:
	.ascii	"HoareCondition\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_HoareCondition_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_1,r1
	push	r1
	mov	2,r1
_Label_3089:
	push	r0
	sub	r1,1,r1
	bne	_Label_3089
	mov	466,r13		! source line 466
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	467,r13		! source line 467
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
! ASSIGNMENT STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: waitingSignallers = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,16,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   waitingSignallers = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! RETURN STATEMENT...
	mov	468,r13		! source line 468
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_1:
	.word	_sourceFileName
	.word	_Label_948
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_949
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_950
	.word	-12
	.word	4
	.word	_Label_951
	.word	-16
	.word	4
	.word	0
_Label_948:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_949:
	.ascii	"Pself\0"
	.align
_Label_950:
	.byte	'?'
	.ascii	"_temp_947\0"
	.align
_Label_951:
	.byte	'?'
	.ascii	"_temp_946\0"
	.align
! 
! ===============  METHOD Wait  ===============
! 
_Method_P_Kernel_HoareCondition_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_2,r1
	push	r1
	mov	10,r1
_Label_3090:
	push	r0
	sub	r1,1,r1
	bne	_Label_3090
	mov	473,r13		! source line 473
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	478,r13		! source line 478
	mov	"\0\0IF",r10
	mov	478,r13		! source line 478
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
!   Retrieve Result: targetName=_temp_954  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_954 then goto _Label_953 else goto _Label_952
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_952
	jmp	_Label_953
_Label_952:
! THEN...
	mov	479,r13		! source line 479
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_955 = _StringConst_81
	set	_StringConst_81,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_955  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	479,r13		! source line 479
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_953:
! ASSIGNMENT STATEMENT...
	mov	482,r13		! source line 482
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	482,r13		! source line 482
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! SEND STATEMENT...
	mov	485,r13		! source line 485
	mov	"\0\0SE",r10
!   _temp_956 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	487,r13		! source line 487
	mov	"\0\0IF",r10
	mov	487,r13		! source line 487
	mov	"\0\0SE",r10
!   _temp_959 = &waitingSignallers
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Send message IsEmpty
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_957 else goto _Label_958
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_958
	jmp	_Label_957
_Label_957:
! THEN...
	mov	489,r13		! source line 489
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	489,r13		! source line 489
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
	jmp	_Label_960
_Label_958:
! ELSE...
	mov	492,r13		! source line 492
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	492,r13		! source line 492
	mov	"\0\0AS",r10
	mov	492,r13		! source line 492
	mov	"\0\0SE",r10
!   _temp_961 = &waitingSignallers
	load	[r14+8],r1
	add	r1,16,r1
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
	store	r1,[r14+-40]
! SEND STATEMENT...
	mov	493,r13		! source line 493
	mov	"\0\0SE",r10
!   _temp_962 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-40],r1
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
_Label_960:
! SEND STATEMENT...
	mov	496,r13		! source line 496
	mov	"\0\0SE",r10
!   if intIsZero (_P_Kernel_currentThread) then goto _runtimeErrorNullPointer
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Sleep
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	498,r13		! source line 498
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
	mov	500,r13		! source line 500
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	500,r13		! source line 500
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	500,r13		! source line 500
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_2:
	.word	_sourceFileName
	.word	_Label_963
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_964
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_965
	.word	12
	.word	4
	.word	_Label_966
	.word	-16
	.word	4
	.word	_Label_967
	.word	-20
	.word	4
	.word	_Label_968
	.word	-24
	.word	4
	.word	_Label_969
	.word	-28
	.word	4
	.word	_Label_970
	.word	-32
	.word	4
	.word	_Label_971
	.word	-9
	.word	1
	.word	_Label_972
	.word	-36
	.word	4
	.word	_Label_973
	.word	-40
	.word	4
	.word	0
_Label_963:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Wait\0"
	.align
_Label_964:
	.ascii	"Pself\0"
	.align
_Label_965:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_966:
	.byte	'?'
	.ascii	"_temp_962\0"
	.align
_Label_967:
	.byte	'?'
	.ascii	"_temp_961\0"
	.align
_Label_968:
	.byte	'?'
	.ascii	"_temp_959\0"
	.align
_Label_969:
	.byte	'?'
	.ascii	"_temp_956\0"
	.align
_Label_970:
	.byte	'?'
	.ascii	"_temp_955\0"
	.align
_Label_971:
	.byte	'C'
	.ascii	"_temp_954\0"
	.align
_Label_972:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_973:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Signal  ===============
! 
_Method_P_Kernel_HoareCondition_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_3,r1
	push	r1
	mov	10,r1
_Label_3091:
	push	r0
	sub	r1,1,r1
	bne	_Label_3091
	mov	505,r13		! source line 505
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	510,r13		! source line 510
	mov	"\0\0IF",r10
	mov	510,r13		! source line 510
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
!   Retrieve Result: targetName=_temp_976  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_976 then goto _Label_975 else goto _Label_974
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_974
	jmp	_Label_975
_Label_974:
! THEN...
	mov	511,r13		! source line 511
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_977 = _StringConst_82
	set	_StringConst_82,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_977  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	511,r13		! source line 511
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_975:
! ASSIGNMENT STATEMENT...
	mov	514,r13		! source line 514
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	514,r13		! source line 514
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	517,r13		! source line 517
	mov	"\0\0AS",r10
	mov	517,r13		! source line 517
	mov	"\0\0SE",r10
!   _temp_978 = &waitingThreads
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! IF STATEMENT...
	mov	518,r13		! source line 518
	mov	"\0\0IF",r10
!   if t == 0 then goto _Label_980		(int)
	load	[r14+-40],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_980
!	jmp	_Label_979
_Label_979:
! THEN...
	mov	520,r13		! source line 520
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	520,r13		! source line 520
	mov	"\0\0SE",r10
!   _temp_981 = &waitingSignallers
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_P_Kernel_currentThread  sizeInBytes=4
	set	_P_Kernel_currentThread,r1
	load	[r1],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	521,r13		! source line 521
	mov	"\0\0AS",r10
!   if intIsZero (t) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_982 = t + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_982 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	522,r13		! source line 522
	mov	"\0\0SE",r10
!   _temp_983 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-40],r1
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
_Label_980:
! ASSIGNMENT STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	525,r13		! source line 525
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! RETURN STATEMENT...
	mov	525,r13		! source line 525
	mov	"\0\0RE",r10
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_3:
	.word	_sourceFileName
	.word	_Label_984
	.word	8		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_985
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_986
	.word	12
	.word	4
	.word	_Label_987
	.word	-16
	.word	4
	.word	_Label_988
	.word	-20
	.word	4
	.word	_Label_989
	.word	-24
	.word	4
	.word	_Label_990
	.word	-28
	.word	4
	.word	_Label_991
	.word	-32
	.word	4
	.word	_Label_992
	.word	-9
	.word	1
	.word	_Label_993
	.word	-36
	.word	4
	.word	_Label_994
	.word	-40
	.word	4
	.word	0
_Label_984:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Signal\0"
	.align
_Label_985:
	.ascii	"Pself\0"
	.align
_Label_986:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_987:
	.byte	'?'
	.ascii	"_temp_983\0"
	.align
_Label_988:
	.byte	'?'
	.ascii	"_temp_982\0"
	.align
_Label_989:
	.byte	'?'
	.ascii	"_temp_981\0"
	.align
_Label_990:
	.byte	'?'
	.ascii	"_temp_978\0"
	.align
_Label_991:
	.byte	'?'
	.ascii	"_temp_977\0"
	.align
_Label_992:
	.byte	'C'
	.ascii	"_temp_976\0"
	.align
_Label_993:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_994:
	.byte	'P'
	.ascii	"t\0"
	.align
! 
! ===============  METHOD Farewell  ===============
! 
_Method_P_Kernel_HoareCondition_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_HoareCondition_4,r1
	push	r1
	mov	7,r1
_Label_3092:
	push	r0
	sub	r1,1,r1
	bne	_Label_3092
	mov	530,r13		! source line 530
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	540,r13		! source line 540
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	540,r13		! source line 540
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! IF STATEMENT...
	mov	542,r13		! source line 542
	mov	"\0\0IF",r10
	mov	542,r13		! source line 542
	mov	"\0\0SE",r10
!   _temp_997 = &waitingSignallers
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-20]
!   Send message IsEmpty
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_995 else goto _Label_996
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_996
	jmp	_Label_995
_Label_995:
! THEN...
	mov	543,r13		! source line 543
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	543,r13		! source line 543
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
	jmp	_Label_998
_Label_996:
! ELSE...
	mov	545,r13		! source line 545
	mov	"\0\0EL",r10
! ASSIGNMENT STATEMENT...
	mov	545,r13		! source line 545
	mov	"\0\0AS",r10
	mov	545,r13		! source line 545
	mov	"\0\0SE",r10
!   _temp_999 = &waitingSignallers
	load	[r14+8],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=t  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! SEND STATEMENT...
	mov	546,r13		! source line 546
	mov	"\0\0SE",r10
!   _temp_1000 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=t  sizeInBytes=4
	load	[r14+-24],r1
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
_Label_998:
! ASSIGNMENT STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	549,r13		! source line 549
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	549,r13		! source line 549
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_HoareCondition_4:
	.word	_sourceFileName
	.word	_Label_1001
	.word	8		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1002
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1003
	.word	12
	.word	4
	.word	_Label_1004
	.word	-12
	.word	4
	.word	_Label_1005
	.word	-16
	.word	4
	.word	_Label_1006
	.word	-20
	.word	4
	.word	_Label_1007
	.word	-24
	.word	4
	.word	_Label_1008
	.word	-28
	.word	4
	.word	0
_Label_1001:
	.ascii	"HoareCondition"
	.ascii	"::"
	.ascii	"Farewell\0"
	.align
_Label_1002:
	.ascii	"Pself\0"
	.align
_Label_1003:
	.byte	'P'
	.ascii	"mutex\0"
	.align
_Label_1004:
	.byte	'?'
	.ascii	"_temp_1000\0"
	.align
_Label_1005:
	.byte	'?'
	.ascii	"_temp_999\0"
	.align
_Label_1006:
	.byte	'?'
	.ascii	"_temp_997\0"
	.align
_Label_1007:
	.byte	'P'
	.ascii	"t\0"
	.align
_Label_1008:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
! 
! ===============  CLASS Thread  ===============
! 
! Dispatch Table:
! 
_P_Kernel_Thread:
	.word	_Label_1009
	jmp	_Method_P_Kernel_Thread_1	! 4:	Init
	jmp	_Method_P_Kernel_Thread_2	! 8:	Fork
	jmp	_Method_P_Kernel_Thread_3	! 12:	Yield
	jmp	_Method_P_Kernel_Thread_4	! 16:	Sleep
	jmp	_Method_P_Kernel_Thread_5	! 20:	CheckOverflow
	jmp	_Method_P_Kernel_Thread_6	! 24:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_1009:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1010
	.word	_sourceFileName
	.word	181		! line number
	.word	4164		! size of instances, in bytes
	.word	_P_Kernel_Thread
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1010:
	.ascii	"Thread\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_Thread_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_1,r1
	push	r1
	mov	45,r1
_Label_3093:
	push	r0
	sub	r1,1,r1
	bne	_Label_3093
	mov	560,r13		! source line 560
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	565,r13		! source line 565
	mov	"\0\0AS",r10
!   name = n		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+72]
! ASSIGNMENT STATEMENT...
	mov	566,r13		! source line 566
	mov	"\0\0AS",r10
!   status = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	568,r13		! source line 568
	mov	"\0\0AS",r10
!   _temp_1011 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_1011) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *_temp_1011 = 1000  (sizeInBytes=4)
	mov	1000,r1
	load	[r14+-188],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	569,r13		! source line 569
	mov	"\0\0AS",r10
!   _temp_1012 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-184]
!   Move address of _temp_1012 [0 ] into _temp_1013
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-184],r1
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
	store	r2,[r14+-180]
!   Data Move: *_temp_1013 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-180],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	570,r13		! source line 570
	mov	"\0\0AS",r10
!   _temp_1014 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-176]
!   Move address of _temp_1014 [999 ] into _temp_1015
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-176],r1
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
	store	r2,[r14+-172]
!   Data Move: *_temp_1015 = 606348324  (sizeInBytes=4)
	set	606348324,r1
	load	[r14+-172],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	571,r13		! source line 571
	mov	"\0\0AS",r10
!   _temp_1016 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-168]
!   Move address of _temp_1016 [999 ] into _temp_1017
!     make sure index expr is >= 0
	mov	999,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-168],r1
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
	store	r2,[r14+-164]
!   stackTop = _temp_1017		(4 bytes)
	load	[r14+-164],r1
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	572,r13		! source line 572
	mov	"\0\0AS",r10
!   _temp_1018 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-160]
!   NEW ARRAY Constructor...
!   _temp_1020 = &_temp_1019
	add	r14,-156,r1
	store	r1,[r14+-100]
!   _temp_1020 = _temp_1020 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   Next value...
	mov	13,r1
	store	r1,[r14+-96]
_Label_1022:
!   Data Move: *_temp_1020 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-100],r2
	store	r1,[r2]
!   _temp_1020 = _temp_1020 + 4
	load	[r14+-100],r1
	add	r1,4,r1
	store	r1,[r14+-100]
!   _temp_1021 = _temp_1021 + -1
	load	[r14+-96],r1
	add	r1,-1,r1
	store	r1,[r14+-96]
!   if intNotZero (_temp_1021) then goto _Label_1022
	load	[r14+-96],r1
	cmp	r1,r0
	bne	_Label_1022
!   Initialize the array size...
	mov	13,r1
	store	r1,[r14+-156]
!   _temp_1023 = &_temp_1019
	add	r14,-156,r1
	store	r1,[r14+-92]
!   make sure array has size 13
	load	[r14+-160],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,0
	be	_Label_3094
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3094:
!   make sure array has size 13
	load	[r14+-92],r1
	load	[r1],r1
	set	13, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1018 = *_temp_1023  (sizeInBytes=56)
	load	[r14+-92],r5
	load	[r14+-160],r4
	mov	14,r3
_Label_3095:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3095
! ASSIGNMENT STATEMENT...
	mov	573,r13		! source line 573
	mov	"\0\0AS",r10
!   isUserThread = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+4092]
! ASSIGNMENT STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0AS",r10
!   _temp_1024 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-88]
!   NEW ARRAY Constructor...
!   _temp_1026 = &_temp_1025
	add	r14,-84,r1
	store	r1,[r14+-20]
!   _temp_1026 = _temp_1026 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	15,r1
	store	r1,[r14+-16]
_Label_1028:
!   Data Move: *_temp_1026 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1026 = _temp_1026 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1027 = _temp_1027 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1027) then goto _Label_1028
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1028
!   Initialize the array size...
	mov	15,r1
	store	r1,[r14+-84]
!   _temp_1029 = &_temp_1025
	add	r14,-84,r1
	store	r1,[r14+-12]
!   make sure array has size 15
	load	[r14+-88],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,0
	be	_Label_3096
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3096:
!   make sure array has size 15
	load	[r14+-12],r1
	load	[r1],r1
	set	15, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1024 = *_temp_1029  (sizeInBytes=64)
	load	[r14+-12],r5
	load	[r14+-88],r4
	mov	16,r3
_Label_3097:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3097
! RETURN STATEMENT...
	mov	574,r13		! source line 574
	mov	"\0\0RE",r10
	add	r15,184,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_1:
	.word	_sourceFileName
	.word	_Label_1030
	.word	8		! total size of parameters
	.word	180		! frame size = 180
	.word	_Label_1031
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1032
	.word	12
	.word	4
	.word	_Label_1033
	.word	-12
	.word	4
	.word	_Label_1034
	.word	-16
	.word	4
	.word	_Label_1035
	.word	-20
	.word	4
	.word	_Label_1036
	.word	-84
	.word	64
	.word	_Label_1037
	.word	-88
	.word	4
	.word	_Label_1038
	.word	-92
	.word	4
	.word	_Label_1039
	.word	-96
	.word	4
	.word	_Label_1040
	.word	-100
	.word	4
	.word	_Label_1041
	.word	-156
	.word	56
	.word	_Label_1042
	.word	-160
	.word	4
	.word	_Label_1043
	.word	-164
	.word	4
	.word	_Label_1044
	.word	-168
	.word	4
	.word	_Label_1045
	.word	-172
	.word	4
	.word	_Label_1046
	.word	-176
	.word	4
	.word	_Label_1047
	.word	-180
	.word	4
	.word	_Label_1048
	.word	-184
	.word	4
	.word	_Label_1049
	.word	-188
	.word	4
	.word	0
_Label_1030:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1031:
	.ascii	"Pself\0"
	.align
_Label_1032:
	.byte	'P'
	.ascii	"n\0"
	.align
_Label_1033:
	.byte	'?'
	.ascii	"_temp_1029\0"
	.align
_Label_1034:
	.byte	'?'
	.ascii	"_temp_1027\0"
	.align
_Label_1035:
	.byte	'?'
	.ascii	"_temp_1026\0"
	.align
_Label_1036:
	.byte	'?'
	.ascii	"_temp_1025\0"
	.align
_Label_1037:
	.byte	'?'
	.ascii	"_temp_1024\0"
	.align
_Label_1038:
	.byte	'?'
	.ascii	"_temp_1023\0"
	.align
_Label_1039:
	.byte	'?'
	.ascii	"_temp_1021\0"
	.align
_Label_1040:
	.byte	'?'
	.ascii	"_temp_1020\0"
	.align
_Label_1041:
	.byte	'?'
	.ascii	"_temp_1019\0"
	.align
_Label_1042:
	.byte	'?'
	.ascii	"_temp_1018\0"
	.align
_Label_1043:
	.byte	'?'
	.ascii	"_temp_1017\0"
	.align
_Label_1044:
	.byte	'?'
	.ascii	"_temp_1016\0"
	.align
_Label_1045:
	.byte	'?'
	.ascii	"_temp_1015\0"
	.align
_Label_1046:
	.byte	'?'
	.ascii	"_temp_1014\0"
	.align
_Label_1047:
	.byte	'?'
	.ascii	"_temp_1013\0"
	.align
_Label_1048:
	.byte	'?'
	.ascii	"_temp_1012\0"
	.align
_Label_1049:
	.byte	'?'
	.ascii	"_temp_1011\0"
	.align
! 
! ===============  METHOD Fork  ===============
! 
_Method_P_Kernel_Thread_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_2,r1
	push	r1
	mov	7,r1
_Label_3098:
	push	r0
	sub	r1,1,r1
	bne	_Label_3098
	mov	579,r13		! source line 579
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	590,r13		! source line 590
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	590,r13		! source line 590
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-24]
! ASSIGNMENT STATEMENT...
	mov	592,r13		! source line 592
	mov	"\0\0AS",r10
!   initialFunction = fun		(4 bytes)
	load	[r14+12],r1
	load	[r14+8],r2
	store	r1,[r2+80]
! ASSIGNMENT STATEMENT...
	mov	593,r13		! source line 593
	mov	"\0\0AS",r10
!   initialArgument = arg		(4 bytes)
	load	[r14+16],r1
	load	[r14+8],r2
	store	r1,[r2+84]
! ASSIGNMENT STATEMENT...
	mov	594,r13		! source line 594
	mov	"\0\0AS",r10
!   stackTop = stackTop - 4		(int)
	load	[r14+8],r1
	load	[r1+68],r1
	mov	4,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+68]
! ASSIGNMENT STATEMENT...
	mov	595,r13		! source line 595
	mov	"\0\0AS",r10
!   if intIsZero (stackTop) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1050 = ThreadStartUp
	set	ThreadStartUp,r1
	store	r1,[r14+-20]
!   Data Move: *stackTop = _temp_1050  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r14+8],r2
	load	[r2+68],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	596,r13		! source line 596
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	597,r13		! source line 597
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1052 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1051  sizeInBytes=4
	load	[r14+-16],r1
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
	mov	598,r13		! source line 598
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	598,r13		! source line 598
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
! RETURN STATEMENT...
	mov	598,r13		! source line 598
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_2:
	.word	_sourceFileName
	.word	_Label_1053
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1054
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1055
	.word	12
	.word	4
	.word	_Label_1056
	.word	16
	.word	4
	.word	_Label_1057
	.word	-12
	.word	4
	.word	_Label_1058
	.word	-16
	.word	4
	.word	_Label_1059
	.word	-20
	.word	4
	.word	_Label_1060
	.word	-24
	.word	4
	.word	_Label_1061
	.word	-28
	.word	4
	.word	0
_Label_1053:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Fork\0"
	.align
_Label_1054:
	.ascii	"Pself\0"
	.align
_Label_1055:
	.byte	'P'
	.ascii	"fun\0"
	.align
_Label_1056:
	.byte	'I'
	.ascii	"arg\0"
	.align
_Label_1057:
	.byte	'?'
	.ascii	"_temp_1052\0"
	.align
_Label_1058:
	.byte	'?'
	.ascii	"_temp_1051\0"
	.align
_Label_1059:
	.byte	'?'
	.ascii	"_temp_1050\0"
	.align
_Label_1060:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1061:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Yield  ===============
! 
_Method_P_Kernel_Thread_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_3,r1
	push	r1
	mov	11,r1
_Label_3099:
	push	r0
	sub	r1,1,r1
	bne	_Label_3099
	mov	603,r13		! source line 603
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	619,r13		! source line 619
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if _temp_1064 == _P_Kernel_currentThread then goto _Label_1063		(int)
	load	[r14+-32],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1063
!	jmp	_Label_1062
_Label_1062:
! THEN...
	mov	620,r13		! source line 620
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1065 = _StringConst_83
	set	_StringConst_83,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1065  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	620,r13		! source line 620
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1063:
! ASSIGNMENT STATEMENT...
	mov	622,r13		! source line 622
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	622,r13		! source line 622
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldIntStat  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	626,r13		! source line 626
	mov	"\0\0AS",r10
	mov	626,r13		! source line 626
	mov	"\0\0SE",r10
!   _temp_1066 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	627,r13		! source line 627
	mov	"\0\0IF",r10
!   if nextTh == 0 then goto _Label_1068		(int)
	load	[r14+-36],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_1068
!	jmp	_Label_1067
_Label_1067:
! THEN...
	mov	631,r13		! source line 631
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	631,r13		! source line 631
	mov	"\0\0IF",r10
!   if status != 4 then goto _Label_1070		(int)
	load	[r14+8],r1
	load	[r1+76],r1
	mov	4,r2
	cmp	r1,r2
	bne	_Label_1070
!	jmp	_Label_1069
_Label_1069:
! THEN...
	mov	632,r13		! source line 632
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1071 = _StringConst_84
	set	_StringConst_84,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1071  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	632,r13		! source line 632
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1070:
! ASSIGNMENT STATEMENT...
	mov	634,r13		! source line 634
	mov	"\0\0AS",r10
!   status = 2		(4 bytes)
	mov	2,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! SEND STATEMENT...
	mov	635,r13		! source line 635
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   _temp_1073 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1072  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	636,r13		! source line 636
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! END IF...
_Label_1068:
! ASSIGNMENT STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldIntStat  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	638,r13		! source line 638
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=junk  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! RETURN STATEMENT...
	mov	638,r13		! source line 638
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_3:
	.word	_sourceFileName
	.word	_Label_1074
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1075
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1076
	.word	-12
	.word	4
	.word	_Label_1077
	.word	-16
	.word	4
	.word	_Label_1078
	.word	-20
	.word	4
	.word	_Label_1079
	.word	-24
	.word	4
	.word	_Label_1080
	.word	-28
	.word	4
	.word	_Label_1081
	.word	-32
	.word	4
	.word	_Label_1082
	.word	-36
	.word	4
	.word	_Label_1083
	.word	-40
	.word	4
	.word	_Label_1084
	.word	-44
	.word	4
	.word	0
_Label_1074:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Yield\0"
	.align
_Label_1075:
	.ascii	"Pself\0"
	.align
_Label_1076:
	.byte	'?'
	.ascii	"_temp_1073\0"
	.align
_Label_1077:
	.byte	'?'
	.ascii	"_temp_1072\0"
	.align
_Label_1078:
	.byte	'?'
	.ascii	"_temp_1071\0"
	.align
_Label_1079:
	.byte	'?'
	.ascii	"_temp_1066\0"
	.align
_Label_1080:
	.byte	'?'
	.ascii	"_temp_1065\0"
	.align
_Label_1081:
	.byte	'?'
	.ascii	"_temp_1064\0"
	.align
_Label_1082:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
_Label_1083:
	.byte	'I'
	.ascii	"oldIntStat\0"
	.align
_Label_1084:
	.byte	'I'
	.ascii	"junk\0"
	.align
! 
! ===============  METHOD Sleep  ===============
! 
_Method_P_Kernel_Thread_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_4,r1
	push	r1
	mov	7,r1
_Label_3100:
	push	r0
	sub	r1,1,r1
	bne	_Label_3100
	mov	643,r13		! source line 643
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	655,r13		! source line 655
	mov	"\0\0IF",r10
!   if _P_Kernel_currentInterruptStatus == 2 then goto _Label_1086		(int)
	set	_P_Kernel_currentInterruptStatus,r1
	load	[r1],r1
	mov	2,r2
	cmp	r1,r2
	be	_Label_1086
!	jmp	_Label_1085
_Label_1085:
! THEN...
	mov	656,r13		! source line 656
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1087 = _StringConst_85
	set	_StringConst_85,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1087  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	656,r13		! source line 656
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1086:
! IF STATEMENT...
	mov	659,r13		! source line 659
	mov	"\0\0IF",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if _temp_1090 == _P_Kernel_currentThread then goto _Label_1089		(int)
	load	[r14+-24],r1
	set	_P_Kernel_currentThread,r2
	load	[r2],r2
	cmp	r1,r2
	be	_Label_1089
!	jmp	_Label_1088
_Label_1088:
! THEN...
	mov	660,r13		! source line 660
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1091 = _StringConst_86
	set	_StringConst_86,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1091  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	660,r13		! source line 660
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1089:
! ASSIGNMENT STATEMENT...
	mov	665,r13		! source line 665
	mov	"\0\0AS",r10
!   status = 4		(4 bytes)
	mov	4,r1
	load	[r14+8],r2
	store	r1,[r2+76]
! ASSIGNMENT STATEMENT...
	mov	666,r13		! source line 666
	mov	"\0\0AS",r10
	mov	666,r13		! source line 666
	mov	"\0\0SE",r10
!   _temp_1092 = &_P_Kernel_readyList
	set	_P_Kernel_readyList,r1
	store	r1,[r14+-16]
!   Send message Remove
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=nextTh  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	667,r13		! source line 667
	mov	"\0\0IF",r10
!   if intIsZero (nextTh) then goto _Label_1093
	load	[r14+-32],r1
	cmp	r1,r0
	be	_Label_1093
	jmp	_Label_1094
_Label_1093:
! THEN...
	mov	668,r13		! source line 668
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1095 = _StringConst_87
	set	_StringConst_87,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1095  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	668,r13		! source line 668
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1094:
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=nextTh  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	670,r13		! source line 670
	mov	"\0\0CA",r10
	call	_P_Kernel_Run
! RETURN STATEMENT...
	mov	670,r13		! source line 670
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_4:
	.word	_sourceFileName
	.word	_Label_1096
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1097
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1098
	.word	-12
	.word	4
	.word	_Label_1099
	.word	-16
	.word	4
	.word	_Label_1100
	.word	-20
	.word	4
	.word	_Label_1101
	.word	-24
	.word	4
	.word	_Label_1102
	.word	-28
	.word	4
	.word	_Label_1103
	.word	-32
	.word	4
	.word	0
_Label_1096:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Sleep\0"
	.align
_Label_1097:
	.ascii	"Pself\0"
	.align
_Label_1098:
	.byte	'?'
	.ascii	"_temp_1095\0"
	.align
_Label_1099:
	.byte	'?'
	.ascii	"_temp_1092\0"
	.align
_Label_1100:
	.byte	'?'
	.ascii	"_temp_1091\0"
	.align
_Label_1101:
	.byte	'?'
	.ascii	"_temp_1090\0"
	.align
_Label_1102:
	.byte	'?'
	.ascii	"_temp_1087\0"
	.align
_Label_1103:
	.byte	'P'
	.ascii	"nextTh\0"
	.align
! 
! ===============  METHOD CheckOverflow  ===============
! 
_Method_P_Kernel_Thread_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_5,r1
	push	r1
	mov	9,r1
_Label_3101:
	push	r0
	sub	r1,1,r1
	bne	_Label_3101
	mov	675,r13		! source line 675
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0IF",r10
!   _temp_1107 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-36]
!   Move address of _temp_1107 [0 ] into _temp_1108
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_1106 = *_temp_1108  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if _temp_1106 == 606348324 then goto _Label_1105		(int)
	load	[r14+-40],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1105
!	jmp	_Label_1104
_Label_1104:
! THEN...
	mov	682,r13		! source line 682
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1109 = _StringConst_88
	set	_StringConst_88,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1109  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	682,r13		! source line 682
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
	jmp	_Label_1110
_Label_1105:
! ELSE...
	mov	683,r13		! source line 683
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	683,r13		! source line 683
	mov	"\0\0IF",r10
!   _temp_1114 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-20]
!   Move address of _temp_1114 [999 ] into _temp_1115
!     make sure index expr is >= 0
	mov	999,r2
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
!   Data Move: _temp_1113 = *_temp_1115  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_1113 == 606348324 then goto _Label_1112		(int)
	load	[r14+-24],r1
	set	606348324,r2
	cmp	r1,r2
	be	_Label_1112
!	jmp	_Label_1111
_Label_1111:
! THEN...
	mov	684,r13		! source line 684
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1116 = _StringConst_89
	set	_StringConst_89,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1116  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	684,r13		! source line 684
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1112:
! END IF...
_Label_1110:
! RETURN STATEMENT...
	mov	681,r13		! source line 681
	mov	"\0\0RE",r10
	add	r15,40,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_5:
	.word	_sourceFileName
	.word	_Label_1117
	.word	4		! total size of parameters
	.word	36		! frame size = 36
	.word	_Label_1118
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1119
	.word	-12
	.word	4
	.word	_Label_1120
	.word	-16
	.word	4
	.word	_Label_1121
	.word	-20
	.word	4
	.word	_Label_1122
	.word	-24
	.word	4
	.word	_Label_1123
	.word	-28
	.word	4
	.word	_Label_1124
	.word	-32
	.word	4
	.word	_Label_1125
	.word	-36
	.word	4
	.word	_Label_1126
	.word	-40
	.word	4
	.word	0
_Label_1117:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"CheckOverflow\0"
	.align
_Label_1118:
	.ascii	"Pself\0"
	.align
_Label_1119:
	.byte	'?'
	.ascii	"_temp_1116\0"
	.align
_Label_1120:
	.byte	'?'
	.ascii	"_temp_1115\0"
	.align
_Label_1121:
	.byte	'?'
	.ascii	"_temp_1114\0"
	.align
_Label_1122:
	.byte	'?'
	.ascii	"_temp_1113\0"
	.align
_Label_1123:
	.byte	'?'
	.ascii	"_temp_1109\0"
	.align
_Label_1124:
	.byte	'?'
	.ascii	"_temp_1108\0"
	.align
_Label_1125:
	.byte	'?'
	.ascii	"_temp_1107\0"
	.align
_Label_1126:
	.byte	'?'
	.ascii	"_temp_1106\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_Thread_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_Thread_6,r1
	push	r1
	mov	49,r1
_Label_3102:
	push	r0
	sub	r1,1,r1
	bne	_Label_3102
	mov	690,r13		! source line 690
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	696,r13		! source line 696
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	696,r13		! source line 696
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! CALL STATEMENT...
!   _temp_1127 = _StringConst_90
	set	_StringConst_90,r1
	store	r1,[r14+-188]
!   Prepare Argument: offset=8  value=_temp_1127  sizeInBytes=4
	load	[r14+-188],r1
	store	r1,[r15+0]
!   Call the function
	mov	697,r13		! source line 697
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=name  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+72],r1
	store	r1,[r15+0]
!   Call the function
	mov	698,r13		! source line 698
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1128 = _StringConst_91
	set	_StringConst_91,r1
	store	r1,[r14+-184]
!   Prepare Argument: offset=8  value=_temp_1128  sizeInBytes=4
	load	[r14+-184],r1
	store	r1,[r15+0]
!   Call the function
	mov	699,r13		! source line 699
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-180]
!   Prepare Argument: offset=8  value=_temp_1129  sizeInBytes=4
	load	[r14+-180],r1
	store	r1,[r15+0]
!   Call the function
	mov	700,r13		! source line 700
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1130 = _StringConst_92
	set	_StringConst_92,r1
	store	r1,[r14+-176]
!   Prepare Argument: offset=8  value=_temp_1130  sizeInBytes=4
	load	[r14+-176],r1
	store	r1,[r15+0]
!   Call the function
	mov	701,r13		! source line 701
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1131 = _StringConst_93
	set	_StringConst_93,r1
	store	r1,[r14+-172]
!   Prepare Argument: offset=8  value=_temp_1131  sizeInBytes=4
	load	[r14+-172],r1
	store	r1,[r15+0]
!   Call the function
	mov	702,r13		! source line 702
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	703,r13		! source line 703
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1136 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-168]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1137 = 12		(4 bytes)
	mov	12,r1
	store	r1,[r14+-164]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1136  (sizeInBytes=4)
	load	[r14+-168],r1
	store	r1,[r14+-192]
_Label_1132:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1137 then goto _Label_1135		
	load	[r14+-192],r1
	load	[r14+-164],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1135
_Label_1133:
	mov	703,r13		! source line 703
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1138 = _StringConst_94
	set	_StringConst_94,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1138  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	704,r13		! source line 704
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1139 = i + 2		(int)
	load	[r14+-192],r1
	mov	2,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_1139  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	705,r13		! source line 705
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1140 = _StringConst_95
	set	_StringConst_95,r1
	store	r1,[r14+-152]
!   Prepare Argument: offset=8  value=_temp_1140  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+0]
!   Call the function
	mov	706,r13		! source line 706
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1142 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-144]
!   Move address of _temp_1142 [i ] into _temp_1143
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-144],r1
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
	store	r2,[r14+-140]
!   Data Move: _temp_1141 = *_temp_1143  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r1],r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1141  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	707,r13		! source line 707
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1144 = _StringConst_96
	set	_StringConst_96,r1
	store	r1,[r14+-136]
!   Prepare Argument: offset=8  value=_temp_1144  sizeInBytes=4
	load	[r14+-136],r1
	store	r1,[r15+0]
!   Call the function
	mov	708,r13		! source line 708
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1146 = &regs
	load	[r14+8],r1
	add	r1,12,r1
	store	r1,[r14+-128]
!   Move address of _temp_1146 [i ] into _temp_1147
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-128],r1
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
	store	r2,[r14+-124]
!   Data Move: _temp_1145 = *_temp_1147  (sizeInBytes=4)
	load	[r14+-124],r1
	load	[r1],r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1145  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	709,r13		! source line 709
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1148 = _StringConst_97
	set	_StringConst_97,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_1148  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Call the function
	mov	710,r13		! source line 710
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1134:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1132
! END FOR
_Label_1135:
! CALL STATEMENT...
!   _temp_1149 = _StringConst_98
	set	_StringConst_98,r1
	store	r1,[r14+-116]
!   _temp_1150 = stackTop		(4 bytes)
	load	[r14+8],r1
	load	[r1+68],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1149  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1150  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Call the function
	mov	712,r13		! source line 712
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! CALL STATEMENT...
!   _temp_1151 = _StringConst_99
	set	_StringConst_99,r1
	store	r1,[r14+-108]
!   _temp_1153 = &systemStack
	load	[r14+8],r1
	add	r1,88,r1
	store	r1,[r14+-100]
!   Move address of _temp_1153 [0 ] into _temp_1154
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-100],r1
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
	store	r2,[r14+-96]
!   _temp_1152 = _temp_1154		(4 bytes)
	load	[r14+-96],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1151  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_1152  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Call the function
	mov	713,r13		! source line 713
	mov	"\0\0CA",r10
	call	_P_System_printHexVar
! SWITCH STATEMENT (using series of tests)...
	mov	714,r13		! source line 714
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   Branch to the right case label
	load	[r14+8],r1
	load	[r1+76],r1
	cmp	r1,1
	be	_Label_1157
	cmp	r1,2
	be	_Label_1158
	cmp	r1,3
	be	_Label_1159
	cmp	r1,4
	be	_Label_1160
	cmp	r1,5
	be	_Label_1161
	jmp	_Label_1155
! CASE 1...
_Label_1157:
! CALL STATEMENT...
!   _temp_1162 = _StringConst_100
	set	_StringConst_100,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_1162  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	716,r13		! source line 716
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	717,r13		! source line 717
	mov	"\0\0BR",r10
	jmp	_Label_1156
! CASE 2...
_Label_1158:
! CALL STATEMENT...
!   _temp_1163 = _StringConst_101
	set	_StringConst_101,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_1163  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   Call the function
	mov	719,r13		! source line 719
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	720,r13		! source line 720
	mov	"\0\0BR",r10
	jmp	_Label_1156
! CASE 3...
_Label_1159:
! CALL STATEMENT...
!   _temp_1164 = _StringConst_102
	set	_StringConst_102,r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1164  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	722,r13		! source line 722
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	723,r13		! source line 723
	mov	"\0\0BR",r10
	jmp	_Label_1156
! CASE 4...
_Label_1160:
! CALL STATEMENT...
!   _temp_1165 = _StringConst_103
	set	_StringConst_103,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_1165  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	725,r13		! source line 725
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	726,r13		! source line 726
	mov	"\0\0BR",r10
	jmp	_Label_1156
! CASE 5...
_Label_1161:
! CALL STATEMENT...
!   _temp_1166 = _StringConst_104
	set	_StringConst_104,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1166  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	728,r13		! source line 728
	mov	"\0\0CE",r10
	call	print
! BREAK STATEMENT...
	mov	729,r13		! source line 729
	mov	"\0\0BR",r10
	jmp	_Label_1156
! DEFAULT CASE...
_Label_1155:
! CALL STATEMENT...
!   _temp_1167 = _StringConst_105
	set	_StringConst_105,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1167  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	731,r13		! source line 731
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_1156:
! CALL STATEMENT...
!   _temp_1168 = _StringConst_106
	set	_StringConst_106,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_1168  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	733,r13		! source line 733
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=isUserThread  sizeInBytes=1
	load	[r14+8],r1
	loadb	[r1+4092],r1
	storeb	r1,[r15+0]
!   Call the function
	mov	734,r13		! source line 734
	mov	"\0\0CE",r10
	call	printBool
! CALL STATEMENT...
!   Call the function
	mov	735,r13		! source line 735
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_1169 = _StringConst_107
	set	_StringConst_107,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1169  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	736,r13		! source line 736
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	737,r13		! source line 737
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1174 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1175 = 14		(4 bytes)
	mov	14,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1174  (sizeInBytes=4)
	load	[r14+-60],r1
	store	r1,[r14+-192]
_Label_1170:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1175 then goto _Label_1173		
	load	[r14+-192],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1173
_Label_1171:
	mov	737,r13		! source line 737
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1176 = _StringConst_108
	set	_StringConst_108,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1176  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	738,r13		! source line 738
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1177 = i + 1		(int)
	load	[r14+-192],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1177  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	739,r13		! source line 739
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1178 = _StringConst_109
	set	_StringConst_109,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1178  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	740,r13		! source line 740
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1180 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-36]
!   Move address of _temp_1180 [i ] into _temp_1181
!     make sure index expr is >= 0
	load	[r14+-192],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   Data Move: _temp_1179 = *_temp_1181  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1179  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	741,r13		! source line 741
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1182 = _StringConst_110
	set	_StringConst_110,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1182  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	742,r13		! source line 742
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1184 = &userRegs
	load	[r14+8],r1
	add	r1,4096,r1
	store	r1,[r14+-20]
!   Move address of _temp_1184 [i ] into _temp_1185
!     make sure index expr is >= 0
	load	[r14+-192],r2
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
!   Data Move: _temp_1183 = *_temp_1185  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1183  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	743,r13		! source line 743
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1186 = _StringConst_111
	set	_StringConst_111,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1186  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	744,r13		! source line 744
	mov	"\0\0CE",r10
	call	print
!   Increment the FOR-LOOP index variable and jump back
_Label_1172:
!   i = i + 1
	load	[r14+-192],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-192]
	jmp	_Label_1170
! END FOR
_Label_1173:
! ASSIGNMENT STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-196],r1
	store	r1,[r15+0]
!   Call the function
	mov	746,r13		! source line 746
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-196]
! RETURN STATEMENT...
	mov	746,r13		! source line 746
	mov	"\0\0RE",r10
	add	r15,200,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_Thread_6:
	.word	_sourceFileName
	.word	_Label_1187
	.word	4		! total size of parameters
	.word	196		! frame size = 196
	.word	_Label_1188
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1189
	.word	-12
	.word	4
	.word	_Label_1190
	.word	-16
	.word	4
	.word	_Label_1191
	.word	-20
	.word	4
	.word	_Label_1192
	.word	-24
	.word	4
	.word	_Label_1193
	.word	-28
	.word	4
	.word	_Label_1194
	.word	-32
	.word	4
	.word	_Label_1195
	.word	-36
	.word	4
	.word	_Label_1196
	.word	-40
	.word	4
	.word	_Label_1197
	.word	-44
	.word	4
	.word	_Label_1198
	.word	-48
	.word	4
	.word	_Label_1199
	.word	-52
	.word	4
	.word	_Label_1200
	.word	-56
	.word	4
	.word	_Label_1201
	.word	-60
	.word	4
	.word	_Label_1202
	.word	-64
	.word	4
	.word	_Label_1203
	.word	-68
	.word	4
	.word	_Label_1204
	.word	-72
	.word	4
	.word	_Label_1205
	.word	-76
	.word	4
	.word	_Label_1206
	.word	-80
	.word	4
	.word	_Label_1207
	.word	-84
	.word	4
	.word	_Label_1208
	.word	-88
	.word	4
	.word	_Label_1209
	.word	-92
	.word	4
	.word	_Label_1210
	.word	-96
	.word	4
	.word	_Label_1211
	.word	-100
	.word	4
	.word	_Label_1212
	.word	-104
	.word	4
	.word	_Label_1213
	.word	-108
	.word	4
	.word	_Label_1214
	.word	-112
	.word	4
	.word	_Label_1215
	.word	-116
	.word	4
	.word	_Label_1216
	.word	-120
	.word	4
	.word	_Label_1217
	.word	-124
	.word	4
	.word	_Label_1218
	.word	-128
	.word	4
	.word	_Label_1219
	.word	-132
	.word	4
	.word	_Label_1220
	.word	-136
	.word	4
	.word	_Label_1221
	.word	-140
	.word	4
	.word	_Label_1222
	.word	-144
	.word	4
	.word	_Label_1223
	.word	-148
	.word	4
	.word	_Label_1224
	.word	-152
	.word	4
	.word	_Label_1225
	.word	-156
	.word	4
	.word	_Label_1226
	.word	-160
	.word	4
	.word	_Label_1227
	.word	-164
	.word	4
	.word	_Label_1228
	.word	-168
	.word	4
	.word	_Label_1229
	.word	-172
	.word	4
	.word	_Label_1230
	.word	-176
	.word	4
	.word	_Label_1231
	.word	-180
	.word	4
	.word	_Label_1232
	.word	-184
	.word	4
	.word	_Label_1233
	.word	-188
	.word	4
	.word	_Label_1234
	.word	-192
	.word	4
	.word	_Label_1235
	.word	-196
	.word	4
	.word	0
_Label_1187:
	.ascii	"Thread"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1188:
	.ascii	"Pself\0"
	.align
_Label_1189:
	.byte	'?'
	.ascii	"_temp_1186\0"
	.align
_Label_1190:
	.byte	'?'
	.ascii	"_temp_1185\0"
	.align
_Label_1191:
	.byte	'?'
	.ascii	"_temp_1184\0"
	.align
_Label_1192:
	.byte	'?'
	.ascii	"_temp_1183\0"
	.align
_Label_1193:
	.byte	'?'
	.ascii	"_temp_1182\0"
	.align
_Label_1194:
	.byte	'?'
	.ascii	"_temp_1181\0"
	.align
_Label_1195:
	.byte	'?'
	.ascii	"_temp_1180\0"
	.align
_Label_1196:
	.byte	'?'
	.ascii	"_temp_1179\0"
	.align
_Label_1197:
	.byte	'?'
	.ascii	"_temp_1178\0"
	.align
_Label_1198:
	.byte	'?'
	.ascii	"_temp_1177\0"
	.align
_Label_1199:
	.byte	'?'
	.ascii	"_temp_1176\0"
	.align
_Label_1200:
	.byte	'?'
	.ascii	"_temp_1175\0"
	.align
_Label_1201:
	.byte	'?'
	.ascii	"_temp_1174\0"
	.align
_Label_1202:
	.byte	'?'
	.ascii	"_temp_1169\0"
	.align
_Label_1203:
	.byte	'?'
	.ascii	"_temp_1168\0"
	.align
_Label_1204:
	.byte	'?'
	.ascii	"_temp_1167\0"
	.align
_Label_1205:
	.byte	'?'
	.ascii	"_temp_1166\0"
	.align
_Label_1206:
	.byte	'?'
	.ascii	"_temp_1165\0"
	.align
_Label_1207:
	.byte	'?'
	.ascii	"_temp_1164\0"
	.align
_Label_1208:
	.byte	'?'
	.ascii	"_temp_1163\0"
	.align
_Label_1209:
	.byte	'?'
	.ascii	"_temp_1162\0"
	.align
_Label_1210:
	.byte	'?'
	.ascii	"_temp_1154\0"
	.align
_Label_1211:
	.byte	'?'
	.ascii	"_temp_1153\0"
	.align
_Label_1212:
	.byte	'?'
	.ascii	"_temp_1152\0"
	.align
_Label_1213:
	.byte	'?'
	.ascii	"_temp_1151\0"
	.align
_Label_1214:
	.byte	'?'
	.ascii	"_temp_1150\0"
	.align
_Label_1215:
	.byte	'?'
	.ascii	"_temp_1149\0"
	.align
_Label_1216:
	.byte	'?'
	.ascii	"_temp_1148\0"
	.align
_Label_1217:
	.byte	'?'
	.ascii	"_temp_1147\0"
	.align
_Label_1218:
	.byte	'?'
	.ascii	"_temp_1146\0"
	.align
_Label_1219:
	.byte	'?'
	.ascii	"_temp_1145\0"
	.align
_Label_1220:
	.byte	'?'
	.ascii	"_temp_1144\0"
	.align
_Label_1221:
	.byte	'?'
	.ascii	"_temp_1143\0"
	.align
_Label_1222:
	.byte	'?'
	.ascii	"_temp_1142\0"
	.align
_Label_1223:
	.byte	'?'
	.ascii	"_temp_1141\0"
	.align
_Label_1224:
	.byte	'?'
	.ascii	"_temp_1140\0"
	.align
_Label_1225:
	.byte	'?'
	.ascii	"_temp_1139\0"
	.align
_Label_1226:
	.byte	'?'
	.ascii	"_temp_1138\0"
	.align
_Label_1227:
	.byte	'?'
	.ascii	"_temp_1137\0"
	.align
_Label_1228:
	.byte	'?'
	.ascii	"_temp_1136\0"
	.align
_Label_1229:
	.byte	'?'
	.ascii	"_temp_1131\0"
	.align
_Label_1230:
	.byte	'?'
	.ascii	"_temp_1130\0"
	.align
_Label_1231:
	.byte	'?'
	.ascii	"_temp_1129\0"
	.align
_Label_1232:
	.byte	'?'
	.ascii	"_temp_1128\0"
	.align
_Label_1233:
	.byte	'?'
	.ascii	"_temp_1127\0"
	.align
_Label_1234:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1235:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  CLASS ThreadManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ThreadManager:
	.word	_Label_1236
	jmp	_Method_P_Kernel_ThreadManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ThreadManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ThreadManager_3	! 12:	GetANewThread
	jmp	_Method_P_Kernel_ThreadManager_4	! 16:	FreeThread
	.word	0
! 
! Class descriptor:
! 
_Label_1236:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1237
	.word	_sourceFileName
	.word	208		! line number
	.word	41696		! size of instances, in bytes
	.word	_P_Kernel_ThreadManager
	.word	_P_System_Object
	.word	0
_Label_1237:
	.ascii	"ThreadManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ThreadManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_1,r1
	push	r1
	mov	11477,r1
_Label_3103:
	push	r0
	sub	r1,1,r1
	bne	_Label_3103
	mov	801,r13		! source line 801
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1238 = _StringConst_112
	set	_StringConst_112,r1
	set	-45896,r2
	store	r1,[r14+r2]
!   Prepare Argument: offset=8  value=_temp_1238  sizeInBytes=4
	set	-45896,r1
	load	[r14+r1],r1
	store	r1,[r15+0]
!   Call the function
	mov	809,r13		! source line 809
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	810,r13		! source line 810
	mov	"\0\0AS",r10
!   _temp_1239 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	set	-45892,r2
	store	r1,[r14+r2]
!   NEW ARRAY Constructor...
!   _temp_1241 = &_temp_1240
	set	-45888,r1
	add	r14,r1,r1
	store	r1,[r14+-4244]
!   _temp_1241 = _temp_1241 + 4
	load	[r14+-4244],r1
	add	r1,4,r1
	store	r1,[r14+-4244]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1243 = zeros  (sizeInBytes=4164)
	add	r14,-4236,r4
	mov	1041,r3
_Label_3104:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3104
!   _temp_1243 = _P_Kernel_Thread
	set	_P_Kernel_Thread,r1
	store	r1,[r14+-4236]
	mov	10,r1
	store	r1,[r14+-4240]
_Label_1245:
!   Data Move: *_temp_1241 = _temp_1243  (sizeInBytes=4164)
	add	r14,-4236,r5
	load	[r14+-4244],r4
	mov	1041,r3
_Label_3105:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3105
!   _temp_1241 = _temp_1241 + 4164
	load	[r14+-4244],r1
	add	r1,4164,r1
	store	r1,[r14+-4244]
!   _temp_1242 = _temp_1242 + -1
	load	[r14+-4240],r1
	add	r1,-1,r1
	store	r1,[r14+-4240]
!   if intNotZero (_temp_1242) then goto _Label_1245
	load	[r14+-4240],r1
	cmp	r1,r0
	bne	_Label_1245
!   Initialize the array size...
	mov	10,r1
	set	-45888,r2
	store	r1,[r14+r2]
!   _temp_1246 = &_temp_1240
	set	-45888,r1
	add	r14,r1,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	set	-45892,r1
	load	[r14+r1],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3106
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3106:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1239 = *_temp_1246  (sizeInBytes=41644)
	load	[r14+-68],r5
	set	-45892,r4
	load	[r14+r4],r4
	mov	10411,r3
_Label_3107:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3107
! ASSIGNMENT STATEMENT...
	mov	811,r13		! source line 811
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	set	41648,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r11
	set	41648,r2
	store	r1,[r11+r2]
! FOR STATEMENT...
	mov	812,r13		! source line 812
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1252 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-60]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1253 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-56]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1252  (sizeInBytes=4)
	load	[r14+-60],r1
	set	-45900,r2
	store	r1,[r14+r2]
_Label_1248:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1253 then goto _Label_1251		
	set	-45900,r1
	load	[r14+r1],r1
	load	[r14+-56],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1251
_Label_1249:
	mov	812,r13		! source line 812
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	813,r13		! source line 813
	mov	"\0\0AS",r10
!   name = _StringConst_113
	set	_StringConst_113,r1
	set	-45908,r2
	store	r1,[r14+r2]
! ASSIGNMENT STATEMENT...
	mov	814,r13		! source line 814
	mov	"\0\0AS",r10
!   if intIsZero (name) then goto _runtimeErrorNullPointer
	set	-45908,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of name [7 ] into _temp_1254
!     make sure index expr is >= 0
	mov	7,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	set	-45908,r1
	load	[r14+r1],r1
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
	store	r2,[r14+-52]
!   _temp_1256 = i + 26		(int)
	set	-45900,r1
	load	[r14+r1],r1
	mov	26,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   _temp_1255 = intToChar (_temp_1256)
	load	[r14+-48],r1
	storeb	r1,[r14+-9]
!   Data Move: *_temp_1254 = _temp_1255  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-52],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	816,r13		! source line 816
	mov	"\0\0AS",r10
!   _temp_1257 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1257 [i ] into _temp_1258
!     make sure index expr is >= 0
	set	-45900,r2
	load	[r14+r2],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   th = _temp_1258		(4 bytes)
	load	[r14+-40],r1
	set	-45904,r2
	store	r1,[r14+r2]
! SEND STATEMENT...
	mov	817,r13		! source line 817
	mov	"\0\0SE",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	set	-45904,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=name  sizeInBytes=4
	set	-45908,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Send message Init
	set	-45904,r1
	load	[r14+r1],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	818,r13		! source line 818
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	set	-45904,r1
	load	[r14+r1],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1259 = th + 76
	set	-45904,r1
	load	[r14+r1],r1
	add	r1,76,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_1259 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-36],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	819,r13		! source line 819
	mov	"\0\0SE",r10
!   _temp_1260 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	set	-45904,r1
	load	[r14+r1],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1250:
!   i = i + 1
	set	-45900,r1
	load	[r14+r1],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	set	-45900,r2
	store	r1,[r14+r2]
	jmp	_Label_1248
! END FOR
_Label_1251:
! ASSIGNMENT STATEMENT...
	mov	822,r13		! source line 822
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: lock = zeros  (sizeInBytes=20)
	set	41660,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   lock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r11
	set	41660,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	823,r13		! source line 823
	mov	"\0\0SE",r10
!   _temp_1262 = &lock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Send message Init
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	824,r13		! source line 824
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: bell = zeros  (sizeInBytes=16)
	set	41680,r11
	load	[r14+8],r4
	add	r4,r11,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   bell = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r11
	set	41680,r2
	store	r1,[r11+r2]
! SEND STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0SE",r10
!   _temp_1264 = &bell
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Send message Init
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	825,r13		! source line 825
	mov	"\0\0RE",r10
	set	45912,r1
	add	r15,r1,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_1:
	.word	_sourceFileName
	.word	_Label_1265
	.word	4		! total size of parameters
	.word	45908		! frame size = 45908
	.word	_Label_1266
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1267
	.word	-16
	.word	4
	.word	_Label_1268
	.word	-20
	.word	4
	.word	_Label_1269
	.word	-24
	.word	4
	.word	_Label_1270
	.word	-28
	.word	4
	.word	_Label_1271
	.word	-32
	.word	4
	.word	_Label_1272
	.word	-36
	.word	4
	.word	_Label_1273
	.word	-40
	.word	4
	.word	_Label_1274
	.word	-44
	.word	4
	.word	_Label_1275
	.word	-48
	.word	4
	.word	_Label_1276
	.word	-9
	.word	1
	.word	_Label_1277
	.word	-52
	.word	4
	.word	_Label_1278
	.word	-56
	.word	4
	.word	_Label_1279
	.word	-60
	.word	4
	.word	_Label_1280
	.word	-64
	.word	4
	.word	_Label_1281
	.word	-68
	.word	4
	.word	_Label_1282
	.word	-72
	.word	4
	.word	_Label_1283
	.word	-4236
	.word	4164
	.word	_Label_1284
	.word	-4240
	.word	4
	.word	_Label_1285
	.word	-4244
	.word	4
	.word	_Label_1286
	.word	-45888
	.word	41644
	.word	_Label_1287
	.word	-45892
	.word	4
	.word	_Label_1288
	.word	-45896
	.word	4
	.word	_Label_1289
	.word	-45900
	.word	4
	.word	_Label_1290
	.word	-45904
	.word	4
	.word	_Label_1291
	.word	-45908
	.word	4
	.word	0
_Label_1265:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1266:
	.ascii	"Pself\0"
	.align
_Label_1267:
	.byte	'?'
	.ascii	"_temp_1264\0"
	.align
_Label_1268:
	.byte	'?'
	.ascii	"_temp_1263\0"
	.align
_Label_1269:
	.byte	'?'
	.ascii	"_temp_1262\0"
	.align
_Label_1270:
	.byte	'?'
	.ascii	"_temp_1261\0"
	.align
_Label_1271:
	.byte	'?'
	.ascii	"_temp_1260\0"
	.align
_Label_1272:
	.byte	'?'
	.ascii	"_temp_1259\0"
	.align
_Label_1273:
	.byte	'?'
	.ascii	"_temp_1258\0"
	.align
_Label_1274:
	.byte	'?'
	.ascii	"_temp_1257\0"
	.align
_Label_1275:
	.byte	'?'
	.ascii	"_temp_1256\0"
	.align
_Label_1276:
	.byte	'C'
	.ascii	"_temp_1255\0"
	.align
_Label_1277:
	.byte	'?'
	.ascii	"_temp_1254\0"
	.align
_Label_1278:
	.byte	'?'
	.ascii	"_temp_1253\0"
	.align
_Label_1279:
	.byte	'?'
	.ascii	"_temp_1252\0"
	.align
_Label_1280:
	.byte	'?'
	.ascii	"_temp_1247\0"
	.align
_Label_1281:
	.byte	'?'
	.ascii	"_temp_1246\0"
	.align
_Label_1282:
	.byte	'?'
	.ascii	"_temp_1244\0"
	.align
_Label_1283:
	.byte	'?'
	.ascii	"_temp_1243\0"
	.align
_Label_1284:
	.byte	'?'
	.ascii	"_temp_1242\0"
	.align
_Label_1285:
	.byte	'?'
	.ascii	"_temp_1241\0"
	.align
_Label_1286:
	.byte	'?'
	.ascii	"_temp_1240\0"
	.align
_Label_1287:
	.byte	'?'
	.ascii	"_temp_1239\0"
	.align
_Label_1288:
	.byte	'?'
	.ascii	"_temp_1238\0"
	.align
_Label_1289:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1290:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1291:
	.byte	'P'
	.ascii	"name\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ThreadManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_2,r1
	push	r1
	mov	15,r1
_Label_3108:
	push	r0
	sub	r1,1,r1
	bne	_Label_3108
	mov	830,r13		! source line 830
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	837,r13		! source line 837
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	837,r13		! source line 837
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! CALL STATEMENT...
!   _temp_1292 = _StringConst_114
	set	_StringConst_114,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1292  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	838,r13		! source line 838
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	839,r13		! source line 839
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1297 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1298 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1297  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-56]
_Label_1293:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1298 then goto _Label_1296		
	load	[r14+-56],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1296
_Label_1294:
	mov	839,r13		! source line 839
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1299 = _StringConst_115
	set	_StringConst_115,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1299  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	840,r13		! source line 840
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	841,r13		! source line 841
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1300 = _StringConst_116
	set	_StringConst_116,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1300  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	842,r13		! source line 842
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1302 = &threadTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1302 [i ] into _temp_1303
!     make sure index expr is >= 0
	load	[r14+-56],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	4164,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   _temp_1301 = _temp_1303		(4 bytes)
	load	[r14+-24],r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1301  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	843,r13		! source line 843
	mov	"\0\0CA",r10
	call	_function_221_ThreadPrintShort
!   Increment the FOR-LOOP index variable and jump back
_Label_1295:
!   i = i + 1
	load	[r14+-56],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1293
! END FOR
_Label_1296:
! CALL STATEMENT...
!   _temp_1304 = _StringConst_117
	set	_StringConst_117,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1304  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	845,r13		! source line 845
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	846,r13		! source line 846
	mov	"\0\0SE",r10
!   _temp_1305 = _function_220_PrintObjectAddr
	set	_function_220_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1306 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1305  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	847,r13		! source line 847
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	848,r13		! source line 848
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-60]
! RETURN STATEMENT...
	mov	848,r13		! source line 848
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_2:
	.word	_sourceFileName
	.word	_Label_1307
	.word	4		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1308
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1309
	.word	-12
	.word	4
	.word	_Label_1310
	.word	-16
	.word	4
	.word	_Label_1311
	.word	-20
	.word	4
	.word	_Label_1312
	.word	-24
	.word	4
	.word	_Label_1313
	.word	-28
	.word	4
	.word	_Label_1314
	.word	-32
	.word	4
	.word	_Label_1315
	.word	-36
	.word	4
	.word	_Label_1316
	.word	-40
	.word	4
	.word	_Label_1317
	.word	-44
	.word	4
	.word	_Label_1318
	.word	-48
	.word	4
	.word	_Label_1319
	.word	-52
	.word	4
	.word	_Label_1320
	.word	-56
	.word	4
	.word	_Label_1321
	.word	-60
	.word	4
	.word	0
_Label_1307:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1308:
	.ascii	"Pself\0"
	.align
_Label_1309:
	.byte	'?'
	.ascii	"_temp_1306\0"
	.align
_Label_1310:
	.byte	'?'
	.ascii	"_temp_1305\0"
	.align
_Label_1311:
	.byte	'?'
	.ascii	"_temp_1304\0"
	.align
_Label_1312:
	.byte	'?'
	.ascii	"_temp_1303\0"
	.align
_Label_1313:
	.byte	'?'
	.ascii	"_temp_1302\0"
	.align
_Label_1314:
	.byte	'?'
	.ascii	"_temp_1301\0"
	.align
_Label_1315:
	.byte	'?'
	.ascii	"_temp_1300\0"
	.align
_Label_1316:
	.byte	'?'
	.ascii	"_temp_1299\0"
	.align
_Label_1317:
	.byte	'?'
	.ascii	"_temp_1298\0"
	.align
_Label_1318:
	.byte	'?'
	.ascii	"_temp_1297\0"
	.align
_Label_1319:
	.byte	'?'
	.ascii	"_temp_1292\0"
	.align
_Label_1320:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1321:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewThread  ===============
! 
_Method_P_Kernel_ThreadManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_3,r1
	push	r1
	mov	10,r1
_Label_3109:
	push	r0
	sub	r1,1,r1
	bne	_Label_3109
	mov	853,r13		! source line 853
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	859,r13		! source line 859
	mov	"\0\0SE",r10
!   _temp_1322 = &lock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-36]
!   Send message Lock
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	860,r13		! source line 860
	mov	"\0\0WH",r10
_Label_1323:
	mov	860,r13		! source line 860
	mov	"\0\0SE",r10
!   _temp_1326 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message IsEmpty
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1324 else goto _Label_1325
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1325
	jmp	_Label_1324
_Label_1324:
	mov	860,r13		! source line 860
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	861,r13		! source line 861
	mov	"\0\0SE",r10
!   _temp_1327 = &lock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-28]
!   _temp_1328 = &bell
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1327  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1323
_Label_1325:
! ASSIGNMENT STATEMENT...
	mov	863,r13		! source line 863
	mov	"\0\0AS",r10
	mov	863,r13		! source line 863
	mov	"\0\0SE",r10
!   _temp_1329 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   Send message Remove
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=th  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	864,r13		! source line 864
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1330 = th + 76
	load	[r14+-40],r1
	add	r1,76,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1330 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	865,r13		! source line 865
	mov	"\0\0SE",r10
!   _temp_1331 = &lock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	866,r13		! source line 866
	mov	"\0\0RE",r10
!   ReturnResult: th  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_3:
	.word	_sourceFileName
	.word	_Label_1332
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1333
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1334
	.word	-12
	.word	4
	.word	_Label_1335
	.word	-16
	.word	4
	.word	_Label_1336
	.word	-20
	.word	4
	.word	_Label_1337
	.word	-24
	.word	4
	.word	_Label_1338
	.word	-28
	.word	4
	.word	_Label_1339
	.word	-32
	.word	4
	.word	_Label_1340
	.word	-36
	.word	4
	.word	_Label_1341
	.word	-40
	.word	4
	.word	0
_Label_1332:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"GetANewThread\0"
	.align
_Label_1333:
	.ascii	"Pself\0"
	.align
_Label_1334:
	.byte	'?'
	.ascii	"_temp_1331\0"
	.align
_Label_1335:
	.byte	'?'
	.ascii	"_temp_1330\0"
	.align
_Label_1336:
	.byte	'?'
	.ascii	"_temp_1329\0"
	.align
_Label_1337:
	.byte	'?'
	.ascii	"_temp_1328\0"
	.align
_Label_1338:
	.byte	'?'
	.ascii	"_temp_1327\0"
	.align
_Label_1339:
	.byte	'?'
	.ascii	"_temp_1326\0"
	.align
_Label_1340:
	.byte	'?'
	.ascii	"_temp_1322\0"
	.align
_Label_1341:
	.byte	'P'
	.ascii	"th\0"
	.align
! 
! ===============  METHOD FreeThread  ===============
! 
_Method_P_Kernel_ThreadManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ThreadManager_4,r1
	push	r1
	mov	8,r1
_Label_3110:
	push	r0
	sub	r1,1,r1
	bne	_Label_3110
	mov	871,r13		! source line 871
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	876,r13		! source line 876
	mov	"\0\0SE",r10
!   _temp_1342 = &lock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	877,r13		! source line 877
	mov	"\0\0AS",r10
!   if intIsZero (th) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1343 = th + 76
	load	[r14+12],r1
	add	r1,76,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1343 = 5  (sizeInBytes=4)
	mov	5,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	878,r13		! source line 878
	mov	"\0\0SE",r10
!   _temp_1344 = &freeList
	set	41648,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=th  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	879,r13		! source line 879
	mov	"\0\0SE",r10
!   _temp_1345 = &lock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-20]
!   _temp_1346 = &bell
	set	41680,r11
	load	[r14+8],r1
	add	r1,r11,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1345  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	880,r13		! source line 880
	mov	"\0\0SE",r10
!   _temp_1347 = &lock
	set	41660,r11
	load	[r14+8],r1
	add	r1,r11,r1
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
	mov	880,r13		! source line 880
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ThreadManager_4:
	.word	_sourceFileName
	.word	_Label_1348
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1349
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1350
	.word	12
	.word	4
	.word	_Label_1351
	.word	-12
	.word	4
	.word	_Label_1352
	.word	-16
	.word	4
	.word	_Label_1353
	.word	-20
	.word	4
	.word	_Label_1354
	.word	-24
	.word	4
	.word	_Label_1355
	.word	-28
	.word	4
	.word	_Label_1356
	.word	-32
	.word	4
	.word	0
_Label_1348:
	.ascii	"ThreadManager"
	.ascii	"::"
	.ascii	"FreeThread\0"
	.align
_Label_1349:
	.ascii	"Pself\0"
	.align
_Label_1350:
	.byte	'P'
	.ascii	"th\0"
	.align
_Label_1351:
	.byte	'?'
	.ascii	"_temp_1347\0"
	.align
_Label_1352:
	.byte	'?'
	.ascii	"_temp_1346\0"
	.align
_Label_1353:
	.byte	'?'
	.ascii	"_temp_1345\0"
	.align
_Label_1354:
	.byte	'?'
	.ascii	"_temp_1344\0"
	.align
_Label_1355:
	.byte	'?'
	.ascii	"_temp_1343\0"
	.align
_Label_1356:
	.byte	'?'
	.ascii	"_temp_1342\0"
	.align
! 
! ===============  CLASS ProcessControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessControlBlock:
	.word	_Label_1357
	jmp	_Method_P_Kernel_ProcessControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessControlBlock_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessControlBlock_3	! 12:	PrintShort
	.word	0
! 
! Class descriptor:
! 
_Label_1357:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1358
	.word	_sourceFileName
	.word	230		! line number
	.word	124		! size of instances, in bytes
	.word	_P_Kernel_ProcessControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_1358:
	.ascii	"ProcessControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1,r1
	push	r1
	mov	3,r1
_Label_3111:
	push	r0
	sub	r1,1,r1
	bne	_Label_3111
	mov	893,r13		! source line 893
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	894,r13		! source line 894
	mov	"\0\0AS",r10
!   pid = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	895,r13		! source line 895
	mov	"\0\0AS",r10
!   status = 3		(4 bytes)
	mov	3,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	896,r13		! source line 896
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: addrSpace = zeros  (sizeInBytes=92)
	load	[r14+8],r4
	add	r4,32,r4
	mov	23,r3
_Label_3112:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3112
!   addrSpace = _P_Kernel_AddrSpace
	set	_P_Kernel_AddrSpace,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! SEND STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0SE",r10
!   _temp_1360 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	897,r13		! source line 897
	mov	"\0\0RE",r10
	add	r15,16,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_1:
	.word	_sourceFileName
	.word	_Label_1361
	.word	4		! total size of parameters
	.word	12		! frame size = 12
	.word	_Label_1362
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1363
	.word	-12
	.word	4
	.word	_Label_1364
	.word	-16
	.word	4
	.word	0
_Label_1361:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1362:
	.ascii	"Pself\0"
	.align
_Label_1363:
	.byte	'?'
	.ascii	"_temp_1360\0"
	.align
_Label_1364:
	.byte	'?'
	.ascii	"_temp_1359\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2,r1
	push	r1
	mov	4,r1
_Label_3113:
	push	r0
	sub	r1,1,r1
	bne	_Label_3113
	mov	907,r13		! source line 907
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	912,r13		! source line 912
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1365) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message PrintShort
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	913,r13		! source line 913
	mov	"\0\0SE",r10
!   _temp_1366 = &addrSpace
	load	[r14+8],r1
	add	r1,32,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1367 = _StringConst_118
	set	_StringConst_118,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1367  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	914,r13		! source line 914
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=myThread  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	915,r13		! source line 915
	mov	"\0\0CA",r10
	call	_function_221_ThreadPrintShort
! CALL STATEMENT...
!   Call the function
	mov	925,r13		! source line 925
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	925,r13		! source line 925
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_2:
	.word	_sourceFileName
	.word	_Label_1368
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1369
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1370
	.word	-12
	.word	4
	.word	_Label_1371
	.word	-16
	.word	4
	.word	_Label_1372
	.word	-20
	.word	4
	.word	0
_Label_1368:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1369:
	.ascii	"Pself\0"
	.align
_Label_1370:
	.byte	'?'
	.ascii	"_temp_1367\0"
	.align
_Label_1371:
	.byte	'?'
	.ascii	"_temp_1366\0"
	.align
_Label_1372:
	.byte	'?'
	.ascii	"_temp_1365\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessControlBlock_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3,r1
	push	r1
	mov	11,r1
_Label_3114:
	push	r0
	sub	r1,1,r1
	bne	_Label_3114
	mov	930,r13		! source line 930
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1373 = _StringConst_119
	set	_StringConst_119,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1373  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	934,r13		! source line 934
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	load	[r14+8],r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1374  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	935,r13		! source line 935
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1375 = _StringConst_120
	set	_StringConst_120,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1375  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	936,r13		! source line 936
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=pid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	937,r13		! source line 937
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1376 = _StringConst_121
	set	_StringConst_121,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1376  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	938,r13		! source line 938
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	939,r13		! source line 939
	mov	"\0\0IF",r10
!   if status != 1 then goto _Label_1378		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	1,r2
	cmp	r1,r2
	bne	_Label_1378
!	jmp	_Label_1377
_Label_1377:
! THEN...
	mov	940,r13		! source line 940
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1379 = _StringConst_122
	set	_StringConst_122,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1379  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	940,r13		! source line 940
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1380
_Label_1378:
! ELSE...
	mov	941,r13		! source line 941
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	941,r13		! source line 941
	mov	"\0\0IF",r10
!   if status != 2 then goto _Label_1382		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	2,r2
	cmp	r1,r2
	bne	_Label_1382
!	jmp	_Label_1381
_Label_1381:
! THEN...
	mov	942,r13		! source line 942
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1383 = _StringConst_123
	set	_StringConst_123,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1383  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	942,r13		! source line 942
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1384
_Label_1382:
! ELSE...
	mov	943,r13		! source line 943
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	943,r13		! source line 943
	mov	"\0\0IF",r10
!   if status != 3 then goto _Label_1386		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	3,r2
	cmp	r1,r2
	bne	_Label_1386
!	jmp	_Label_1385
_Label_1385:
! THEN...
	mov	944,r13		! source line 944
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1387 = _StringConst_124
	set	_StringConst_124,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1387  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	944,r13		! source line 944
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1388
_Label_1386:
! ELSE...
	mov	946,r13		! source line 946
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1389 = _StringConst_125
	set	_StringConst_125,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1389  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	946,r13		! source line 946
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1388:
! END IF...
_Label_1384:
! END IF...
_Label_1380:
! CALL STATEMENT...
!   _temp_1390 = _StringConst_126
	set	_StringConst_126,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1390  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	948,r13		! source line 948
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=parentsPid  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	949,r13		! source line 949
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1391 = _StringConst_127
	set	_StringConst_127,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1391  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	950,r13		! source line 950
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=exitStatus  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	951,r13		! source line 951
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	952,r13		! source line 952
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	952,r13		! source line 952
	mov	"\0\0RE",r10
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessControlBlock_3:
	.word	_sourceFileName
	.word	_Label_1392
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1393
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1394
	.word	-12
	.word	4
	.word	_Label_1395
	.word	-16
	.word	4
	.word	_Label_1396
	.word	-20
	.word	4
	.word	_Label_1397
	.word	-24
	.word	4
	.word	_Label_1398
	.word	-28
	.word	4
	.word	_Label_1399
	.word	-32
	.word	4
	.word	_Label_1400
	.word	-36
	.word	4
	.word	_Label_1401
	.word	-40
	.word	4
	.word	_Label_1402
	.word	-44
	.word	4
	.word	_Label_1403
	.word	-48
	.word	4
	.word	0
_Label_1392:
	.ascii	"ProcessControlBlock"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1393:
	.ascii	"Pself\0"
	.align
_Label_1394:
	.byte	'?'
	.ascii	"_temp_1391\0"
	.align
_Label_1395:
	.byte	'?'
	.ascii	"_temp_1390\0"
	.align
_Label_1396:
	.byte	'?'
	.ascii	"_temp_1389\0"
	.align
_Label_1397:
	.byte	'?'
	.ascii	"_temp_1387\0"
	.align
_Label_1398:
	.byte	'?'
	.ascii	"_temp_1383\0"
	.align
_Label_1399:
	.byte	'?'
	.ascii	"_temp_1379\0"
	.align
_Label_1400:
	.byte	'?'
	.ascii	"_temp_1376\0"
	.align
_Label_1401:
	.byte	'?'
	.ascii	"_temp_1375\0"
	.align
_Label_1402:
	.byte	'?'
	.ascii	"_temp_1374\0"
	.align
_Label_1403:
	.byte	'?'
	.ascii	"_temp_1373\0"
	.align
! 
! ===============  CLASS ProcessManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_ProcessManager:
	.word	_Label_1404
	jmp	_Method_P_Kernel_ProcessManager_1	! 4:	Init
	jmp	_Method_P_Kernel_ProcessManager_2	! 8:	Print
	jmp	_Method_P_Kernel_ProcessManager_3	! 12:	PrintShort
	jmp	_Method_P_Kernel_ProcessManager_4	! 16:	GetANewProcess
	jmp	_Method_P_Kernel_ProcessManager_5	! 20:	FreeProcess
	.word	0
! 
! Class descriptor:
! 
_Label_1404:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1405
	.word	_sourceFileName
	.word	250		! line number
	.word	1316		! size of instances, in bytes
	.word	_P_Kernel_ProcessManager
	.word	_P_System_Object
	.word	0
_Label_1405:
	.ascii	"ProcessManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_ProcessManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_1,r1
	push	r1
	mov	368,r1
_Label_3115:
	push	r0
	sub	r1,1,r1
	bne	_Label_3115
	mov	963,r13		! source line 963
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! i
!   i = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-1472]
! ASSIGNMENT STATEMENT...
	mov	969,r13		! source line 969
	mov	"\0\0AS",r10
!   nextPid = 1		(4 bytes)
	mov	1,r1
	load	[r14+8],r2
	store	r1,[r2+1312]
! ASSIGNMENT STATEMENT...
	mov	970,r13		! source line 970
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: processManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,1248,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   processManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+1248]
! SEND STATEMENT...
	mov	971,r13		! source line 971
	mov	"\0\0SE",r10
!   _temp_1407 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-1464]
!   Send message Init
	load	[r14+-1464],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	972,r13		! source line 972
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1268,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1268]
! SEND STATEMENT...
	mov	973,r13		! source line 973
	mov	"\0\0SE",r10
!   _temp_1409 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-1456]
!   Send message Init
	load	[r14+-1456],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	974,r13		! source line 974
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: aProcessDied = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,1296,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   aProcessDied = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+1296]
! SEND STATEMENT...
	mov	975,r13		! source line 975
	mov	"\0\0SE",r10
!   _temp_1411 = &aProcessDied
	load	[r14+8],r1
	add	r1,1296,r1
	store	r1,[r14+-1448]
!   Send message Init
	load	[r14+-1448],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	976,r13		! source line 976
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: freeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,1284,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   freeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+1284]
! ASSIGNMENT STATEMENT...
	mov	977,r13		! source line 977
	mov	"\0\0AS",r10
!   _temp_1413 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-1440]
!   NEW ARRAY Constructor...
!   _temp_1415 = &_temp_1414
	add	r14,-1436,r1
	store	r1,[r14+-192]
!   _temp_1415 = _temp_1415 + 4
	load	[r14+-192],r1
	add	r1,4,r1
	store	r1,[r14+-192]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_1417 = zeros  (sizeInBytes=124)
	add	r14,-184,r4
	mov	31,r3
_Label_3116:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3116
!   _temp_1417 = _P_Kernel_ProcessControlBlock
	set	_P_Kernel_ProcessControlBlock,r1
	store	r1,[r14+-184]
	mov	10,r1
	store	r1,[r14+-188]
_Label_1419:
!   Data Move: *_temp_1415 = _temp_1417  (sizeInBytes=124)
	add	r14,-184,r5
	load	[r14+-192],r4
	mov	31,r3
_Label_3117:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3117
!   _temp_1415 = _temp_1415 + 124
	load	[r14+-192],r1
	add	r1,124,r1
	store	r1,[r14+-192]
!   _temp_1416 = _temp_1416 + -1
	load	[r14+-188],r1
	add	r1,-1,r1
	store	r1,[r14+-188]
!   if intNotZero (_temp_1416) then goto _Label_1419
	load	[r14+-188],r1
	cmp	r1,r0
	bne	_Label_1419
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-1436]
!   _temp_1420 = &_temp_1414
	add	r14,-1436,r1
	store	r1,[r14+-56]
!   make sure array has size 10
	load	[r14+-1440],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3118
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3118:
!   make sure array has size 10
	load	[r14+-56],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1413 = *_temp_1420  (sizeInBytes=1244)
	load	[r14+-56],r5
	load	[r14+-1440],r4
	mov	311,r3
_Label_3119:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3119
! FOR STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1425 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-52]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1426 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-48]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1425  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+-1472]
_Label_1421:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1426 then goto _Label_1424		
	load	[r14+-1472],r1
	load	[r14+-48],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1424
_Label_1422:
	mov	979,r13		! source line 979
	mov	"\0\0FB",r10
! SEND STATEMENT...
	mov	980,r13		! source line 980
	mov	"\0\0SE",r10
!   _temp_1427 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Move address of _temp_1427 [i ] into _temp_1428
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   Send message Init
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	981,r13		! source line 981
	mov	"\0\0AS",r10
!   _temp_1429 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   Move address of _temp_1429 [i ] into _temp_1430
!     make sure index expr is >= 0
	load	[r14+-1472],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-32]
!   _temp_1431 = _temp_1430 + 20
	load	[r14+-32],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1431 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	982,r13		! source line 982
	mov	"\0\0SE",r10
!   _temp_1433 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Move address of _temp_1433 [i ] into _temp_1434
!     make sure index expr is >= 0
	load	[r14+-1472],r2
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
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-16]
!   _temp_1432 = _temp_1434		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_1435 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1432  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Send message AddToFront
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1423:
!   i = i + 1
	load	[r14+-1472],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-1472]
	jmp	_Label_1421
! END FOR
_Label_1424:
! RETURN STATEMENT...
	mov	979,r13		! source line 979
	mov	"\0\0RE",r10
	add	r15,1476,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_1:
	.word	_sourceFileName
	.word	_Label_1436
	.word	4		! total size of parameters
	.word	1472		! frame size = 1472
	.word	_Label_1437
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1438
	.word	-12
	.word	4
	.word	_Label_1439
	.word	-16
	.word	4
	.word	_Label_1440
	.word	-20
	.word	4
	.word	_Label_1441
	.word	-24
	.word	4
	.word	_Label_1442
	.word	-28
	.word	4
	.word	_Label_1443
	.word	-32
	.word	4
	.word	_Label_1444
	.word	-36
	.word	4
	.word	_Label_1445
	.word	-40
	.word	4
	.word	_Label_1446
	.word	-44
	.word	4
	.word	_Label_1447
	.word	-48
	.word	4
	.word	_Label_1448
	.word	-52
	.word	4
	.word	_Label_1449
	.word	-56
	.word	4
	.word	_Label_1450
	.word	-60
	.word	4
	.word	_Label_1451
	.word	-184
	.word	124
	.word	_Label_1452
	.word	-188
	.word	4
	.word	_Label_1453
	.word	-192
	.word	4
	.word	_Label_1454
	.word	-1436
	.word	1244
	.word	_Label_1455
	.word	-1440
	.word	4
	.word	_Label_1456
	.word	-1444
	.word	4
	.word	_Label_1457
	.word	-1448
	.word	4
	.word	_Label_1458
	.word	-1452
	.word	4
	.word	_Label_1459
	.word	-1456
	.word	4
	.word	_Label_1460
	.word	-1460
	.word	4
	.word	_Label_1461
	.word	-1464
	.word	4
	.word	_Label_1462
	.word	-1468
	.word	4
	.word	_Label_1463
	.word	-1472
	.word	4
	.word	0
_Label_1436:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1437:
	.ascii	"Pself\0"
	.align
_Label_1438:
	.byte	'?'
	.ascii	"_temp_1435\0"
	.align
_Label_1439:
	.byte	'?'
	.ascii	"_temp_1434\0"
	.align
_Label_1440:
	.byte	'?'
	.ascii	"_temp_1433\0"
	.align
_Label_1441:
	.byte	'?'
	.ascii	"_temp_1432\0"
	.align
_Label_1442:
	.byte	'?'
	.ascii	"_temp_1431\0"
	.align
_Label_1443:
	.byte	'?'
	.ascii	"_temp_1430\0"
	.align
_Label_1444:
	.byte	'?'
	.ascii	"_temp_1429\0"
	.align
_Label_1445:
	.byte	'?'
	.ascii	"_temp_1428\0"
	.align
_Label_1446:
	.byte	'?'
	.ascii	"_temp_1427\0"
	.align
_Label_1447:
	.byte	'?'
	.ascii	"_temp_1426\0"
	.align
_Label_1448:
	.byte	'?'
	.ascii	"_temp_1425\0"
	.align
_Label_1449:
	.byte	'?'
	.ascii	"_temp_1420\0"
	.align
_Label_1450:
	.byte	'?'
	.ascii	"_temp_1418\0"
	.align
_Label_1451:
	.byte	'?'
	.ascii	"_temp_1417\0"
	.align
_Label_1452:
	.byte	'?'
	.ascii	"_temp_1416\0"
	.align
_Label_1453:
	.byte	'?'
	.ascii	"_temp_1415\0"
	.align
_Label_1454:
	.byte	'?'
	.ascii	"_temp_1414\0"
	.align
_Label_1455:
	.byte	'?'
	.ascii	"_temp_1413\0"
	.align
_Label_1456:
	.byte	'?'
	.ascii	"_temp_1412\0"
	.align
_Label_1457:
	.byte	'?'
	.ascii	"_temp_1411\0"
	.align
_Label_1458:
	.byte	'?'
	.ascii	"_temp_1410\0"
	.align
_Label_1459:
	.byte	'?'
	.ascii	"_temp_1409\0"
	.align
_Label_1460:
	.byte	'?'
	.ascii	"_temp_1408\0"
	.align
_Label_1461:
	.byte	'?'
	.ascii	"_temp_1407\0"
	.align
_Label_1462:
	.byte	'?'
	.ascii	"_temp_1406\0"
	.align
_Label_1463:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_ProcessManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_2,r1
	push	r1
	mov	14,r1
_Label_3120:
	push	r0
	sub	r1,1,r1
	bne	_Label_3120
	mov	988,r13		! source line 988
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	995,r13		! source line 995
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	995,r13		! source line 995
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! CALL STATEMENT...
!   _temp_1464 = _StringConst_128
	set	_StringConst_128,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1464  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	996,r13		! source line 996
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	997,r13		! source line 997
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1469 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1470 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-40]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1469  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+-52]
_Label_1465:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1470 then goto _Label_1468		
	load	[r14+-52],r1
	load	[r14+-40],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1468
_Label_1466:
	mov	997,r13		! source line 997
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1471 = _StringConst_129
	set	_StringConst_129,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_1471  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	998,r13		! source line 998
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	999,r13		! source line 999
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_1472 = _StringConst_130
	set	_StringConst_130,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1472  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1000,r13		! source line 1000
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1001,r13		! source line 1001
	mov	"\0\0SE",r10
!   _temp_1473 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1473 [i ] into _temp_1474
!     make sure index expr is >= 0
	load	[r14+-52],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message Print
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1467:
!   i = i + 1
	load	[r14+-52],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-52]
	jmp	_Label_1465
! END FOR
_Label_1468:
! CALL STATEMENT...
!   _temp_1475 = _StringConst_131
	set	_StringConst_131,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1475  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1003,r13		! source line 1003
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1004,r13		! source line 1004
	mov	"\0\0SE",r10
!   _temp_1476 = _function_220_PrintObjectAddr
	set	_function_220_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1477 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1476  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1005,r13		! source line 1005
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1006,r13		! source line 1006
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! RETURN STATEMENT...
	mov	1006,r13		! source line 1006
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_2:
	.word	_sourceFileName
	.word	_Label_1478
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1479
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1480
	.word	-12
	.word	4
	.word	_Label_1481
	.word	-16
	.word	4
	.word	_Label_1482
	.word	-20
	.word	4
	.word	_Label_1483
	.word	-24
	.word	4
	.word	_Label_1484
	.word	-28
	.word	4
	.word	_Label_1485
	.word	-32
	.word	4
	.word	_Label_1486
	.word	-36
	.word	4
	.word	_Label_1487
	.word	-40
	.word	4
	.word	_Label_1488
	.word	-44
	.word	4
	.word	_Label_1489
	.word	-48
	.word	4
	.word	_Label_1490
	.word	-52
	.word	4
	.word	_Label_1491
	.word	-56
	.word	4
	.word	0
_Label_1478:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1479:
	.ascii	"Pself\0"
	.align
_Label_1480:
	.byte	'?'
	.ascii	"_temp_1477\0"
	.align
_Label_1481:
	.byte	'?'
	.ascii	"_temp_1476\0"
	.align
_Label_1482:
	.byte	'?'
	.ascii	"_temp_1475\0"
	.align
_Label_1483:
	.byte	'?'
	.ascii	"_temp_1474\0"
	.align
_Label_1484:
	.byte	'?'
	.ascii	"_temp_1473\0"
	.align
_Label_1485:
	.byte	'?'
	.ascii	"_temp_1472\0"
	.align
_Label_1486:
	.byte	'?'
	.ascii	"_temp_1471\0"
	.align
_Label_1487:
	.byte	'?'
	.ascii	"_temp_1470\0"
	.align
_Label_1488:
	.byte	'?'
	.ascii	"_temp_1469\0"
	.align
_Label_1489:
	.byte	'?'
	.ascii	"_temp_1464\0"
	.align
_Label_1490:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1491:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD PrintShort  ===============
! 
_Method_P_Kernel_ProcessManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_3,r1
	push	r1
	mov	13,r1
_Label_3121:
	push	r0
	sub	r1,1,r1
	bne	_Label_3121
	mov	1011,r13		! source line 1011
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1018,r13		! source line 1018
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=2  sizeInBytes=4
	mov	2,r1
	store	r1,[r15+0]
!   Call the function
	mov	1018,r13		! source line 1018
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! CALL STATEMENT...
!   _temp_1492 = _StringConst_132
	set	_StringConst_132,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1492  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1019,r13		! source line 1019
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1020,r13		! source line 1020
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1497 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1498 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-36]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1497  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+-48]
_Label_1493:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1498 then goto _Label_1496		
	load	[r14+-48],r1
	load	[r14+-36],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1496
_Label_1494:
	mov	1020,r13		! source line 1020
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1499 = _StringConst_133
	set	_StringConst_133,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1499  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1021,r13		! source line 1021
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1022,r13		! source line 1022
	mov	"\0\0CE",r10
	call	printInt
! SEND STATEMENT...
	mov	1023,r13		! source line 1023
	mov	"\0\0SE",r10
!   _temp_1500 = &processTable
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-28]
!   Move address of _temp_1500 [i ] into _temp_1501
!     make sure index expr is >= 0
	load	[r14+-48],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-28],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	124,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-24]
!   Send message PrintShort
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1495:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1493
! END FOR
_Label_1496:
! CALL STATEMENT...
!   _temp_1502 = _StringConst_134
	set	_StringConst_134,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1502  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1025,r13		! source line 1025
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1026,r13		! source line 1026
	mov	"\0\0SE",r10
!   _temp_1503 = _function_220_PrintObjectAddr
	set	_function_220_PrintObjectAddr,r1
	store	r1,[r14+-16]
!   _temp_1504 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_1503  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	1027,r13		! source line 1027
	mov	"\0\0CA",r10
	call	_P_System_nl
! ASSIGNMENT STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0AS",r10
!   Prepare Argument: offset=8  value=oldStatus  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1028,r13		! source line 1028
	mov	"\0\0CA",r10
	call	_P_Kernel_SetInterruptsTo
!   Retrieve Result: targetName=oldStatus  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! RETURN STATEMENT...
	mov	1028,r13		! source line 1028
	mov	"\0\0RE",r10
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_3:
	.word	_sourceFileName
	.word	_Label_1505
	.word	4		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_1506
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1507
	.word	-12
	.word	4
	.word	_Label_1508
	.word	-16
	.word	4
	.word	_Label_1509
	.word	-20
	.word	4
	.word	_Label_1510
	.word	-24
	.word	4
	.word	_Label_1511
	.word	-28
	.word	4
	.word	_Label_1512
	.word	-32
	.word	4
	.word	_Label_1513
	.word	-36
	.word	4
	.word	_Label_1514
	.word	-40
	.word	4
	.word	_Label_1515
	.word	-44
	.word	4
	.word	_Label_1516
	.word	-48
	.word	4
	.word	_Label_1517
	.word	-52
	.word	4
	.word	0
_Label_1505:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"PrintShort\0"
	.align
_Label_1506:
	.ascii	"Pself\0"
	.align
_Label_1507:
	.byte	'?'
	.ascii	"_temp_1504\0"
	.align
_Label_1508:
	.byte	'?'
	.ascii	"_temp_1503\0"
	.align
_Label_1509:
	.byte	'?'
	.ascii	"_temp_1502\0"
	.align
_Label_1510:
	.byte	'?'
	.ascii	"_temp_1501\0"
	.align
_Label_1511:
	.byte	'?'
	.ascii	"_temp_1500\0"
	.align
_Label_1512:
	.byte	'?'
	.ascii	"_temp_1499\0"
	.align
_Label_1513:
	.byte	'?'
	.ascii	"_temp_1498\0"
	.align
_Label_1514:
	.byte	'?'
	.ascii	"_temp_1497\0"
	.align
_Label_1515:
	.byte	'?'
	.ascii	"_temp_1492\0"
	.align
_Label_1516:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1517:
	.byte	'I'
	.ascii	"oldStatus\0"
	.align
! 
! ===============  METHOD GetANewProcess  ===============
! 
_Method_P_Kernel_ProcessManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_4,r1
	push	r1
	mov	11,r1
_Label_3122:
	push	r0
	sub	r1,1,r1
	bne	_Label_3122
	mov	1033,r13		! source line 1033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1039,r13		! source line 1039
	mov	"\0\0SE",r10
!   _temp_1518 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-40]
!   Send message Lock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1041,r13		! source line 1041
	mov	"\0\0WH",r10
_Label_1519:
	mov	1041,r13		! source line 1041
	mov	"\0\0SE",r10
!   _temp_1522 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-36]
!   Send message IsEmpty
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_1520 else goto _Label_1521
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1521
	jmp	_Label_1520
_Label_1520:
	mov	1041,r13		! source line 1041
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1042,r13		! source line 1042
	mov	"\0\0SE",r10
!   _temp_1523 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   _temp_1524 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_1523  sizeInBytes=4
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
! END WHILE...
	jmp	_Label_1519
_Label_1521:
! ASSIGNMENT STATEMENT...
	mov	1044,r13		! source line 1044
	mov	"\0\0AS",r10
	mov	1044,r13		! source line 1044
	mov	"\0\0SE",r10
!   _temp_1525 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Send message Remove
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=p  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1045,r13		! source line 1045
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1526 = p + 20
	load	[r14+-44],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_1526 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1047,r13		! source line 1047
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1527 = p + 12
	load	[r14+-44],r1
	add	r1,12,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1527 = nextPid  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+1312],r1
	load	[r14+-16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1048,r13		! source line 1048
	mov	"\0\0AS",r10
!   nextPid = nextPid + 1		(int)
	load	[r14+8],r1
	load	[r1+1312],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+1312]
! SEND STATEMENT...
	mov	1049,r13		! source line 1049
	mov	"\0\0SE",r10
!   _temp_1528 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1050,r13		! source line 1050
	mov	"\0\0RE",r10
!   ReturnResult: p  (sizeInBytes=4)
	load	[r14+-44],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_4:
	.word	_sourceFileName
	.word	_Label_1529
	.word	4		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_1530
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1531
	.word	-12
	.word	4
	.word	_Label_1532
	.word	-16
	.word	4
	.word	_Label_1533
	.word	-20
	.word	4
	.word	_Label_1534
	.word	-24
	.word	4
	.word	_Label_1535
	.word	-28
	.word	4
	.word	_Label_1536
	.word	-32
	.word	4
	.word	_Label_1537
	.word	-36
	.word	4
	.word	_Label_1538
	.word	-40
	.word	4
	.word	_Label_1539
	.word	-44
	.word	4
	.word	0
_Label_1529:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"GetANewProcess\0"
	.align
_Label_1530:
	.ascii	"Pself\0"
	.align
_Label_1531:
	.byte	'?'
	.ascii	"_temp_1528\0"
	.align
_Label_1532:
	.byte	'?'
	.ascii	"_temp_1527\0"
	.align
_Label_1533:
	.byte	'?'
	.ascii	"_temp_1526\0"
	.align
_Label_1534:
	.byte	'?'
	.ascii	"_temp_1525\0"
	.align
_Label_1535:
	.byte	'?'
	.ascii	"_temp_1524\0"
	.align
_Label_1536:
	.byte	'?'
	.ascii	"_temp_1523\0"
	.align
_Label_1537:
	.byte	'?'
	.ascii	"_temp_1522\0"
	.align
_Label_1538:
	.byte	'?'
	.ascii	"_temp_1518\0"
	.align
_Label_1539:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD FreeProcess  ===============
! 
_Method_P_Kernel_ProcessManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_ProcessManager_5,r1
	push	r1
	mov	8,r1
_Label_3123:
	push	r0
	sub	r1,1,r1
	bne	_Label_3123
	mov	1055,r13		! source line 1055
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1060,r13		! source line 1060
	mov	"\0\0SE",r10
!   _temp_1540 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1061,r13		! source line 1061
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1541 = p + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1541 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-28],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1062,r13		! source line 1062
	mov	"\0\0SE",r10
!   _temp_1542 = &freeList
	load	[r14+8],r1
	add	r1,1284,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	1063,r13		! source line 1063
	mov	"\0\0SE",r10
!   _temp_1543 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
	store	r1,[r14+-20]
!   _temp_1544 = &aProcessBecameFree
	load	[r14+8],r1
	add	r1,1268,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1543  sizeInBytes=4
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
	mov	1064,r13		! source line 1064
	mov	"\0\0SE",r10
!   _temp_1545 = &processManagerLock
	load	[r14+8],r1
	add	r1,1248,r1
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
	mov	1064,r13		! source line 1064
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_ProcessManager_5:
	.word	_sourceFileName
	.word	_Label_1546
	.word	8		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1547
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1548
	.word	12
	.word	4
	.word	_Label_1549
	.word	-12
	.word	4
	.word	_Label_1550
	.word	-16
	.word	4
	.word	_Label_1551
	.word	-20
	.word	4
	.word	_Label_1552
	.word	-24
	.word	4
	.word	_Label_1553
	.word	-28
	.word	4
	.word	_Label_1554
	.word	-32
	.word	4
	.word	0
_Label_1546:
	.ascii	"ProcessManager"
	.ascii	"::"
	.ascii	"FreeProcess\0"
	.align
_Label_1547:
	.ascii	"Pself\0"
	.align
_Label_1548:
	.byte	'P'
	.ascii	"p\0"
	.align
_Label_1549:
	.byte	'?'
	.ascii	"_temp_1545\0"
	.align
_Label_1550:
	.byte	'?'
	.ascii	"_temp_1544\0"
	.align
_Label_1551:
	.byte	'?'
	.ascii	"_temp_1543\0"
	.align
_Label_1552:
	.byte	'?'
	.ascii	"_temp_1542\0"
	.align
_Label_1553:
	.byte	'?'
	.ascii	"_temp_1541\0"
	.align
_Label_1554:
	.byte	'?'
	.ascii	"_temp_1540\0"
	.align
! 
! ===============  CLASS FrameManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FrameManager:
	.word	_Label_1555
	jmp	_Method_P_Kernel_FrameManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FrameManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FrameManager_3	! 12:	GetAFrame
	jmp	_Method_P_Kernel_FrameManager_4	! 16:	GetNewFrames
	jmp	_Method_P_Kernel_FrameManager_5	! 20:	ReturnAllFrames
	.word	0
! 
! Class descriptor:
! 
_Label_1555:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1556
	.word	_sourceFileName
	.word	273		! line number
	.word	56		! size of instances, in bytes
	.word	_P_Kernel_FrameManager
	.word	_P_System_Object
	.word	0
_Label_1556:
	.ascii	"FrameManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FrameManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_1,r1
	push	r1
	mov	14,r1
_Label_3124:
	push	r0
	sub	r1,1,r1
	bne	_Label_3124
	mov	1097,r13		! source line 1097
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1557 = _StringConst_135
	set	_StringConst_135,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_1557  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	1103,r13		! source line 1103
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	1104,r13		! source line 1104
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: framesInUse = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   framesInUse = _P_BitMap_BitMap
	set	_P_BitMap_BitMap,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	1105,r13		! source line 1105
	mov	"\0\0SE",r10
!   _temp_1559 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=12  value=100  sizeInBytes=4
	mov	100,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1106,r13		! source line 1106
	mov	"\0\0AS",r10
!   numberFreeFrames = 100		(4 bytes)
	mov	100,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1107,r13		! source line 1107
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: frameManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,20,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   frameManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! SEND STATEMENT...
	mov	1108,r13		! source line 1108
	mov	"\0\0SE",r10
!   _temp_1561 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Send message Init
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1109,r13		! source line 1109
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: newFramesAvailable = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,40,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   newFramesAvailable = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+40]
! SEND STATEMENT...
	mov	1110,r13		! source line 1110
	mov	"\0\0SE",r10
!   _temp_1563 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-28]
!   Send message Init
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! FOR STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1568 = 1048576		(4 bytes)
	set	1048576,r1
	store	r1,[r14+-24]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1569 = 1048876		(4 bytes)
	set	1048876,r1
	store	r1,[r14+-20]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1568  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+-56]
_Label_1564:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1569 then goto _Label_1567		
	load	[r14+-56],r1
	load	[r14+-20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1567
_Label_1565:
	mov	1116,r13		! source line 1116
	mov	"\0\0FB",r10
! IF STATEMENT...
	mov	1119,r13		! source line 1119
	mov	"\0\0IF",r10
!   if intIsZero (i) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_1572 = *i  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r1],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_1572) then goto _Label_1571
	load	[r14+-16],r1
	cmp	r1,r0
	be	_Label_1571
!	jmp	_Label_1570
_Label_1570:
! THEN...
	mov	1120,r13		! source line 1120
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1573 = _StringConst_136
	set	_StringConst_136,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1573  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	1120,r13		! source line 1120
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_1571:
!   Increment the FOR-LOOP index variable and jump back
_Label_1566:
!   i = i + 4
	load	[r14+-56],r1
	add	r1,4,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
	jmp	_Label_1564
! END FOR
_Label_1567:
! RETURN STATEMENT...
	mov	1116,r13		! source line 1116
	mov	"\0\0RE",r10
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_1:
	.word	_sourceFileName
	.word	_Label_1574
	.word	4		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_1575
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1576
	.word	-12
	.word	4
	.word	_Label_1577
	.word	-16
	.word	4
	.word	_Label_1578
	.word	-20
	.word	4
	.word	_Label_1579
	.word	-24
	.word	4
	.word	_Label_1580
	.word	-28
	.word	4
	.word	_Label_1581
	.word	-32
	.word	4
	.word	_Label_1582
	.word	-36
	.word	4
	.word	_Label_1583
	.word	-40
	.word	4
	.word	_Label_1584
	.word	-44
	.word	4
	.word	_Label_1585
	.word	-48
	.word	4
	.word	_Label_1586
	.word	-52
	.word	4
	.word	_Label_1587
	.word	-56
	.word	4
	.word	0
_Label_1574:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1575:
	.ascii	"Pself\0"
	.align
_Label_1576:
	.byte	'?'
	.ascii	"_temp_1573\0"
	.align
_Label_1577:
	.byte	'?'
	.ascii	"_temp_1572\0"
	.align
_Label_1578:
	.byte	'?'
	.ascii	"_temp_1569\0"
	.align
_Label_1579:
	.byte	'?'
	.ascii	"_temp_1568\0"
	.align
_Label_1580:
	.byte	'?'
	.ascii	"_temp_1563\0"
	.align
_Label_1581:
	.byte	'?'
	.ascii	"_temp_1562\0"
	.align
_Label_1582:
	.byte	'?'
	.ascii	"_temp_1561\0"
	.align
_Label_1583:
	.byte	'?'
	.ascii	"_temp_1560\0"
	.align
_Label_1584:
	.byte	'?'
	.ascii	"_temp_1559\0"
	.align
_Label_1585:
	.byte	'?'
	.ascii	"_temp_1558\0"
	.align
_Label_1586:
	.byte	'?'
	.ascii	"_temp_1557\0"
	.align
_Label_1587:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FrameManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_2,r1
	push	r1
	mov	8,r1
_Label_3125:
	push	r0
	sub	r1,1,r1
	bne	_Label_3125
	mov	1127,r13		! source line 1127
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1131,r13		! source line 1131
	mov	"\0\0SE",r10
!   _temp_1588 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_1589 = _StringConst_137
	set	_StringConst_137,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1589  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1132,r13		! source line 1132
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1590 = _StringConst_138
	set	_StringConst_138,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1590  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=numberFreeFrames  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+4]
!   Call the function
	mov	1133,r13		! source line 1133
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_1591 = _StringConst_139
	set	_StringConst_139,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_1591  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	1134,r13		! source line 1134
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	1135,r13		! source line 1135
	mov	"\0\0SE",r10
!   _temp_1592 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Print
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	1136,r13		! source line 1136
	mov	"\0\0SE",r10
!   _temp_1593 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1136,r13		! source line 1136
	mov	"\0\0RE",r10
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_2:
	.word	_sourceFileName
	.word	_Label_1594
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_1595
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1596
	.word	-12
	.word	4
	.word	_Label_1597
	.word	-16
	.word	4
	.word	_Label_1598
	.word	-20
	.word	4
	.word	_Label_1599
	.word	-24
	.word	4
	.word	_Label_1600
	.word	-28
	.word	4
	.word	_Label_1601
	.word	-32
	.word	4
	.word	0
_Label_1594:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1595:
	.ascii	"Pself\0"
	.align
_Label_1596:
	.byte	'?'
	.ascii	"_temp_1593\0"
	.align
_Label_1597:
	.byte	'?'
	.ascii	"_temp_1592\0"
	.align
_Label_1598:
	.byte	'?'
	.ascii	"_temp_1591\0"
	.align
_Label_1599:
	.byte	'?'
	.ascii	"_temp_1590\0"
	.align
_Label_1600:
	.byte	'?'
	.ascii	"_temp_1589\0"
	.align
_Label_1601:
	.byte	'?'
	.ascii	"_temp_1588\0"
	.align
! 
! ===============  METHOD GetAFrame  ===============
! 
_Method_P_Kernel_FrameManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_3,r1
	push	r1
	mov	10,r1
_Label_3126:
	push	r0
	sub	r1,1,r1
	bne	_Label_3126
	mov	1141,r13		! source line 1141
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1149,r13		! source line 1149
	mov	"\0\0SE",r10
!   _temp_1602 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1152,r13		! source line 1152
	mov	"\0\0WH",r10
_Label_1603:
!   if numberFreeFrames >= 1 then goto _Label_1605		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1605
!	jmp	_Label_1604
_Label_1604:
	mov	1152,r13		! source line 1152
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1153,r13		! source line 1153
	mov	"\0\0SE",r10
!   _temp_1606 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-28]
!   _temp_1607 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=_temp_1606  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_1603
_Label_1605:
! ASSIGNMENT STATEMENT...
	mov	1157,r13		! source line 1157
	mov	"\0\0AS",r10
	mov	1157,r13		! source line 1157
	mov	"\0\0SE",r10
!   _temp_1608 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Send message FindZeroAndSet
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1158,r13		! source line 1158
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - 1		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1161,r13		! source line 1161
	mov	"\0\0SE",r10
!   _temp_1609 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1164,r13		! source line 1164
	mov	"\0\0AS",r10
!   _temp_1610 = f * 8192		(int)
	load	[r14+-36],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   frameAddr = 1048576 + _temp_1610		(int)
	set	1048576,r1
	load	[r14+-12],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! RETURN STATEMENT...
	mov	1166,r13		! source line 1166
	mov	"\0\0RE",r10
!   ReturnResult: frameAddr  (sizeInBytes=4)
	load	[r14+-40],r1
	store	r1,[r14+8]
	add	r15,44,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_3:
	.word	_sourceFileName
	.word	_Label_1611
	.word	4		! total size of parameters
	.word	40		! frame size = 40
	.word	_Label_1612
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1613
	.word	-12
	.word	4
	.word	_Label_1614
	.word	-16
	.word	4
	.word	_Label_1615
	.word	-20
	.word	4
	.word	_Label_1616
	.word	-24
	.word	4
	.word	_Label_1617
	.word	-28
	.word	4
	.word	_Label_1618
	.word	-32
	.word	4
	.word	_Label_1619
	.word	-36
	.word	4
	.word	_Label_1620
	.word	-40
	.word	4
	.word	0
_Label_1611:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetAFrame\0"
	.align
_Label_1612:
	.ascii	"Pself\0"
	.align
_Label_1613:
	.byte	'?'
	.ascii	"_temp_1610\0"
	.align
_Label_1614:
	.byte	'?'
	.ascii	"_temp_1609\0"
	.align
_Label_1615:
	.byte	'?'
	.ascii	"_temp_1608\0"
	.align
_Label_1616:
	.byte	'?'
	.ascii	"_temp_1607\0"
	.align
_Label_1617:
	.byte	'?'
	.ascii	"_temp_1606\0"
	.align
_Label_1618:
	.byte	'?'
	.ascii	"_temp_1602\0"
	.align
_Label_1619:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1620:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD GetNewFrames  ===============
! 
_Method_P_Kernel_FrameManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_4,r1
	push	r1
	mov	15,r1
_Label_3127:
	push	r0
	sub	r1,1,r1
	bne	_Label_3127
	mov	1171,r13		! source line 1171
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1179,r13		! source line 1179
	mov	"\0\0SE",r10
!   _temp_1621 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	1182,r13		! source line 1182
	mov	"\0\0WH",r10
_Label_1622:
!   if numberFreeFrames >= numFramesNeeded then goto _Label_1624		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_1624
!	jmp	_Label_1623
_Label_1623:
	mov	1182,r13		! source line 1182
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	1183,r13		! source line 1183
	mov	"\0\0SE",r10
!   _temp_1625 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   _temp_1626 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=12  value=_temp_1625  sizeInBytes=4
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
	jmp	_Label_1622
_Label_1624:
! FOR STATEMENT...
	mov	1187,r13		! source line 1187
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1631 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-32]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1632 = numFramesNeeded - 1		(int)
	load	[r14+16],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1631  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+-48]
_Label_1627:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1632 then goto _Label_1630		
	load	[r14+-48],r1
	load	[r14+-28],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1630
_Label_1628:
	mov	1187,r13		! source line 1187
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1190,r13		! source line 1190
	mov	"\0\0AS",r10
	mov	1190,r13		! source line 1190
	mov	"\0\0SE",r10
!   _temp_1633 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message FindZeroAndSet
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=f  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1193,r13		! source line 1193
	mov	"\0\0AS",r10
!   _temp_1634 = f * 8192		(int)
	load	[r14+-52],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   frameAddr = 1048576 + _temp_1634		(int)
	set	1048576,r1
	load	[r14+-20],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1196,r13		! source line 1196
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=frameAddr  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+8]
!   Send message SetFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1629:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1627
! END FOR
_Label_1630:
! ASSIGNMENT STATEMENT...
	mov	1200,r13		! source line 1200
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames - numFramesNeeded		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	1202,r13		! source line 1202
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1635 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_1635 = numFramesNeeded  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	1205,r13		! source line 1205
	mov	"\0\0SE",r10
!   _temp_1636 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1205,r13		! source line 1205
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_4:
	.word	_sourceFileName
	.word	_Label_1637
	.word	12		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1638
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1639
	.word	12
	.word	4
	.word	_Label_1640
	.word	16
	.word	4
	.word	_Label_1641
	.word	-12
	.word	4
	.word	_Label_1642
	.word	-16
	.word	4
	.word	_Label_1643
	.word	-20
	.word	4
	.word	_Label_1644
	.word	-24
	.word	4
	.word	_Label_1645
	.word	-28
	.word	4
	.word	_Label_1646
	.word	-32
	.word	4
	.word	_Label_1647
	.word	-36
	.word	4
	.word	_Label_1648
	.word	-40
	.word	4
	.word	_Label_1649
	.word	-44
	.word	4
	.word	_Label_1650
	.word	-48
	.word	4
	.word	_Label_1651
	.word	-52
	.word	4
	.word	_Label_1652
	.word	-56
	.word	4
	.word	0
_Label_1637:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"GetNewFrames\0"
	.align
_Label_1638:
	.ascii	"Pself\0"
	.align
_Label_1639:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1640:
	.byte	'I'
	.ascii	"numFramesNeeded\0"
	.align
_Label_1641:
	.byte	'?'
	.ascii	"_temp_1636\0"
	.align
_Label_1642:
	.byte	'?'
	.ascii	"_temp_1635\0"
	.align
_Label_1643:
	.byte	'?'
	.ascii	"_temp_1634\0"
	.align
_Label_1644:
	.byte	'?'
	.ascii	"_temp_1633\0"
	.align
_Label_1645:
	.byte	'?'
	.ascii	"_temp_1632\0"
	.align
_Label_1646:
	.byte	'?'
	.ascii	"_temp_1631\0"
	.align
_Label_1647:
	.byte	'?'
	.ascii	"_temp_1626\0"
	.align
_Label_1648:
	.byte	'?'
	.ascii	"_temp_1625\0"
	.align
_Label_1649:
	.byte	'?'
	.ascii	"_temp_1621\0"
	.align
_Label_1650:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1651:
	.byte	'I'
	.ascii	"f\0"
	.align
_Label_1652:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
! 
! ===============  METHOD ReturnAllFrames  ===============
! 
_Method_P_Kernel_FrameManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FrameManager_5,r1
	push	r1
	mov	15,r1
_Label_3128:
	push	r0
	sub	r1,1,r1
	bne	_Label_3128
	mov	1210,r13		! source line 1210
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	1218,r13		! source line 1218
	mov	"\0\0SE",r10
!   _temp_1653 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	1221,r13		! source line 1221
	mov	"\0\0AS",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_1654 = aPageTable + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Data Move: numFramesReturned = *_temp_1654  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-60]
! FOR STATEMENT...
	mov	1223,r13		! source line 1223
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1659 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-36]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1660 = numFramesReturned - 1		(int)
	load	[r14+-60],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1659  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+-48]
_Label_1655:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1660 then goto _Label_1658		
	load	[r14+-48],r1
	load	[r14+-32],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1658
_Label_1656:
	mov	1223,r13		! source line 1223
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	1225,r13		! source line 1225
	mov	"\0\0AS",r10
	mov	1225,r13		! source line 1225
	mov	"\0\0SE",r10
!   if intIsZero (aPageTable) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=frameAddr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	1227,r13		! source line 1227
	mov	"\0\0AS",r10
!   _temp_1661 = frameAddr - 1048576		(int)
	load	[r14+-52],r1
	set	1048576,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-28]
!   bitNumber = _temp_1661 div 8192		(int)
	load	[r14+-28],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-56]
! SEND STATEMENT...
	mov	1229,r13		! source line 1229
	mov	"\0\0SE",r10
!   _temp_1662 = &framesInUse
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=bitNumber  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message ClearBit
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_1657:
!   i = i + 1
	load	[r14+-48],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
	jmp	_Label_1655
! END FOR
_Label_1658:
! ASSIGNMENT STATEMENT...
	mov	1233,r13		! source line 1233
	mov	"\0\0AS",r10
!   numberFreeFrames = numberFreeFrames + numFramesReturned		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+-60],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	1235,r13		! source line 1235
	mov	"\0\0SE",r10
!   _temp_1663 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   _temp_1664 = &newFramesAvailable
	load	[r14+8],r1
	add	r1,40,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_1663  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message Broadcast
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! SEND STATEMENT...
	mov	1237,r13		! source line 1237
	mov	"\0\0SE",r10
!   _temp_1665 = &frameManagerLock
	load	[r14+8],r1
	add	r1,20,r1
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
	mov	1237,r13		! source line 1237
	mov	"\0\0RE",r10
	add	r15,64,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FrameManager_5:
	.word	_sourceFileName
	.word	_Label_1666
	.word	8		! total size of parameters
	.word	60		! frame size = 60
	.word	_Label_1667
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1668
	.word	12
	.word	4
	.word	_Label_1669
	.word	-12
	.word	4
	.word	_Label_1670
	.word	-16
	.word	4
	.word	_Label_1671
	.word	-20
	.word	4
	.word	_Label_1672
	.word	-24
	.word	4
	.word	_Label_1673
	.word	-28
	.word	4
	.word	_Label_1674
	.word	-32
	.word	4
	.word	_Label_1675
	.word	-36
	.word	4
	.word	_Label_1676
	.word	-40
	.word	4
	.word	_Label_1677
	.word	-44
	.word	4
	.word	_Label_1678
	.word	-48
	.word	4
	.word	_Label_1679
	.word	-52
	.word	4
	.word	_Label_1680
	.word	-56
	.word	4
	.word	_Label_1681
	.word	-60
	.word	4
	.word	0
_Label_1666:
	.ascii	"FrameManager"
	.ascii	"::"
	.ascii	"ReturnAllFrames\0"
	.align
_Label_1667:
	.ascii	"Pself\0"
	.align
_Label_1668:
	.byte	'P'
	.ascii	"aPageTable\0"
	.align
_Label_1669:
	.byte	'?'
	.ascii	"_temp_1665\0"
	.align
_Label_1670:
	.byte	'?'
	.ascii	"_temp_1664\0"
	.align
_Label_1671:
	.byte	'?'
	.ascii	"_temp_1663\0"
	.align
_Label_1672:
	.byte	'?'
	.ascii	"_temp_1662\0"
	.align
_Label_1673:
	.byte	'?'
	.ascii	"_temp_1661\0"
	.align
_Label_1674:
	.byte	'?'
	.ascii	"_temp_1660\0"
	.align
_Label_1675:
	.byte	'?'
	.ascii	"_temp_1659\0"
	.align
_Label_1676:
	.byte	'?'
	.ascii	"_temp_1654\0"
	.align
_Label_1677:
	.byte	'?'
	.ascii	"_temp_1653\0"
	.align
_Label_1678:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_1679:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1680:
	.byte	'I'
	.ascii	"bitNumber\0"
	.align
_Label_1681:
	.byte	'I'
	.ascii	"numFramesReturned\0"
	.align
! 
! ===============  CLASS AddrSpace  ===============
! 
! Dispatch Table:
! 
_P_Kernel_AddrSpace:
	.word	_Label_1682
	jmp	_Method_P_Kernel_AddrSpace_1	! 4:	Init
	jmp	_Method_P_Kernel_AddrSpace_2	! 8:	Print
	jmp	_Method_P_Kernel_AddrSpace_3	! 12:	ExtractFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_4	! 16:	ExtractUndefinedBits
	jmp	_Method_P_Kernel_AddrSpace_5	! 20:	SetFrameAddr
	jmp	_Method_P_Kernel_AddrSpace_6	! 24:	IsDirty
	jmp	_Method_P_Kernel_AddrSpace_7	! 28:	IsReferenced
	jmp	_Method_P_Kernel_AddrSpace_8	! 32:	IsWritable
	jmp	_Method_P_Kernel_AddrSpace_9	! 36:	IsValid
	jmp	_Method_P_Kernel_AddrSpace_10	! 40:	SetDirty
	jmp	_Method_P_Kernel_AddrSpace_11	! 44:	SetReferenced
	jmp	_Method_P_Kernel_AddrSpace_12	! 48:	SetWritable
	jmp	_Method_P_Kernel_AddrSpace_13	! 52:	SetValid
	jmp	_Method_P_Kernel_AddrSpace_14	! 56:	ClearDirty
	jmp	_Method_P_Kernel_AddrSpace_15	! 60:	ClearReferenced
	jmp	_Method_P_Kernel_AddrSpace_16	! 64:	ClearWritable
	jmp	_Method_P_Kernel_AddrSpace_17	! 68:	ClearValid
	jmp	_Method_P_Kernel_AddrSpace_18	! 72:	SetToThisPageTable
	jmp	_Method_P_Kernel_AddrSpace_19	! 76:	CopyBytesFromVirtual
	jmp	_Method_P_Kernel_AddrSpace_20	! 80:	CopyBytesToVirtual
	jmp	_Method_P_Kernel_AddrSpace_21	! 84:	GetStringFromVirtual
	.word	0
! 
! Class descriptor:
! 
_Label_1682:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_1683
	.word	_sourceFileName
	.word	292		! line number
	.word	92		! size of instances, in bytes
	.word	_P_Kernel_AddrSpace
	.word	_P_System_Object
	.word	0
_Label_1683:
	.ascii	"AddrSpace\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_AddrSpace_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_1,r1
	push	r1
	mov	25,r1
_Label_3129:
	push	r0
	sub	r1,1,r1
	bne	_Label_3129
	mov	1248,r13		! source line 1248
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1252,r13		! source line 1252
	mov	"\0\0AS",r10
!   numberOfPages = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0AS",r10
!   _temp_1684 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-108]
!   NEW ARRAY Constructor...
!   _temp_1686 = &_temp_1685
	add	r14,-104,r1
	store	r1,[r14+-20]
!   _temp_1686 = _temp_1686 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   Next value...
	mov	20,r1
	store	r1,[r14+-16]
_Label_1688:
!   Data Move: *_temp_1686 = 3  (sizeInBytes=4)
	mov	3,r1
	load	[r14+-20],r2
	store	r1,[r2]
!   _temp_1686 = _temp_1686 + 4
	load	[r14+-20],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_1687 = _temp_1687 + -1
	load	[r14+-16],r1
	add	r1,-1,r1
	store	r1,[r14+-16]
!   if intNotZero (_temp_1687) then goto _Label_1688
	load	[r14+-16],r1
	cmp	r1,r0
	bne	_Label_1688
!   Initialize the array size...
	mov	20,r1
	store	r1,[r14+-104]
!   _temp_1689 = &_temp_1685
	add	r14,-104,r1
	store	r1,[r14+-12]
!   make sure array has size 20
	load	[r14+-108],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,0
	be	_Label_3130
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3130:
!   make sure array has size 20
	load	[r14+-12],r1
	load	[r1],r1
	set	20, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_1684 = *_temp_1689  (sizeInBytes=84)
	load	[r14+-12],r5
	load	[r14+-108],r4
	mov	21,r3
_Label_3131:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3131
! RETURN STATEMENT...
	mov	1253,r13		! source line 1253
	mov	"\0\0RE",r10
	add	r15,104,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_1:
	.word	_sourceFileName
	.word	_Label_1690
	.word	4		! total size of parameters
	.word	100		! frame size = 100
	.word	_Label_1691
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1692
	.word	-12
	.word	4
	.word	_Label_1693
	.word	-16
	.word	4
	.word	_Label_1694
	.word	-20
	.word	4
	.word	_Label_1695
	.word	-104
	.word	84
	.word	_Label_1696
	.word	-108
	.word	4
	.word	0
_Label_1690:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_1691:
	.ascii	"Pself\0"
	.align
_Label_1692:
	.byte	'?'
	.ascii	"_temp_1689\0"
	.align
_Label_1693:
	.byte	'?'
	.ascii	"_temp_1687\0"
	.align
_Label_1694:
	.byte	'?'
	.ascii	"_temp_1686\0"
	.align
_Label_1695:
	.byte	'?'
	.ascii	"_temp_1685\0"
	.align
_Label_1696:
	.byte	'?'
	.ascii	"_temp_1684\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_AddrSpace_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_2,r1
	push	r1
	mov	42,r1
_Label_3132:
	push	r0
	sub	r1,1,r1
	bne	_Label_3132
	mov	1258,r13		! source line 1258
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_1697 = _StringConst_140
	set	_StringConst_140,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_1697  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	1263,r13		! source line 1263
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1698 = _StringConst_141
	set	_StringConst_141,r1
	store	r1,[r14+-160]
!   Prepare Argument: offset=8  value=_temp_1698  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Call the function
	mov	1264,r13		! source line 1264
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_1703 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-156]
!   Calculate and save the FOR-LOOP ending value
!   _temp_1704 = numberOfPages - 1		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_1703  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+-168]
_Label_1699:
!   Perform the FOR-LOOP termination test
!   if i > _temp_1704 then goto _Label_1702		
	load	[r14+-168],r1
	load	[r14+-152],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_1702
_Label_1700:
	mov	1265,r13		! source line 1265
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_1705 = _StringConst_142
	set	_StringConst_142,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_1705  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	1266,r13		! source line 1266
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1707 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-140]
!   Move address of _temp_1707 [i ] into _temp_1708
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-140],r1
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
	store	r2,[r14+-136]
!   _temp_1706 = _temp_1708		(4 bytes)
	load	[r14+-136],r1
	store	r1,[r14+-144]
!   Prepare Argument: offset=8  value=_temp_1706  sizeInBytes=4
	load	[r14+-144],r1
	store	r1,[r15+0]
!   Call the function
	mov	1267,r13		! source line 1267
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1709 = _StringConst_143
	set	_StringConst_143,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_1709  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	1268,r13		! source line 1268
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1711 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-124]
!   Move address of _temp_1711 [i ] into _temp_1712
!     make sure index expr is >= 0
	load	[r14+-168],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-124],r1
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
	store	r2,[r14+-120]
!   Data Move: _temp_1710 = *_temp_1712  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r1],r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_1710  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Call the function
	mov	1269,r13		! source line 1269
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1713 = _StringConst_144
	set	_StringConst_144,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_1713  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	1270,r13		! source line 1270
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_1714 = i * 8192		(int)
	load	[r14+-168],r1
	mov	8192,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_1714  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Call the function
	mov	1271,r13		! source line 1271
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1715 = _StringConst_145
	set	_StringConst_145,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_1715  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	1272,r13		! source line 1272
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
	mov	1273,r13		! source line 1273
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_1717) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-100],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_1716  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=8  value=_temp_1716  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+0]
!   Call the function
	mov	1273,r13		! source line 1273
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_1718 = _StringConst_146
	set	_StringConst_146,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_1718  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	1274,r13		! source line 1274
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1275,r13		! source line 1275
	mov	"\0\0IF",r10
	mov	1275,r13		! source line 1275
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-88]
!   if intIsZero (_temp_1722) then goto _runtimeErrorNullPointer
	load	[r14+-88],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1721  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_1721) then goto _Label_1720
	load	[r14+-92],r1
	cmp	r1,r0
	be	_Label_1720
!	jmp	_Label_1719
_Label_1719:
! THEN...
	mov	1276,r13		! source line 1276
	mov	"\0\0TN",r10
! CALL STATEMENT...
	mov	1276,r13		! source line 1276
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-80]
!   if intIsZero (_temp_1724) then goto _runtimeErrorNullPointer
	load	[r14+-80],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message ExtractUndefinedBits
	load	[r14+-80],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   Retrieve Result: targetName=_temp_1723  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-84]
!   Prepare Argument: offset=8  value=_temp_1723  sizeInBytes=4
	load	[r14+-84],r1
	store	r1,[r15+0]
!   Call the function
	mov	1276,r13		! source line 1276
	mov	"\0\0CE",r10
	call	printHex
	jmp	_Label_1725
_Label_1720:
! ELSE...
	mov	1278,r13		! source line 1278
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1726 = _StringConst_147
	set	_StringConst_147,r1
	store	r1,[r14+-76]
!   Prepare Argument: offset=8  value=_temp_1726  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+0]
!   Call the function
	mov	1278,r13		! source line 1278
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1725:
! CALL STATEMENT...
!   _temp_1727 = _StringConst_148
	set	_StringConst_148,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_1727  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	1280,r13		! source line 1280
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1281,r13		! source line 1281
	mov	"\0\0IF",r10
	mov	1281,r13		! source line 1281
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-68]
!   if intIsZero (_temp_1730) then goto _runtimeErrorNullPointer
	load	[r14+-68],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsDirty
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
!   if result==true then goto _Label_1728 else goto _Label_1729
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1729
	jmp	_Label_1728
_Label_1728:
! THEN...
	mov	1282,r13		! source line 1282
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1731 = _StringConst_149
	set	_StringConst_149,r1
	store	r1,[r14+-64]
!   Prepare Argument: offset=8  value=_temp_1731  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+0]
!   Call the function
	mov	1282,r13		! source line 1282
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1732
_Label_1729:
! ELSE...
	mov	1284,r13		! source line 1284
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1733 = _StringConst_150
	set	_StringConst_150,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=_temp_1733  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+0]
!   Call the function
	mov	1284,r13		! source line 1284
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1732:
! CALL STATEMENT...
!   _temp_1734 = _StringConst_151
	set	_StringConst_151,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_1734  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	1286,r13		! source line 1286
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1287,r13		! source line 1287
	mov	"\0\0IF",r10
	mov	1287,r13		! source line 1287
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-52]
!   if intIsZero (_temp_1737) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsReferenced
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   if result==true then goto _Label_1735 else goto _Label_1736
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1736
	jmp	_Label_1735
_Label_1735:
! THEN...
	mov	1288,r13		! source line 1288
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1738 = _StringConst_152
	set	_StringConst_152,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_1738  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	1288,r13		! source line 1288
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1739
_Label_1736:
! ELSE...
	mov	1290,r13		! source line 1290
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1740 = _StringConst_153
	set	_StringConst_153,r1
	store	r1,[r14+-44]
!   Prepare Argument: offset=8  value=_temp_1740  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+0]
!   Call the function
	mov	1290,r13		! source line 1290
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1739:
! CALL STATEMENT...
!   _temp_1741 = _StringConst_154
	set	_StringConst_154,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=8  value=_temp_1741  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+0]
!   Call the function
	mov	1292,r13		! source line 1292
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1293,r13		! source line 1293
	mov	"\0\0IF",r10
	mov	1293,r13		! source line 1293
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-36]
!   if intIsZero (_temp_1744) then goto _runtimeErrorNullPointer
	load	[r14+-36],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-36],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   if result==true then goto _Label_1742 else goto _Label_1743
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1743
	jmp	_Label_1742
_Label_1742:
! THEN...
	mov	1294,r13		! source line 1294
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1745 = _StringConst_155
	set	_StringConst_155,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_1745  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1294,r13		! source line 1294
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1746
_Label_1743:
! ELSE...
	mov	1296,r13		! source line 1296
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1747 = _StringConst_156
	set	_StringConst_156,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_1747  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	1296,r13		! source line 1296
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1746:
! CALL STATEMENT...
!   _temp_1748 = _StringConst_157
	set	_StringConst_157,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_1748  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1298,r13		! source line 1298
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	1299,r13		! source line 1299
	mov	"\0\0IF",r10
	mov	1299,r13		! source line 1299
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_1751) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   if result==true then goto _Label_1749 else goto _Label_1750
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_1750
	jmp	_Label_1749
_Label_1749:
! THEN...
	mov	1300,r13		! source line 1300
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_1752 = _StringConst_158
	set	_StringConst_158,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_1752  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	1300,r13		! source line 1300
	mov	"\0\0CE",r10
	call	print
	jmp	_Label_1753
_Label_1750:
! ELSE...
	mov	1302,r13		! source line 1302
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_1754 = _StringConst_159
	set	_StringConst_159,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_1754  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	1302,r13		! source line 1302
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_1753:
! CALL STATEMENT...
!   Call the function
	mov	1304,r13		! source line 1304
	mov	"\0\0CA",r10
	call	_P_System_nl
!   Increment the FOR-LOOP index variable and jump back
_Label_1701:
!   i = i + 1
	load	[r14+-168],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-168]
	jmp	_Label_1699
! END FOR
_Label_1702:
! RETURN STATEMENT...
	mov	1265,r13		! source line 1265
	mov	"\0\0RE",r10
	add	r15,172,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_2:
	.word	_sourceFileName
	.word	_Label_1755
	.word	4		! total size of parameters
	.word	168		! frame size = 168
	.word	_Label_1756
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1757
	.word	-12
	.word	4
	.word	_Label_1758
	.word	-16
	.word	4
	.word	_Label_1759
	.word	-20
	.word	4
	.word	_Label_1760
	.word	-24
	.word	4
	.word	_Label_1761
	.word	-28
	.word	4
	.word	_Label_1762
	.word	-32
	.word	4
	.word	_Label_1763
	.word	-36
	.word	4
	.word	_Label_1764
	.word	-40
	.word	4
	.word	_Label_1765
	.word	-44
	.word	4
	.word	_Label_1766
	.word	-48
	.word	4
	.word	_Label_1767
	.word	-52
	.word	4
	.word	_Label_1768
	.word	-56
	.word	4
	.word	_Label_1769
	.word	-60
	.word	4
	.word	_Label_1770
	.word	-64
	.word	4
	.word	_Label_1771
	.word	-68
	.word	4
	.word	_Label_1772
	.word	-72
	.word	4
	.word	_Label_1773
	.word	-76
	.word	4
	.word	_Label_1774
	.word	-80
	.word	4
	.word	_Label_1775
	.word	-84
	.word	4
	.word	_Label_1776
	.word	-88
	.word	4
	.word	_Label_1777
	.word	-92
	.word	4
	.word	_Label_1778
	.word	-96
	.word	4
	.word	_Label_1779
	.word	-100
	.word	4
	.word	_Label_1780
	.word	-104
	.word	4
	.word	_Label_1781
	.word	-108
	.word	4
	.word	_Label_1782
	.word	-112
	.word	4
	.word	_Label_1783
	.word	-116
	.word	4
	.word	_Label_1784
	.word	-120
	.word	4
	.word	_Label_1785
	.word	-124
	.word	4
	.word	_Label_1786
	.word	-128
	.word	4
	.word	_Label_1787
	.word	-132
	.word	4
	.word	_Label_1788
	.word	-136
	.word	4
	.word	_Label_1789
	.word	-140
	.word	4
	.word	_Label_1790
	.word	-144
	.word	4
	.word	_Label_1791
	.word	-148
	.word	4
	.word	_Label_1792
	.word	-152
	.word	4
	.word	_Label_1793
	.word	-156
	.word	4
	.word	_Label_1794
	.word	-160
	.word	4
	.word	_Label_1795
	.word	-164
	.word	4
	.word	_Label_1796
	.word	-168
	.word	4
	.word	0
_Label_1755:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_1756:
	.ascii	"Pself\0"
	.align
_Label_1757:
	.byte	'?'
	.ascii	"_temp_1754\0"
	.align
_Label_1758:
	.byte	'?'
	.ascii	"_temp_1752\0"
	.align
_Label_1759:
	.byte	'?'
	.ascii	"_temp_1751\0"
	.align
_Label_1760:
	.byte	'?'
	.ascii	"_temp_1748\0"
	.align
_Label_1761:
	.byte	'?'
	.ascii	"_temp_1747\0"
	.align
_Label_1762:
	.byte	'?'
	.ascii	"_temp_1745\0"
	.align
_Label_1763:
	.byte	'?'
	.ascii	"_temp_1744\0"
	.align
_Label_1764:
	.byte	'?'
	.ascii	"_temp_1741\0"
	.align
_Label_1765:
	.byte	'?'
	.ascii	"_temp_1740\0"
	.align
_Label_1766:
	.byte	'?'
	.ascii	"_temp_1738\0"
	.align
_Label_1767:
	.byte	'?'
	.ascii	"_temp_1737\0"
	.align
_Label_1768:
	.byte	'?'
	.ascii	"_temp_1734\0"
	.align
_Label_1769:
	.byte	'?'
	.ascii	"_temp_1733\0"
	.align
_Label_1770:
	.byte	'?'
	.ascii	"_temp_1731\0"
	.align
_Label_1771:
	.byte	'?'
	.ascii	"_temp_1730\0"
	.align
_Label_1772:
	.byte	'?'
	.ascii	"_temp_1727\0"
	.align
_Label_1773:
	.byte	'?'
	.ascii	"_temp_1726\0"
	.align
_Label_1774:
	.byte	'?'
	.ascii	"_temp_1724\0"
	.align
_Label_1775:
	.byte	'?'
	.ascii	"_temp_1723\0"
	.align
_Label_1776:
	.byte	'?'
	.ascii	"_temp_1722\0"
	.align
_Label_1777:
	.byte	'?'
	.ascii	"_temp_1721\0"
	.align
_Label_1778:
	.byte	'?'
	.ascii	"_temp_1718\0"
	.align
_Label_1779:
	.byte	'?'
	.ascii	"_temp_1717\0"
	.align
_Label_1780:
	.byte	'?'
	.ascii	"_temp_1716\0"
	.align
_Label_1781:
	.byte	'?'
	.ascii	"_temp_1715\0"
	.align
_Label_1782:
	.byte	'?'
	.ascii	"_temp_1714\0"
	.align
_Label_1783:
	.byte	'?'
	.ascii	"_temp_1713\0"
	.align
_Label_1784:
	.byte	'?'
	.ascii	"_temp_1712\0"
	.align
_Label_1785:
	.byte	'?'
	.ascii	"_temp_1711\0"
	.align
_Label_1786:
	.byte	'?'
	.ascii	"_temp_1710\0"
	.align
_Label_1787:
	.byte	'?'
	.ascii	"_temp_1709\0"
	.align
_Label_1788:
	.byte	'?'
	.ascii	"_temp_1708\0"
	.align
_Label_1789:
	.byte	'?'
	.ascii	"_temp_1707\0"
	.align
_Label_1790:
	.byte	'?'
	.ascii	"_temp_1706\0"
	.align
_Label_1791:
	.byte	'?'
	.ascii	"_temp_1705\0"
	.align
_Label_1792:
	.byte	'?'
	.ascii	"_temp_1704\0"
	.align
_Label_1793:
	.byte	'?'
	.ascii	"_temp_1703\0"
	.align
_Label_1794:
	.byte	'?'
	.ascii	"_temp_1698\0"
	.align
_Label_1795:
	.byte	'?'
	.ascii	"_temp_1697\0"
	.align
_Label_1796:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD ExtractFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_3,r1
	push	r1
	mov	4,r1
_Label_3133:
	push	r0
	sub	r1,1,r1
	bne	_Label_3133
	mov	1310,r13		! source line 1310
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1315,r13		! source line 1315
	mov	"\0\0RE",r10
!   _temp_1799 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1799 [entry ] into _temp_1800
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1798 = *_temp_1800  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1797 = _temp_1798 AND -8192		(int)
	load	[r14+-20],r1
	mov	-8192,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1797  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_3:
	.word	_sourceFileName
	.word	_Label_1801
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1802
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1803
	.word	12
	.word	4
	.word	_Label_1804
	.word	-12
	.word	4
	.word	_Label_1805
	.word	-16
	.word	4
	.word	_Label_1806
	.word	-20
	.word	4
	.word	_Label_1807
	.word	-24
	.word	4
	.word	0
_Label_1801:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractFrameAddr\0"
	.align
_Label_1802:
	.ascii	"Pself\0"
	.align
_Label_1803:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1804:
	.byte	'?'
	.ascii	"_temp_1800\0"
	.align
_Label_1805:
	.byte	'?'
	.ascii	"_temp_1799\0"
	.align
_Label_1806:
	.byte	'?'
	.ascii	"_temp_1798\0"
	.align
_Label_1807:
	.byte	'?'
	.ascii	"_temp_1797\0"
	.align
! 
! ===============  METHOD ExtractUndefinedBits  ===============
! 
_Method_P_Kernel_AddrSpace_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_4,r1
	push	r1
	mov	4,r1
_Label_3134:
	push	r0
	sub	r1,1,r1
	bne	_Label_3134
	mov	1320,r13		! source line 1320
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1324,r13		! source line 1324
	mov	"\0\0RE",r10
!   _temp_1810 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1810 [entry ] into _temp_1811
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1809 = *_temp_1811  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1808 = _temp_1809 AND 8176		(int)
	load	[r14+-20],r1
	mov	8176,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   ReturnResult: _temp_1808  (sizeInBytes=4)
	load	[r14+-24],r1
	store	r1,[r14+8]
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_4:
	.word	_sourceFileName
	.word	_Label_1812
	.word	8		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_1813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1814
	.word	12
	.word	4
	.word	_Label_1815
	.word	-12
	.word	4
	.word	_Label_1816
	.word	-16
	.word	4
	.word	_Label_1817
	.word	-20
	.word	4
	.word	_Label_1818
	.word	-24
	.word	4
	.word	0
_Label_1812:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ExtractUndefinedBits\0"
	.align
_Label_1813:
	.ascii	"Pself\0"
	.align
_Label_1814:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1815:
	.byte	'?'
	.ascii	"_temp_1811\0"
	.align
_Label_1816:
	.byte	'?'
	.ascii	"_temp_1810\0"
	.align
_Label_1817:
	.byte	'?'
	.ascii	"_temp_1809\0"
	.align
_Label_1818:
	.byte	'?'
	.ascii	"_temp_1808\0"
	.align
! 
! ===============  METHOD SetFrameAddr  ===============
! 
_Method_P_Kernel_AddrSpace_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_5,r1
	push	r1
	mov	7,r1
_Label_3135:
	push	r0
	sub	r1,1,r1
	bne	_Label_3135
	mov	1329,r13		! source line 1329
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0AS",r10
!   _temp_1819 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-36]
!   Move address of _temp_1819 [entry ] into _temp_1820
!     make sure index expr is >= 0
	load	[r14+12],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-36],r1
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
	store	r2,[r14+-32]
!   _temp_1824 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1824 [entry ] into _temp_1825
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1823 = *_temp_1825  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1822 = _temp_1823 AND 8191		(int)
	load	[r14+-20],r1
	mov	8191,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   _temp_1821 = _temp_1822 OR frameAddr		(int)
	load	[r14+-24],r1
	load	[r14+16],r2
	or	r1,r2,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_1820 = _temp_1821  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r14+-32],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1334,r13		! source line 1334
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_5:
	.word	_sourceFileName
	.word	_Label_1826
	.word	12		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_1827
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1828
	.word	12
	.word	4
	.word	_Label_1829
	.word	16
	.word	4
	.word	_Label_1830
	.word	-12
	.word	4
	.word	_Label_1831
	.word	-16
	.word	4
	.word	_Label_1832
	.word	-20
	.word	4
	.word	_Label_1833
	.word	-24
	.word	4
	.word	_Label_1834
	.word	-28
	.word	4
	.word	_Label_1835
	.word	-32
	.word	4
	.word	_Label_1836
	.word	-36
	.word	4
	.word	0
_Label_1826:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetFrameAddr\0"
	.align
_Label_1827:
	.ascii	"Pself\0"
	.align
_Label_1828:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1829:
	.byte	'I'
	.ascii	"frameAddr\0"
	.align
_Label_1830:
	.byte	'?'
	.ascii	"_temp_1825\0"
	.align
_Label_1831:
	.byte	'?'
	.ascii	"_temp_1824\0"
	.align
_Label_1832:
	.byte	'?'
	.ascii	"_temp_1823\0"
	.align
_Label_1833:
	.byte	'?'
	.ascii	"_temp_1822\0"
	.align
_Label_1834:
	.byte	'?'
	.ascii	"_temp_1821\0"
	.align
_Label_1835:
	.byte	'?'
	.ascii	"_temp_1820\0"
	.align
_Label_1836:
	.byte	'?'
	.ascii	"_temp_1819\0"
	.align
! 
! ===============  METHOD IsDirty  ===============
! 
_Method_P_Kernel_AddrSpace_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_6,r1
	push	r1
	mov	5,r1
_Label_3136:
	push	r0
	sub	r1,1,r1
	bne	_Label_3136
	mov	1339,r13		! source line 1339
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1343,r13		! source line 1343
	mov	"\0\0RE",r10
!   _temp_1840 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1840 [entry ] into _temp_1841
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1839 = *_temp_1841  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1838 = _temp_1839 AND 8		(int)
	load	[r14+-24],r1
	mov	8,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1838) then goto _Label_1842
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1842
!   _temp_1837 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1843
_Label_1842:
!   _temp_1837 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1843:
!   ReturnResult: _temp_1837  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_6:
	.word	_sourceFileName
	.word	_Label_1844
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1845
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1846
	.word	12
	.word	4
	.word	_Label_1847
	.word	-16
	.word	4
	.word	_Label_1848
	.word	-20
	.word	4
	.word	_Label_1849
	.word	-24
	.word	4
	.word	_Label_1850
	.word	-28
	.word	4
	.word	_Label_1851
	.word	-9
	.word	1
	.word	0
_Label_1844:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsDirty\0"
	.align
_Label_1845:
	.ascii	"Pself\0"
	.align
_Label_1846:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1847:
	.byte	'?'
	.ascii	"_temp_1841\0"
	.align
_Label_1848:
	.byte	'?'
	.ascii	"_temp_1840\0"
	.align
_Label_1849:
	.byte	'?'
	.ascii	"_temp_1839\0"
	.align
_Label_1850:
	.byte	'?'
	.ascii	"_temp_1838\0"
	.align
_Label_1851:
	.byte	'C'
	.ascii	"_temp_1837\0"
	.align
! 
! ===============  METHOD IsReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_7,r1
	push	r1
	mov	5,r1
_Label_3137:
	push	r0
	sub	r1,1,r1
	bne	_Label_3137
	mov	1348,r13		! source line 1348
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1352,r13		! source line 1352
	mov	"\0\0RE",r10
!   _temp_1855 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1855 [entry ] into _temp_1856
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1854 = *_temp_1856  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1853 = _temp_1854 AND 4		(int)
	load	[r14+-24],r1
	mov	4,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1853) then goto _Label_1857
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1857
!   _temp_1852 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1858
_Label_1857:
!   _temp_1852 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1858:
!   ReturnResult: _temp_1852  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_7:
	.word	_sourceFileName
	.word	_Label_1859
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1860
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1861
	.word	12
	.word	4
	.word	_Label_1862
	.word	-16
	.word	4
	.word	_Label_1863
	.word	-20
	.word	4
	.word	_Label_1864
	.word	-24
	.word	4
	.word	_Label_1865
	.word	-28
	.word	4
	.word	_Label_1866
	.word	-9
	.word	1
	.word	0
_Label_1859:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsReferenced\0"
	.align
_Label_1860:
	.ascii	"Pself\0"
	.align
_Label_1861:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1862:
	.byte	'?'
	.ascii	"_temp_1856\0"
	.align
_Label_1863:
	.byte	'?'
	.ascii	"_temp_1855\0"
	.align
_Label_1864:
	.byte	'?'
	.ascii	"_temp_1854\0"
	.align
_Label_1865:
	.byte	'?'
	.ascii	"_temp_1853\0"
	.align
_Label_1866:
	.byte	'C'
	.ascii	"_temp_1852\0"
	.align
! 
! ===============  METHOD IsWritable  ===============
! 
_Method_P_Kernel_AddrSpace_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_8,r1
	push	r1
	mov	5,r1
_Label_3138:
	push	r0
	sub	r1,1,r1
	bne	_Label_3138
	mov	1357,r13		! source line 1357
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1361,r13		! source line 1361
	mov	"\0\0RE",r10
!   _temp_1870 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1870 [entry ] into _temp_1871
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1869 = *_temp_1871  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1868 = _temp_1869 AND 2		(int)
	load	[r14+-24],r1
	mov	2,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1868) then goto _Label_1872
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1872
!   _temp_1867 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1873
_Label_1872:
!   _temp_1867 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1873:
!   ReturnResult: _temp_1867  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_8:
	.word	_sourceFileName
	.word	_Label_1874
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1875
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1876
	.word	12
	.word	4
	.word	_Label_1877
	.word	-16
	.word	4
	.word	_Label_1878
	.word	-20
	.word	4
	.word	_Label_1879
	.word	-24
	.word	4
	.word	_Label_1880
	.word	-28
	.word	4
	.word	_Label_1881
	.word	-9
	.word	1
	.word	0
_Label_1874:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsWritable\0"
	.align
_Label_1875:
	.ascii	"Pself\0"
	.align
_Label_1876:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1877:
	.byte	'?'
	.ascii	"_temp_1871\0"
	.align
_Label_1878:
	.byte	'?'
	.ascii	"_temp_1870\0"
	.align
_Label_1879:
	.byte	'?'
	.ascii	"_temp_1869\0"
	.align
_Label_1880:
	.byte	'?'
	.ascii	"_temp_1868\0"
	.align
_Label_1881:
	.byte	'C'
	.ascii	"_temp_1867\0"
	.align
! 
! ===============  METHOD IsValid  ===============
! 
_Method_P_Kernel_AddrSpace_9:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_9,r1
	push	r1
	mov	5,r1
_Label_3139:
	push	r0
	sub	r1,1,r1
	bne	_Label_3139
	mov	1366,r13		! source line 1366
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! RETURN STATEMENT...
	mov	1370,r13		! source line 1370
	mov	"\0\0RE",r10
!   _temp_1885 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_1885 [entry ] into _temp_1886
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1884 = *_temp_1886  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   _temp_1883 = _temp_1884 AND 1		(int)
	load	[r14+-24],r1
	mov	1,r2
	and	r1,r2,r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_1883) then goto _Label_1887
	load	[r14+-28],r1
	cmp	r1,r0
	be	_Label_1887
!   _temp_1882 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_1888
_Label_1887:
!   _temp_1882 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_1888:
!   ReturnResult: _temp_1882  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,24,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_9:
	.word	_sourceFileName
	.word	_Label_1889
	.word	8		! total size of parameters
	.word	20		! frame size = 20
	.word	_Label_1890
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1891
	.word	12
	.word	4
	.word	_Label_1892
	.word	-16
	.word	4
	.word	_Label_1893
	.word	-20
	.word	4
	.word	_Label_1894
	.word	-24
	.word	4
	.word	_Label_1895
	.word	-28
	.word	4
	.word	_Label_1896
	.word	-9
	.word	1
	.word	0
_Label_1889:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"IsValid\0"
	.align
_Label_1890:
	.ascii	"Pself\0"
	.align
_Label_1891:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1892:
	.byte	'?'
	.ascii	"_temp_1886\0"
	.align
_Label_1893:
	.byte	'?'
	.ascii	"_temp_1885\0"
	.align
_Label_1894:
	.byte	'?'
	.ascii	"_temp_1884\0"
	.align
_Label_1895:
	.byte	'?'
	.ascii	"_temp_1883\0"
	.align
_Label_1896:
	.byte	'C'
	.ascii	"_temp_1882\0"
	.align
! 
! ===============  METHOD SetDirty  ===============
! 
_Method_P_Kernel_AddrSpace_10:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_10,r1
	push	r1
	mov	6,r1
_Label_3140:
	push	r0
	sub	r1,1,r1
	bne	_Label_3140
	mov	1375,r13		! source line 1375
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0AS",r10
!   _temp_1897 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1897 [entry ] into _temp_1898
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1901 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1901 [entry ] into _temp_1902
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1900 = *_temp_1902  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1899 = _temp_1900 OR 8		(int)
	load	[r14+-20],r1
	mov	8,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1898 = _temp_1899  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1379,r13		! source line 1379
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_10:
	.word	_sourceFileName
	.word	_Label_1903
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1904
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1905
	.word	12
	.word	4
	.word	_Label_1906
	.word	-12
	.word	4
	.word	_Label_1907
	.word	-16
	.word	4
	.word	_Label_1908
	.word	-20
	.word	4
	.word	_Label_1909
	.word	-24
	.word	4
	.word	_Label_1910
	.word	-28
	.word	4
	.word	_Label_1911
	.word	-32
	.word	4
	.word	0
_Label_1903:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetDirty\0"
	.align
_Label_1904:
	.ascii	"Pself\0"
	.align
_Label_1905:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1906:
	.byte	'?'
	.ascii	"_temp_1902\0"
	.align
_Label_1907:
	.byte	'?'
	.ascii	"_temp_1901\0"
	.align
_Label_1908:
	.byte	'?'
	.ascii	"_temp_1900\0"
	.align
_Label_1909:
	.byte	'?'
	.ascii	"_temp_1899\0"
	.align
_Label_1910:
	.byte	'?'
	.ascii	"_temp_1898\0"
	.align
_Label_1911:
	.byte	'?'
	.ascii	"_temp_1897\0"
	.align
! 
! ===============  METHOD SetReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_11:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_11,r1
	push	r1
	mov	6,r1
_Label_3141:
	push	r0
	sub	r1,1,r1
	bne	_Label_3141
	mov	1384,r13		! source line 1384
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0AS",r10
!   _temp_1912 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1912 [entry ] into _temp_1913
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1916 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1916 [entry ] into _temp_1917
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1915 = *_temp_1917  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1914 = _temp_1915 OR 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1913 = _temp_1914  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1388,r13		! source line 1388
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_11:
	.word	_sourceFileName
	.word	_Label_1918
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1919
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1920
	.word	12
	.word	4
	.word	_Label_1921
	.word	-12
	.word	4
	.word	_Label_1922
	.word	-16
	.word	4
	.word	_Label_1923
	.word	-20
	.word	4
	.word	_Label_1924
	.word	-24
	.word	4
	.word	_Label_1925
	.word	-28
	.word	4
	.word	_Label_1926
	.word	-32
	.word	4
	.word	0
_Label_1918:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetReferenced\0"
	.align
_Label_1919:
	.ascii	"Pself\0"
	.align
_Label_1920:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1921:
	.byte	'?'
	.ascii	"_temp_1917\0"
	.align
_Label_1922:
	.byte	'?'
	.ascii	"_temp_1916\0"
	.align
_Label_1923:
	.byte	'?'
	.ascii	"_temp_1915\0"
	.align
_Label_1924:
	.byte	'?'
	.ascii	"_temp_1914\0"
	.align
_Label_1925:
	.byte	'?'
	.ascii	"_temp_1913\0"
	.align
_Label_1926:
	.byte	'?'
	.ascii	"_temp_1912\0"
	.align
! 
! ===============  METHOD SetWritable  ===============
! 
_Method_P_Kernel_AddrSpace_12:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_12,r1
	push	r1
	mov	6,r1
_Label_3142:
	push	r0
	sub	r1,1,r1
	bne	_Label_3142
	mov	1393,r13		! source line 1393
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0AS",r10
!   _temp_1927 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1927 [entry ] into _temp_1928
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1931 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1931 [entry ] into _temp_1932
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1930 = *_temp_1932  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1929 = _temp_1930 OR 2		(int)
	load	[r14+-20],r1
	mov	2,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1928 = _temp_1929  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1397,r13		! source line 1397
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_12:
	.word	_sourceFileName
	.word	_Label_1933
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1934
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1935
	.word	12
	.word	4
	.word	_Label_1936
	.word	-12
	.word	4
	.word	_Label_1937
	.word	-16
	.word	4
	.word	_Label_1938
	.word	-20
	.word	4
	.word	_Label_1939
	.word	-24
	.word	4
	.word	_Label_1940
	.word	-28
	.word	4
	.word	_Label_1941
	.word	-32
	.word	4
	.word	0
_Label_1933:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetWritable\0"
	.align
_Label_1934:
	.ascii	"Pself\0"
	.align
_Label_1935:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1936:
	.byte	'?'
	.ascii	"_temp_1932\0"
	.align
_Label_1937:
	.byte	'?'
	.ascii	"_temp_1931\0"
	.align
_Label_1938:
	.byte	'?'
	.ascii	"_temp_1930\0"
	.align
_Label_1939:
	.byte	'?'
	.ascii	"_temp_1929\0"
	.align
_Label_1940:
	.byte	'?'
	.ascii	"_temp_1928\0"
	.align
_Label_1941:
	.byte	'?'
	.ascii	"_temp_1927\0"
	.align
! 
! ===============  METHOD SetValid  ===============
! 
_Method_P_Kernel_AddrSpace_13:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_13,r1
	push	r1
	mov	6,r1
_Label_3143:
	push	r0
	sub	r1,1,r1
	bne	_Label_3143
	mov	1402,r13		! source line 1402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0AS",r10
!   _temp_1942 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1942 [entry ] into _temp_1943
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1946 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1946 [entry ] into _temp_1947
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1945 = *_temp_1947  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1944 = _temp_1945 OR 1		(int)
	load	[r14+-20],r1
	mov	1,r2
	or	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1943 = _temp_1944  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1406,r13		! source line 1406
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_13:
	.word	_sourceFileName
	.word	_Label_1948
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1949
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1950
	.word	12
	.word	4
	.word	_Label_1951
	.word	-12
	.word	4
	.word	_Label_1952
	.word	-16
	.word	4
	.word	_Label_1953
	.word	-20
	.word	4
	.word	_Label_1954
	.word	-24
	.word	4
	.word	_Label_1955
	.word	-28
	.word	4
	.word	_Label_1956
	.word	-32
	.word	4
	.word	0
_Label_1948:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetValid\0"
	.align
_Label_1949:
	.ascii	"Pself\0"
	.align
_Label_1950:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1951:
	.byte	'?'
	.ascii	"_temp_1947\0"
	.align
_Label_1952:
	.byte	'?'
	.ascii	"_temp_1946\0"
	.align
_Label_1953:
	.byte	'?'
	.ascii	"_temp_1945\0"
	.align
_Label_1954:
	.byte	'?'
	.ascii	"_temp_1944\0"
	.align
_Label_1955:
	.byte	'?'
	.ascii	"_temp_1943\0"
	.align
_Label_1956:
	.byte	'?'
	.ascii	"_temp_1942\0"
	.align
! 
! ===============  METHOD ClearDirty  ===============
! 
_Method_P_Kernel_AddrSpace_14:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_14,r1
	push	r1
	mov	6,r1
_Label_3144:
	push	r0
	sub	r1,1,r1
	bne	_Label_3144
	mov	1411,r13		! source line 1411
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0AS",r10
!   _temp_1957 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1957 [entry ] into _temp_1958
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1961 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1961 [entry ] into _temp_1962
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1960 = *_temp_1962  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1959 = _temp_1960 AND -9		(int)
	load	[r14+-20],r1
	mov	-9,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1958 = _temp_1959  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1415,r13		! source line 1415
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_14:
	.word	_sourceFileName
	.word	_Label_1963
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1964
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1965
	.word	12
	.word	4
	.word	_Label_1966
	.word	-12
	.word	4
	.word	_Label_1967
	.word	-16
	.word	4
	.word	_Label_1968
	.word	-20
	.word	4
	.word	_Label_1969
	.word	-24
	.word	4
	.word	_Label_1970
	.word	-28
	.word	4
	.word	_Label_1971
	.word	-32
	.word	4
	.word	0
_Label_1963:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearDirty\0"
	.align
_Label_1964:
	.ascii	"Pself\0"
	.align
_Label_1965:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1966:
	.byte	'?'
	.ascii	"_temp_1962\0"
	.align
_Label_1967:
	.byte	'?'
	.ascii	"_temp_1961\0"
	.align
_Label_1968:
	.byte	'?'
	.ascii	"_temp_1960\0"
	.align
_Label_1969:
	.byte	'?'
	.ascii	"_temp_1959\0"
	.align
_Label_1970:
	.byte	'?'
	.ascii	"_temp_1958\0"
	.align
_Label_1971:
	.byte	'?'
	.ascii	"_temp_1957\0"
	.align
! 
! ===============  METHOD ClearReferenced  ===============
! 
_Method_P_Kernel_AddrSpace_15:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_15,r1
	push	r1
	mov	6,r1
_Label_3145:
	push	r0
	sub	r1,1,r1
	bne	_Label_3145
	mov	1420,r13		! source line 1420
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0AS",r10
!   _temp_1972 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1972 [entry ] into _temp_1973
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1976 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1976 [entry ] into _temp_1977
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1975 = *_temp_1977  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1974 = _temp_1975 AND -5		(int)
	load	[r14+-20],r1
	mov	-5,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1973 = _temp_1974  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1424,r13		! source line 1424
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_15:
	.word	_sourceFileName
	.word	_Label_1978
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1979
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1980
	.word	12
	.word	4
	.word	_Label_1981
	.word	-12
	.word	4
	.word	_Label_1982
	.word	-16
	.word	4
	.word	_Label_1983
	.word	-20
	.word	4
	.word	_Label_1984
	.word	-24
	.word	4
	.word	_Label_1985
	.word	-28
	.word	4
	.word	_Label_1986
	.word	-32
	.word	4
	.word	0
_Label_1978:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearReferenced\0"
	.align
_Label_1979:
	.ascii	"Pself\0"
	.align
_Label_1980:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1981:
	.byte	'?'
	.ascii	"_temp_1977\0"
	.align
_Label_1982:
	.byte	'?'
	.ascii	"_temp_1976\0"
	.align
_Label_1983:
	.byte	'?'
	.ascii	"_temp_1975\0"
	.align
_Label_1984:
	.byte	'?'
	.ascii	"_temp_1974\0"
	.align
_Label_1985:
	.byte	'?'
	.ascii	"_temp_1973\0"
	.align
_Label_1986:
	.byte	'?'
	.ascii	"_temp_1972\0"
	.align
! 
! ===============  METHOD ClearWritable  ===============
! 
_Method_P_Kernel_AddrSpace_16:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_16,r1
	push	r1
	mov	6,r1
_Label_3146:
	push	r0
	sub	r1,1,r1
	bne	_Label_3146
	mov	1429,r13		! source line 1429
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0AS",r10
!   _temp_1987 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_1987 [entry ] into _temp_1988
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_1991 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_1991 [entry ] into _temp_1992
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_1990 = *_temp_1992  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_1989 = _temp_1990 AND -3		(int)
	load	[r14+-20],r1
	mov	-3,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_1988 = _temp_1989  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1433,r13		! source line 1433
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_16:
	.word	_sourceFileName
	.word	_Label_1993
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_1994
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_1995
	.word	12
	.word	4
	.word	_Label_1996
	.word	-12
	.word	4
	.word	_Label_1997
	.word	-16
	.word	4
	.word	_Label_1998
	.word	-20
	.word	4
	.word	_Label_1999
	.word	-24
	.word	4
	.word	_Label_2000
	.word	-28
	.word	4
	.word	_Label_2001
	.word	-32
	.word	4
	.word	0
_Label_1993:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearWritable\0"
	.align
_Label_1994:
	.ascii	"Pself\0"
	.align
_Label_1995:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_1996:
	.byte	'?'
	.ascii	"_temp_1992\0"
	.align
_Label_1997:
	.byte	'?'
	.ascii	"_temp_1991\0"
	.align
_Label_1998:
	.byte	'?'
	.ascii	"_temp_1990\0"
	.align
_Label_1999:
	.byte	'?'
	.ascii	"_temp_1989\0"
	.align
_Label_2000:
	.byte	'?'
	.ascii	"_temp_1988\0"
	.align
_Label_2001:
	.byte	'?'
	.ascii	"_temp_1987\0"
	.align
! 
! ===============  METHOD ClearValid  ===============
! 
_Method_P_Kernel_AddrSpace_17:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_17,r1
	push	r1
	mov	6,r1
_Label_3147:
	push	r0
	sub	r1,1,r1
	bne	_Label_3147
	mov	1438,r13		! source line 1438
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0AS",r10
!   _temp_2002 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-32]
!   Move address of _temp_2002 [entry ] into _temp_2003
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   _temp_2006 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-16]
!   Move address of _temp_2006 [entry ] into _temp_2007
!     make sure index expr is >= 0
	load	[r14+12],r2
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
!   Data Move: _temp_2005 = *_temp_2007  (sizeInBytes=4)
	load	[r14+-12],r1
	load	[r1],r1
	store	r1,[r14+-20]
!   _temp_2004 = _temp_2005 AND -2		(int)
	load	[r14+-20],r1
	mov	-2,r2
	and	r1,r2,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2003 = _temp_2004  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r14+-28],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1442,r13		! source line 1442
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_17:
	.word	_sourceFileName
	.word	_Label_2008
	.word	8		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2009
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2010
	.word	12
	.word	4
	.word	_Label_2011
	.word	-12
	.word	4
	.word	_Label_2012
	.word	-16
	.word	4
	.word	_Label_2013
	.word	-20
	.word	4
	.word	_Label_2014
	.word	-24
	.word	4
	.word	_Label_2015
	.word	-28
	.word	4
	.word	_Label_2016
	.word	-32
	.word	4
	.word	0
_Label_2008:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"ClearValid\0"
	.align
_Label_2009:
	.ascii	"Pself\0"
	.align
_Label_2010:
	.byte	'I'
	.ascii	"entry\0"
	.align
_Label_2011:
	.byte	'?'
	.ascii	"_temp_2007\0"
	.align
_Label_2012:
	.byte	'?'
	.ascii	"_temp_2006\0"
	.align
_Label_2013:
	.byte	'?'
	.ascii	"_temp_2005\0"
	.align
_Label_2014:
	.byte	'?'
	.ascii	"_temp_2004\0"
	.align
_Label_2015:
	.byte	'?'
	.ascii	"_temp_2003\0"
	.align
_Label_2016:
	.byte	'?'
	.ascii	"_temp_2002\0"
	.align
! 
! ===============  METHOD SetToThisPageTable  ===============
! 
_Method_P_Kernel_AddrSpace_18:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_18,r1
	push	r1
	mov	6,r1
_Label_3148:
	push	r0
	sub	r1,1,r1
	bne	_Label_3148
	mov	1447,r13		! source line 1447
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2018 = &pageTable
	load	[r14+8],r1
	add	r1,8,r1
	store	r1,[r14+-20]
!   Move address of _temp_2018 [0 ] into _temp_2019
!     make sure index expr is >= 0
	mov	0,r2
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
!   _temp_2017 = _temp_2019		(4 bytes)
	load	[r14+-16],r1
	store	r1,[r14+-24]
!   _temp_2020 = numberOfPages * 4		(int)
	load	[r14+8],r1
	load	[r1+4],r1
	mov	4,r2
	mul	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2017  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2020  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+4]
!   Call the function
	mov	1453,r13		! source line 1453
	mov	"\0\0CE",r10
	call	LoadPageTableRegs
! RETURN STATEMENT...
	mov	1453,r13		! source line 1453
	mov	"\0\0RE",r10
	add	r15,28,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_18:
	.word	_sourceFileName
	.word	_Label_2021
	.word	4		! total size of parameters
	.word	24		! frame size = 24
	.word	_Label_2022
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2023
	.word	-12
	.word	4
	.word	_Label_2024
	.word	-16
	.word	4
	.word	_Label_2025
	.word	-20
	.word	4
	.word	_Label_2026
	.word	-24
	.word	4
	.word	0
_Label_2021:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"SetToThisPageTable\0"
	.align
_Label_2022:
	.ascii	"Pself\0"
	.align
_Label_2023:
	.byte	'?'
	.ascii	"_temp_2020\0"
	.align
_Label_2024:
	.byte	'?'
	.ascii	"_temp_2019\0"
	.align
_Label_2025:
	.byte	'?'
	.ascii	"_temp_2018\0"
	.align
_Label_2026:
	.byte	'?'
	.ascii	"_temp_2017\0"
	.align
! 
! ===============  METHOD CopyBytesFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_19:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_19,r1
	push	r1
	mov	12,r1
_Label_3149:
	push	r0
	sub	r1,1,r1
	bne	_Label_3149
	mov	1458,r13		! source line 1458
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1473,r13		! source line 1473
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2027
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2027
	jmp	_Label_2028
_Label_2027:
! THEN...
	mov	1474,r13		! source line 1474
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1474,r13		! source line 1474
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2029
_Label_2028:
! ELSE...
	mov	1475,r13		! source line 1475
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1475,r13		! source line 1475
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2031		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2031
!	jmp	_Label_2030
_Label_2030:
! THEN...
	mov	1476,r13		! source line 1476
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1476,r13		! source line 1476
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2031:
! END IF...
_Label_2029:
! ASSIGNMENT STATEMENT...
	mov	1478,r13		! source line 1478
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1479,r13		! source line 1479
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+16],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1482,r13		! source line 1482
	mov	"\0\0WH",r10
_Label_2032:
!	jmp	_Label_2033
_Label_2033:
	mov	1482,r13		! source line 1482
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1483,r13		! source line 1483
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2036		(int)
	load	[r14+-40],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2036
!	jmp	_Label_2035
_Label_2035:
! THEN...
	mov	1484,r13		! source line 1484
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2037 = _StringConst_160
	set	_StringConst_160,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2037  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	1484,r13		! source line 1484
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1485,r13		! source line 1485
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2036:
! IF STATEMENT...
	mov	1487,r13		! source line 1487
	mov	"\0\0IF",r10
	mov	1487,r13		! source line 1487
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2041) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2040  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2040 then goto _Label_2039 else goto _Label_2038
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2038
	jmp	_Label_2039
_Label_2038:
! THEN...
	mov	1488,r13		! source line 1488
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2042 = _StringConst_161
	set	_StringConst_161,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2042  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	1488,r13		! source line 1488
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	1489,r13		! source line 1489
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2039:
! ASSIGNMENT STATEMENT...
	mov	1491,r13		! source line 1491
	mov	"\0\0AS",r10
	mov	1491,r13		! source line 1491
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2044) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2043  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   fromAddr = _temp_2043 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! WHILE STATEMENT...
	mov	1493,r13		! source line 1493
	mov	"\0\0WH",r10
_Label_2045:
!   if offset >= 8192 then goto _Label_2047		(int)
	load	[r14+-44],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2047
!	jmp	_Label_2046
_Label_2046:
	mov	1493,r13		! source line 1493
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1496,r13		! source line 1496
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (fromAddr) then goto _runtimeErrorNullPointer
	load	[r14+-48],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2048 = *fromAddr  (sizeInBytes=1)
	load	[r14+-48],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *kernelAddr = _temp_2048  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+12],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1497,r13		! source line 1497
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1498,r13		! source line 1498
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+12],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+12]
! ASSIGNMENT STATEMENT...
	mov	1499,r13		! source line 1499
	mov	"\0\0AS",r10
!   fromAddr = fromAddr + 1		(int)
	load	[r14+-48],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
! ASSIGNMENT STATEMENT...
	mov	1500,r13		! source line 1500
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! IF STATEMENT...
	mov	1501,r13		! source line 1501
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2050		(int)
	load	[r14+-36],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2050
!	jmp	_Label_2049
_Label_2049:
! THEN...
	mov	1502,r13		! source line 1502
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1502,r13		! source line 1502
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-36],r1
	store	r1,[r14+8]
	add	r15,52,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2050:
! END WHILE...
	jmp	_Label_2045
_Label_2047:
! ASSIGNMENT STATEMENT...
	mov	1505,r13		! source line 1505
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1506,r13		! source line 1506
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-44]
! END WHILE...
	jmp	_Label_2032
_Label_2034:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_19:
	.word	_sourceFileName
	.word	_Label_2051
	.word	16		! total size of parameters
	.word	48		! frame size = 48
	.word	_Label_2052
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2053
	.word	12
	.word	4
	.word	_Label_2054
	.word	16
	.word	4
	.word	_Label_2055
	.word	20
	.word	4
	.word	_Label_2056
	.word	-9
	.word	1
	.word	_Label_2057
	.word	-16
	.word	4
	.word	_Label_2058
	.word	-20
	.word	4
	.word	_Label_2059
	.word	-24
	.word	4
	.word	_Label_2060
	.word	-28
	.word	4
	.word	_Label_2061
	.word	-10
	.word	1
	.word	_Label_2062
	.word	-32
	.word	4
	.word	_Label_2063
	.word	-36
	.word	4
	.word	_Label_2064
	.word	-40
	.word	4
	.word	_Label_2065
	.word	-44
	.word	4
	.word	_Label_2066
	.word	-48
	.word	4
	.word	0
_Label_2051:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesFromVirtual\0"
	.align
_Label_2052:
	.ascii	"Pself\0"
	.align
_Label_2053:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2054:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2055:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2056:
	.byte	'C'
	.ascii	"_temp_2048\0"
	.align
_Label_2057:
	.byte	'?'
	.ascii	"_temp_2044\0"
	.align
_Label_2058:
	.byte	'?'
	.ascii	"_temp_2043\0"
	.align
_Label_2059:
	.byte	'?'
	.ascii	"_temp_2042\0"
	.align
_Label_2060:
	.byte	'?'
	.ascii	"_temp_2041\0"
	.align
_Label_2061:
	.byte	'C'
	.ascii	"_temp_2040\0"
	.align
_Label_2062:
	.byte	'?'
	.ascii	"_temp_2037\0"
	.align
_Label_2063:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2064:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2065:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2066:
	.byte	'I'
	.ascii	"fromAddr\0"
	.align
! 
! ===============  METHOD CopyBytesToVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_20:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_20,r1
	push	r1
	mov	11,r1
_Label_3150:
	push	r0
	sub	r1,1,r1
	bne	_Label_3150
	mov	1512,r13		! source line 1512
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1523,r13		! source line 1523
	mov	"\0\0IF",r10
!   if intIsZero (numBytes) then goto _Label_2067
	load	[r14+20],r1
	cmp	r1,r0
	be	_Label_2067
	jmp	_Label_2068
_Label_2067:
! THEN...
	mov	1524,r13		! source line 1524
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1524,r13		! source line 1524
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
	jmp	_Label_2069
_Label_2068:
! ELSE...
	mov	1525,r13		! source line 1525
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	1525,r13		! source line 1525
	mov	"\0\0IF",r10
!   if numBytes >= 0 then goto _Label_2071		(int)
	load	[r14+20],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2071
!	jmp	_Label_2070
_Label_2070:
! THEN...
	mov	1526,r13		! source line 1526
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1526,r13		! source line 1526
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2071:
! END IF...
_Label_2069:
! ASSIGNMENT STATEMENT...
	mov	1528,r13		! source line 1528
	mov	"\0\0AS",r10
!   virtPage = virtAddr div 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1529,r13		! source line 1529
	mov	"\0\0AS",r10
!   offset = virtAddr rem 8192		(int)
	load	[r14+12],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! WHILE STATEMENT...
	mov	1530,r13		! source line 1530
	mov	"\0\0WH",r10
_Label_2072:
!	jmp	_Label_2073
_Label_2073:
	mov	1530,r13		! source line 1530
	mov	"\0\0WB",r10
! IF STATEMENT...
	mov	1531,r13		! source line 1531
	mov	"\0\0IF",r10
!   if virtPage < numberOfPages then goto _Label_2078		(int)
	load	[r14+-36],r1
	load	[r14+8],r2
	load	[r2+4],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2078
	jmp	_Label_2075
_Label_2078:
	mov	1532,r13		! source line 1532
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-28]
!   if intIsZero (_temp_2080) then goto _runtimeErrorNullPointer
	load	[r14+-28],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsValid
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,36,r2
	call	r2
!   Retrieve Result: targetName=_temp_2079  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-11]
!   if _temp_2079 then goto _Label_2077 else goto _Label_2075
	loadb	[r14+-11],r1
	cmp	r1,0
	be	_Label_2075
	jmp	_Label_2077
_Label_2077:
	mov	1533,r13		! source line 1533
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2082) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message IsWritable
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,32,r2
	call	r2
!   Retrieve Result: targetName=_temp_2081  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2081 then goto _Label_2076 else goto _Label_2075
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2075
	jmp	_Label_2076
_Label_2075:
! THEN...
	mov	1534,r13		! source line 1534
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1534,r13		! source line 1534
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2076:
! ASSIGNMENT STATEMENT...
	mov	1536,r13		! source line 1536
	mov	"\0\0AS",r10
	mov	1536,r13		! source line 1536
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-16]
!   if intIsZero (_temp_2084) then goto _runtimeErrorNullPointer
	load	[r14+-16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=virtPage  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2083  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-20]
!   destAddr = _temp_2083 + offset		(int)
	load	[r14+-20],r1
	load	[r14+-40],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! WHILE STATEMENT...
	mov	1537,r13		! source line 1537
	mov	"\0\0WH",r10
_Label_2085:
!   if offset >= 8192 then goto _Label_2087		(int)
	load	[r14+-40],r1
	mov	8192,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2087
!	jmp	_Label_2086
_Label_2086:
	mov	1537,r13		! source line 1537
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	1538,r13		! source line 1538
	mov	"\0\0AS",r10
!   if intIsZero (destAddr) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2088 = *kernelAddr  (sizeInBytes=1)
	load	[r14+16],r1
	loadb	[r1],r1
	storeb	r1,[r14+-9]
!   Data Move: *destAddr = _temp_2088  (sizeInBytes=1)
	loadb	[r14+-9],r1
	load	[r14+-44],r2
	storeb	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	1539,r13		! source line 1539
	mov	"\0\0AS",r10
!   offset = offset + 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	1540,r13		! source line 1540
	mov	"\0\0AS",r10
!   kernelAddr = kernelAddr + 1		(int)
	load	[r14+16],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	1541,r13		! source line 1541
	mov	"\0\0AS",r10
!   destAddr = destAddr + 1		(int)
	load	[r14+-44],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
! ASSIGNMENT STATEMENT...
	mov	1542,r13		! source line 1542
	mov	"\0\0AS",r10
!   copiedSoFar = copiedSoFar + 1		(int)
	load	[r14+-32],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-32]
! IF STATEMENT...
	mov	1543,r13		! source line 1543
	mov	"\0\0IF",r10
!   if copiedSoFar != numBytes then goto _Label_2090		(int)
	load	[r14+-32],r1
	load	[r14+20],r2
	cmp	r1,r2
	bne	_Label_2090
!	jmp	_Label_2089
_Label_2089:
! THEN...
	mov	1544,r13		! source line 1544
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1544,r13		! source line 1544
	mov	"\0\0RE",r10
!   ReturnResult: copiedSoFar  (sizeInBytes=4)
	load	[r14+-32],r1
	store	r1,[r14+8]
	add	r15,48,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2090:
! END WHILE...
	jmp	_Label_2085
_Label_2087:
! ASSIGNMENT STATEMENT...
	mov	1547,r13		! source line 1547
	mov	"\0\0AS",r10
!   virtPage = virtPage + 1		(int)
	load	[r14+-36],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-36]
! ASSIGNMENT STATEMENT...
	mov	1548,r13		! source line 1548
	mov	"\0\0AS",r10
!   offset = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-40]
! END WHILE...
	jmp	_Label_2072
_Label_2074:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_20:
	.word	_sourceFileName
	.word	_Label_2091
	.word	16		! total size of parameters
	.word	44		! frame size = 44
	.word	_Label_2092
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2093
	.word	12
	.word	4
	.word	_Label_2094
	.word	16
	.word	4
	.word	_Label_2095
	.word	20
	.word	4
	.word	_Label_2096
	.word	-9
	.word	1
	.word	_Label_2097
	.word	-16
	.word	4
	.word	_Label_2098
	.word	-20
	.word	4
	.word	_Label_2099
	.word	-24
	.word	4
	.word	_Label_2100
	.word	-10
	.word	1
	.word	_Label_2101
	.word	-28
	.word	4
	.word	_Label_2102
	.word	-11
	.word	1
	.word	_Label_2103
	.word	-32
	.word	4
	.word	_Label_2104
	.word	-36
	.word	4
	.word	_Label_2105
	.word	-40
	.word	4
	.word	_Label_2106
	.word	-44
	.word	4
	.word	0
_Label_2091:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"CopyBytesToVirtual\0"
	.align
_Label_2092:
	.ascii	"Pself\0"
	.align
_Label_2093:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2094:
	.byte	'I'
	.ascii	"kernelAddr\0"
	.align
_Label_2095:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2096:
	.byte	'C'
	.ascii	"_temp_2088\0"
	.align
_Label_2097:
	.byte	'?'
	.ascii	"_temp_2084\0"
	.align
_Label_2098:
	.byte	'?'
	.ascii	"_temp_2083\0"
	.align
_Label_2099:
	.byte	'?'
	.ascii	"_temp_2082\0"
	.align
_Label_2100:
	.byte	'C'
	.ascii	"_temp_2081\0"
	.align
_Label_2101:
	.byte	'?'
	.ascii	"_temp_2080\0"
	.align
_Label_2102:
	.byte	'C'
	.ascii	"_temp_2079\0"
	.align
_Label_2103:
	.byte	'I'
	.ascii	"copiedSoFar\0"
	.align
_Label_2104:
	.byte	'I'
	.ascii	"virtPage\0"
	.align
_Label_2105:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2106:
	.byte	'I'
	.ascii	"destAddr\0"
	.align
! 
! ===============  METHOD GetStringFromVirtual  ===============
! 
_Method_P_Kernel_AddrSpace_21:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_AddrSpace_21,r1
	push	r1
	mov	13,r1
_Label_3151:
	push	r0
	sub	r1,1,r1
	bne	_Label_3151
	mov	1554,r13		! source line 1554
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	1578,r13		! source line 1578
	mov	"\0\0IF",r10
	mov	1578,r13		! source line 1578
	mov	"\0\0SE",r10
!   _temp_2110 = &sourceSize
	add	r14,-44,r1
	store	r1,[r14+-36]
	load	[r14+8],r1
	store	r1,[r14+-32]
!   if intIsZero (_temp_2111) then goto _runtimeErrorNullPointer
	load	[r14+-32],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2110  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=virtAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2109  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-40]
!   if _temp_2109 >= 4 then goto _Label_2108		(int)
	load	[r14+-40],r1
	mov	4,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2108
!	jmp	_Label_2107
_Label_2107:
! THEN...
	mov	1581,r13		! source line 1581
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1581,r13		! source line 1581
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2108:
! IF STATEMENT...
	mov	1585,r13		! source line 1585
	mov	"\0\0IF",r10
!   if sourceSize <= maxSize then goto _Label_2113		(int)
	load	[r14+-44],r1
	load	[r14+20],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2113
!	jmp	_Label_2112
_Label_2112:
! THEN...
	mov	1586,r13		! source line 1586
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	1586,r13		! source line 1586
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2113:
! ASSIGNMENT STATEMENT...
	mov	1589,r13		! source line 1589
	mov	"\0\0AS",r10
!   if intIsZero (kernelAddr) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *kernelAddr = sourceSize  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+12],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	1591,r13		! source line 1591
	mov	"\0\0RE",r10
	mov	1591,r13		! source line 1591
	mov	"\0\0SE",r10
!   _temp_2116 = kernelAddr		(4 bytes)
	load	[r14+12],r1
	store	r1,[r14+-20]
!   _temp_2115 = _temp_2116 + 4		(int)
	load	[r14+-20],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-24]
!   _temp_2117 = virtAddr + 4		(int)
	load	[r14+16],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-16]
	load	[r14+8],r1
	store	r1,[r14+-12]
!   if intIsZero (_temp_2118) then goto _runtimeErrorNullPointer
	load	[r14+-12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2115  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=_temp_2117  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=sourceSize  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+12]
!   Send message CopyBytesFromVirtual
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,76,r2
	call	r2
!   Retrieve Result: targetName=_temp_2114  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   ReturnResult: _temp_2114  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_AddrSpace_21:
	.word	_sourceFileName
	.word	_Label_2119
	.word	16		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2120
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2121
	.word	12
	.word	4
	.word	_Label_2122
	.word	16
	.word	4
	.word	_Label_2123
	.word	20
	.word	4
	.word	_Label_2124
	.word	-12
	.word	4
	.word	_Label_2125
	.word	-16
	.word	4
	.word	_Label_2126
	.word	-20
	.word	4
	.word	_Label_2127
	.word	-24
	.word	4
	.word	_Label_2128
	.word	-28
	.word	4
	.word	_Label_2129
	.word	-32
	.word	4
	.word	_Label_2130
	.word	-36
	.word	4
	.word	_Label_2131
	.word	-40
	.word	4
	.word	_Label_2132
	.word	-44
	.word	4
	.word	0
_Label_2119:
	.ascii	"AddrSpace"
	.ascii	"::"
	.ascii	"GetStringFromVirtual\0"
	.align
_Label_2120:
	.ascii	"Pself\0"
	.align
_Label_2121:
	.byte	'P'
	.ascii	"kernelAddr\0"
	.align
_Label_2122:
	.byte	'I'
	.ascii	"virtAddr\0"
	.align
_Label_2123:
	.byte	'I'
	.ascii	"maxSize\0"
	.align
_Label_2124:
	.byte	'?'
	.ascii	"_temp_2118\0"
	.align
_Label_2125:
	.byte	'?'
	.ascii	"_temp_2117\0"
	.align
_Label_2126:
	.byte	'?'
	.ascii	"_temp_2116\0"
	.align
_Label_2127:
	.byte	'?'
	.ascii	"_temp_2115\0"
	.align
_Label_2128:
	.byte	'?'
	.ascii	"_temp_2114\0"
	.align
_Label_2129:
	.byte	'?'
	.ascii	"_temp_2111\0"
	.align
_Label_2130:
	.byte	'?'
	.ascii	"_temp_2110\0"
	.align
_Label_2131:
	.byte	'?'
	.ascii	"_temp_2109\0"
	.align
_Label_2132:
	.byte	'I'
	.ascii	"sourceSize\0"
	.align
! 
! ===============  CLASS DiskDriver  ===============
! 
! Dispatch Table:
! 
_P_Kernel_DiskDriver:
	.word	_Label_2133
	jmp	_Method_P_Kernel_DiskDriver_1	! 4:	Init
	jmp	_Method_P_Kernel_DiskDriver_2	! 8:	SynchReadSector
	jmp	_Method_P_Kernel_DiskDriver_3	! 12:	StartReadSector
	jmp	_Method_P_Kernel_DiskDriver_4	! 16:	SynchWriteSector
	jmp	_Method_P_Kernel_DiskDriver_5	! 20:	StartWriteSector
	.word	0
! 
! Class descriptor:
! 
_Label_2133:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2134
	.word	_sourceFileName
	.word	325		! line number
	.word	68		! size of instances, in bytes
	.word	_P_Kernel_DiskDriver
	.word	_P_System_Object
	.word	0
_Label_2134:
	.ascii	"DiskDriver\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_DiskDriver_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_1,r1
	push	r1
	mov	7,r1
_Label_3152:
	push	r0
	sub	r1,1,r1
	bne	_Label_3152
	mov	2017,r13		! source line 2017
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2135 = _StringConst_162
	set	_StringConst_162,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2135  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2018,r13		! source line 2018
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2019,r13		! source line 2019
	mov	"\0\0AS",r10
!   DISK_STATUS_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! ASSIGNMENT STATEMENT...
	mov	2020,r13		! source line 2020
	mov	"\0\0AS",r10
!   DISK_COMMAND_WORD_ADDRESS = 16776968		(4 bytes)
	set	16776968,r1
	load	[r14+8],r2
	store	r1,[r2+8]
! ASSIGNMENT STATEMENT...
	mov	2021,r13		! source line 2021
	mov	"\0\0AS",r10
!   DISK_MEMORY_ADDRESS_REGISTER = 16776972		(4 bytes)
	set	16776972,r1
	load	[r14+8],r2
	store	r1,[r2+12]
! ASSIGNMENT STATEMENT...
	mov	2022,r13		! source line 2022
	mov	"\0\0AS",r10
!   DISK_SECTOR_NUMBER_REGISTER = 16776976		(4 bytes)
	set	16776976,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2023,r13		! source line 2023
	mov	"\0\0AS",r10
!   DISK_SECTOR_COUNT_REGISTER = 16776980		(4 bytes)
	set	16776980,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! ASSIGNMENT STATEMENT...
	mov	2024,r13		! source line 2024
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2025,r13		! source line 2025
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: semUsedInSynchMethods = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,28,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   semUsedInSynchMethods = _P_Kernel_Semaphore
	set	_P_Kernel_Semaphore,r1
	load	[r14+8],r2
	store	r1,[r2+28]
! SEND STATEMENT...
	mov	2026,r13		! source line 2026
	mov	"\0\0SE",r10
!   _temp_2137 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Send message Init
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2027,r13		! source line 2027
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: diskBusy = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,48,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   diskBusy = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+48]
! SEND STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0SE",r10
!   _temp_2139 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-12]
!   Send message Init
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! RETURN STATEMENT...
	mov	2028,r13		! source line 2028
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_1:
	.word	_sourceFileName
	.word	_Label_2140
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2141
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2142
	.word	-12
	.word	4
	.word	_Label_2143
	.word	-16
	.word	4
	.word	_Label_2144
	.word	-20
	.word	4
	.word	_Label_2145
	.word	-24
	.word	4
	.word	_Label_2146
	.word	-28
	.word	4
	.word	0
_Label_2140:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2141:
	.ascii	"Pself\0"
	.align
_Label_2142:
	.byte	'?'
	.ascii	"_temp_2139\0"
	.align
_Label_2143:
	.byte	'?'
	.ascii	"_temp_2138\0"
	.align
_Label_2144:
	.byte	'?'
	.ascii	"_temp_2137\0"
	.align
_Label_2145:
	.byte	'?'
	.ascii	"_temp_2136\0"
	.align
_Label_2146:
	.byte	'?'
	.ascii	"_temp_2135\0"
	.align
! 
! ===============  METHOD SynchReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_2,r1
	push	r1
	mov	16,r1
_Label_3153:
	push	r0
	sub	r1,1,r1
	bne	_Label_3153
	mov	2033,r13		! source line 2033
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2046,r13		! source line 2046
	mov	"\0\0SE",r10
!   _temp_2147 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2047,r13		! source line 2047
	mov	"\0\0WH",r10
_Label_2148:
!	jmp	_Label_2149
_Label_2149:
	mov	2047,r13		! source line 2047
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2049,r13		! source line 2049
	mov	"\0\0SE",r10
!   _temp_2151 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2152) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2151  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartReadSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! SEND STATEMENT...
	mov	2051,r13		! source line 2051
	mov	"\0\0SE",r10
!   _temp_2153 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2054,r13		! source line 2054
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2162 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2156
	cmp	r1,2
	be	_Label_2157
	cmp	r1,3
	be	_Label_2158
	cmp	r1,4
	be	_Label_2159
	cmp	r1,5
	be	_Label_2160
	cmp	r1,6
	be	_Label_2161
	jmp	_Label_2154
! CASE 1...
_Label_2156:
! SEND STATEMENT...
	mov	2056,r13		! source line 2056
	mov	"\0\0SE",r10
!   _temp_2163 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2057,r13		! source line 2057
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2157:
! CALL STATEMENT...
!   _temp_2164 = _StringConst_163
	set	_StringConst_163,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2164  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2059,r13		! source line 2059
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2158:
! CALL STATEMENT...
!   _temp_2165 = _StringConst_164
	set	_StringConst_164,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2165  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2061,r13		! source line 2061
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2159:
! CALL STATEMENT...
!   _temp_2166 = _StringConst_165
	set	_StringConst_165,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2166  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2063,r13		! source line 2063
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2160:
! BREAK STATEMENT...
	mov	2067,r13		! source line 2067
	mov	"\0\0BR",r10
	jmp	_Label_2155
! CASE 6...
_Label_2161:
! CALL STATEMENT...
!   _temp_2167 = _StringConst_166
	set	_StringConst_166,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2167  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2069,r13		! source line 2069
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2154:
! CALL STATEMENT...
!   _temp_2168 = _StringConst_167
	set	_StringConst_167,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2168  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2071,r13		! source line 2071
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2155:
! END WHILE...
	jmp	_Label_2148
_Label_2150:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_2:
	.word	_sourceFileName
	.word	_Label_2169
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2170
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2171
	.word	12
	.word	4
	.word	_Label_2172
	.word	16
	.word	4
	.word	_Label_2173
	.word	20
	.word	4
	.word	_Label_2174
	.word	-12
	.word	4
	.word	_Label_2175
	.word	-16
	.word	4
	.word	_Label_2176
	.word	-20
	.word	4
	.word	_Label_2177
	.word	-24
	.word	4
	.word	_Label_2178
	.word	-28
	.word	4
	.word	_Label_2179
	.word	-32
	.word	4
	.word	_Label_2180
	.word	-36
	.word	4
	.word	_Label_2181
	.word	-40
	.word	4
	.word	_Label_2182
	.word	-44
	.word	4
	.word	_Label_2183
	.word	-48
	.word	4
	.word	_Label_2184
	.word	-52
	.word	4
	.word	0
_Label_2169:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchReadSector\0"
	.align
_Label_2170:
	.ascii	"Pself\0"
	.align
_Label_2171:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2172:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2173:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2174:
	.byte	'?'
	.ascii	"_temp_2168\0"
	.align
_Label_2175:
	.byte	'?'
	.ascii	"_temp_2167\0"
	.align
_Label_2176:
	.byte	'?'
	.ascii	"_temp_2166\0"
	.align
_Label_2177:
	.byte	'?'
	.ascii	"_temp_2165\0"
	.align
_Label_2178:
	.byte	'?'
	.ascii	"_temp_2164\0"
	.align
_Label_2179:
	.byte	'?'
	.ascii	"_temp_2163\0"
	.align
_Label_2180:
	.byte	'?'
	.ascii	"_temp_2162\0"
	.align
_Label_2181:
	.byte	'?'
	.ascii	"_temp_2153\0"
	.align
_Label_2182:
	.byte	'?'
	.ascii	"_temp_2152\0"
	.align
_Label_2183:
	.byte	'?'
	.ascii	"_temp_2151\0"
	.align
_Label_2184:
	.byte	'?'
	.ascii	"_temp_2147\0"
	.align
! 
! ===============  METHOD StartReadSector  ===============
! 
_Method_P_Kernel_DiskDriver_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_3,r1
	push	r1
	mov	2080,r13		! source line 2080
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2095,r13		! source line 2095
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2098,r13		! source line 2098
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2099,r13		! source line 2099
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2100,r13		! source line 2100
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2101,r13		! source line 2101
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_3:
	.word	_sourceFileName
	.word	_Label_2185
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2186
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2187
	.word	12
	.word	4
	.word	_Label_2188
	.word	16
	.word	4
	.word	_Label_2189
	.word	20
	.word	4
	.word	_Label_2190
	.word	24
	.word	4
	.word	0
_Label_2185:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartReadSector\0"
	.align
_Label_2186:
	.ascii	"Pself\0"
	.align
_Label_2187:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2188:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2189:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2190:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  METHOD SynchWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_4,r1
	push	r1
	mov	16,r1
_Label_3154:
	push	r0
	sub	r1,1,r1
	bne	_Label_3154
	mov	2106,r13		! source line 2106
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2118,r13		! source line 2118
	mov	"\0\0SE",r10
!   _temp_2191 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-52]
!   Send message Lock
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2119,r13		! source line 2119
	mov	"\0\0WH",r10
_Label_2192:
!	jmp	_Label_2193
_Label_2193:
	mov	2119,r13		! source line 2119
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2120,r13		! source line 2120
	mov	"\0\0SE",r10
!   _temp_2195 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-48]
	load	[r14+8],r1
	store	r1,[r14+-44]
!   if intIsZero (_temp_2196) then goto _runtimeErrorNullPointer
	load	[r14+-44],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=sectorAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=numberOfSectors  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=memoryAddr  sizeInBytes=4
	load	[r14+20],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=_temp_2195  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+16]
!   Send message StartWriteSector
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2122,r13		! source line 2122
	mov	"\0\0SE",r10
!   _temp_2197 = &semUsedInSynchMethods
	load	[r14+8],r1
	add	r1,28,r1
	store	r1,[r14+-40]
!   Send message Down
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SWITCH STATEMENT (using series of tests)...
	mov	2125,r13		! source line 2125
	mov	"\0\0SW",r10
!   Evaluate the switch expression...
!   if intIsZero (DISK_STATUS_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+4],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2206 = *DISK_STATUS_WORD_ADDRESS  (sizeInBytes=4)
	load	[r14+8],r1
	load	[r1+4],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   Branch to the right case label
	load	[r14+-36],r1
	cmp	r1,1
	be	_Label_2200
	cmp	r1,2
	be	_Label_2201
	cmp	r1,3
	be	_Label_2202
	cmp	r1,4
	be	_Label_2203
	cmp	r1,5
	be	_Label_2204
	cmp	r1,6
	be	_Label_2205
	jmp	_Label_2198
! CASE 1...
_Label_2200:
! SEND STATEMENT...
	mov	2127,r13		! source line 2127
	mov	"\0\0SE",r10
!   _temp_2207 = &diskBusy
	load	[r14+8],r1
	add	r1,48,r1
	store	r1,[r14+-32]
!   Send message Unlock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2128,r13		! source line 2128
	mov	"\0\0RE",r10
	add	r15,68,r15
	pop	r13
	pop	r14
	ret
! CASE 2...
_Label_2201:
! CALL STATEMENT...
!   _temp_2208 = _StringConst_168
	set	_StringConst_168,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2208  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2130,r13		! source line 2130
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 3...
_Label_2202:
! CALL STATEMENT...
!   _temp_2209 = _StringConst_169
	set	_StringConst_169,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2209  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2132,r13		! source line 2132
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 4...
_Label_2203:
! CALL STATEMENT...
!   _temp_2210 = _StringConst_170
	set	_StringConst_170,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2210  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2134,r13		! source line 2134
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! CASE 5...
_Label_2204:
! BREAK STATEMENT...
	mov	2138,r13		! source line 2138
	mov	"\0\0BR",r10
	jmp	_Label_2199
! CASE 6...
_Label_2205:
! CALL STATEMENT...
!   _temp_2211 = _StringConst_171
	set	_StringConst_171,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2211  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2140,r13		! source line 2140
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! DEFAULT CASE...
_Label_2198:
! CALL STATEMENT...
!   _temp_2212 = _StringConst_172
	set	_StringConst_172,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2212  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2142,r13		! source line 2142
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END SWITCH...
_Label_2199:
! END WHILE...
	jmp	_Label_2192
_Label_2194:
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_4:
	.word	_sourceFileName
	.word	_Label_2213
	.word	16		! total size of parameters
	.word	64		! frame size = 64
	.word	_Label_2214
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2215
	.word	12
	.word	4
	.word	_Label_2216
	.word	16
	.word	4
	.word	_Label_2217
	.word	20
	.word	4
	.word	_Label_2218
	.word	-12
	.word	4
	.word	_Label_2219
	.word	-16
	.word	4
	.word	_Label_2220
	.word	-20
	.word	4
	.word	_Label_2221
	.word	-24
	.word	4
	.word	_Label_2222
	.word	-28
	.word	4
	.word	_Label_2223
	.word	-32
	.word	4
	.word	_Label_2224
	.word	-36
	.word	4
	.word	_Label_2225
	.word	-40
	.word	4
	.word	_Label_2226
	.word	-44
	.word	4
	.word	_Label_2227
	.word	-48
	.word	4
	.word	_Label_2228
	.word	-52
	.word	4
	.word	0
_Label_2213:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"SynchWriteSector\0"
	.align
_Label_2214:
	.ascii	"Pself\0"
	.align
_Label_2215:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2216:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2217:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2218:
	.byte	'?'
	.ascii	"_temp_2212\0"
	.align
_Label_2219:
	.byte	'?'
	.ascii	"_temp_2211\0"
	.align
_Label_2220:
	.byte	'?'
	.ascii	"_temp_2210\0"
	.align
_Label_2221:
	.byte	'?'
	.ascii	"_temp_2209\0"
	.align
_Label_2222:
	.byte	'?'
	.ascii	"_temp_2208\0"
	.align
_Label_2223:
	.byte	'?'
	.ascii	"_temp_2207\0"
	.align
_Label_2224:
	.byte	'?'
	.ascii	"_temp_2206\0"
	.align
_Label_2225:
	.byte	'?'
	.ascii	"_temp_2197\0"
	.align
_Label_2226:
	.byte	'?'
	.ascii	"_temp_2196\0"
	.align
_Label_2227:
	.byte	'?'
	.ascii	"_temp_2195\0"
	.align
_Label_2228:
	.byte	'?'
	.ascii	"_temp_2191\0"
	.align
! 
! ===============  METHOD StartWriteSector  ===============
! 
_Method_P_Kernel_DiskDriver_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_DiskDriver_5,r1
	push	r1
	mov	2151,r13		! source line 2151
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2166,r13		! source line 2166
	mov	"\0\0AS",r10
!   semToSignalOnCompletion = whoCares		(4 bytes)
	load	[r14+24],r1
	load	[r14+8],r2
	store	r1,[r2+24]
! ASSIGNMENT STATEMENT...
	mov	2168,r13		! source line 2168
	mov	"\0\0AS",r10
!   if intIsZero (DISK_MEMORY_ADDRESS_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_MEMORY_ADDRESS_REGISTER = memoryAddr  (sizeInBytes=4)
	load	[r14+20],r1
	load	[r14+8],r2
	load	[r2+12],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2169,r13		! source line 2169
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_NUMBER_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+16],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_NUMBER_REGISTER = sectorAddr  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r14+8],r2
	load	[r2+16],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2170,r13		! source line 2170
	mov	"\0\0AS",r10
!   if intIsZero (DISK_SECTOR_COUNT_REGISTER) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_SECTOR_COUNT_REGISTER = numberOfSectors  (sizeInBytes=4)
	load	[r14+16],r1
	load	[r14+8],r2
	load	[r2+20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0AS",r10
!   if intIsZero (DISK_COMMAND_WORD_ADDRESS) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+8],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: *DISK_COMMAND_WORD_ADDRESS = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+8],r2
	load	[r2+8],r2
	store	r1,[r2]
! RETURN STATEMENT...
	mov	2171,r13		! source line 2171
	mov	"\0\0RE",r10
	add	r15,4,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_DiskDriver_5:
	.word	_sourceFileName
	.word	_Label_2229
	.word	20		! total size of parameters
	.word	0		! frame size = 0
	.word	_Label_2230
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2231
	.word	12
	.word	4
	.word	_Label_2232
	.word	16
	.word	4
	.word	_Label_2233
	.word	20
	.word	4
	.word	_Label_2234
	.word	24
	.word	4
	.word	0
_Label_2229:
	.ascii	"DiskDriver"
	.ascii	"::"
	.ascii	"StartWriteSector\0"
	.align
_Label_2230:
	.ascii	"Pself\0"
	.align
_Label_2231:
	.byte	'I'
	.ascii	"sectorAddr\0"
	.align
_Label_2232:
	.byte	'I'
	.ascii	"numberOfSectors\0"
	.align
_Label_2233:
	.byte	'I'
	.ascii	"memoryAddr\0"
	.align
_Label_2234:
	.byte	'P'
	.ascii	"whoCares\0"
	.align
! 
! ===============  CLASS FileManager  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileManager:
	.word	_Label_2235
	jmp	_Method_P_Kernel_FileManager_1	! 4:	Init
	jmp	_Method_P_Kernel_FileManager_2	! 8:	Print
	jmp	_Method_P_Kernel_FileManager_4	! 12:	FindFCB
	jmp	_Method_P_Kernel_FileManager_3	! 16:	Open
	jmp	_Method_P_Kernel_FileManager_5	! 20:	Close
	jmp	_Method_P_Kernel_FileManager_6	! 24:	Flush
	jmp	_Method_P_Kernel_FileManager_7	! 28:	SynchRead
	jmp	_Method_P_Kernel_FileManager_8	! 32:	SynchWrite
	.word	0
! 
! Class descriptor:
! 
_Label_2235:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2236
	.word	_sourceFileName
	.word	348		! line number
	.word	800		! size of instances, in bytes
	.word	_P_Kernel_FileManager
	.word	_P_System_Object
	.word	0
_Label_2236:
	.ascii	"FileManager\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileManager_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_1,r1
	push	r1
	mov	238,r1
_Label_3155:
	push	r0
	sub	r1,1,r1
	bne	_Label_3155
	mov	2182,r13		! source line 2182
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2237 = _StringConst_173
	set	_StringConst_173,r1
	store	r1,[r14+-940]
!   Prepare Argument: offset=8  value=_temp_2237  sizeInBytes=4
	load	[r14+-940],r1
	store	r1,[r15+0]
!   Call the function
	mov	2189,r13		! source line 2189
	mov	"\0\0CE",r10
	call	print
! ASSIGNMENT STATEMENT...
	mov	2190,r13		! source line 2190
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fileManagerLock = zeros  (sizeInBytes=20)
	load	[r14+8],r4
	add	r4,4,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
	store	r0,[r4+16]
!   fileManagerLock = _P_Kernel_Mutex
	set	_P_Kernel_Mutex,r1
	load	[r14+8],r2
	store	r1,[r2+4]
! SEND STATEMENT...
	mov	2191,r13		! source line 2191
	mov	"\0\0SE",r10
!   _temp_2239 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-932]
!   Send message Init
	load	[r14+-932],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2194,r13		! source line 2194
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: fcbFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,444,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   fcbFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+444]
! ASSIGNMENT STATEMENT...
	mov	2195,r13		! source line 2195
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anFCBBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,428,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anFCBBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+428]
! SEND STATEMENT...
	mov	2196,r13		! source line 2196
	mov	"\0\0SE",r10
!   _temp_2242 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-920]
!   Send message Init
	load	[r14+-920],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2197,r13		! source line 2197
	mov	"\0\0AS",r10
!   _temp_2243 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-916]
!   NEW ARRAY Constructor...
!   _temp_2245 = &_temp_2244
	add	r14,-912,r1
	store	r1,[r14+-508]
!   _temp_2245 = _temp_2245 + 4
	load	[r14+-508],r1
	add	r1,4,r1
	store	r1,[r14+-508]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2247 = zeros  (sizeInBytes=40)
	add	r14,-500,r4
	mov	10,r3
_Label_3156:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3156
!   _temp_2247 = _P_Kernel_FileControlBlock
	set	_P_Kernel_FileControlBlock,r1
	store	r1,[r14+-500]
	mov	10,r1
	store	r1,[r14+-504]
_Label_2249:
!   Data Move: *_temp_2245 = _temp_2247  (sizeInBytes=40)
	add	r14,-500,r5
	load	[r14+-508],r4
	mov	10,r3
_Label_3157:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3157
!   _temp_2245 = _temp_2245 + 40
	load	[r14+-508],r1
	add	r1,40,r1
	store	r1,[r14+-508]
!   _temp_2246 = _temp_2246 + -1
	load	[r14+-504],r1
	add	r1,-1,r1
	store	r1,[r14+-504]
!   if intNotZero (_temp_2246) then goto _Label_2249
	load	[r14+-504],r1
	cmp	r1,r0
	bne	_Label_2249
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-912]
!   _temp_2250 = &_temp_2244
	add	r14,-912,r1
	store	r1,[r14+-456]
!   make sure array has size 10
	load	[r14+-916],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3158
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3158:
!   make sure array has size 10
	load	[r14+-456],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2243 = *_temp_2250  (sizeInBytes=404)
	load	[r14+-456],r5
	load	[r14+-916],r4
	mov	101,r3
_Label_3159:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3159
! FOR STATEMENT...
	mov	2199,r13		! source line 2199
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2255 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-452]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2256 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-448]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2255  (sizeInBytes=4)
	load	[r14+-452],r1
	store	r1,[r14+-944]
_Label_2251:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2256 then goto _Label_2254		
	load	[r14+-944],r1
	load	[r14+-448],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2254
_Label_2252:
	mov	2199,r13		! source line 2199
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2200,r13		! source line 2200
	mov	"\0\0AS",r10
!   _temp_2257 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-444]
!   Move address of _temp_2257 [i ] into _temp_2258
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-444],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-440]
!   _temp_2259 = _temp_2258 + 12
	load	[r14+-440],r1
	add	r1,12,r1
	store	r1,[r14+-436]
!   Data Move: *_temp_2259 = i  (sizeInBytes=4)
	load	[r14+-944],r1
	load	[r14+-436],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2201,r13		! source line 2201
	mov	"\0\0SE",r10
!   _temp_2260 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-432]
!   Move address of _temp_2260 [i ] into _temp_2261
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-432],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-428]
!   Send message Init
	load	[r14+-428],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! SEND STATEMENT...
	mov	2202,r13		! source line 2202
	mov	"\0\0SE",r10
!   _temp_2263 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-420]
!   Move address of _temp_2263 [i ] into _temp_2264
!     make sure index expr is >= 0
	load	[r14+-944],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-420],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-416]
!   _temp_2262 = _temp_2264		(4 bytes)
	load	[r14+-416],r1
	store	r1,[r14+-424]
!   _temp_2265 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-412]
!   Prepare Argument: offset=12  value=_temp_2262  sizeInBytes=4
	load	[r14+-424],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-412],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2253:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2251
! END FOR
_Label_2254:
! ASSIGNMENT STATEMENT...
	mov	2206,r13		! source line 2206
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: openFileFreeList = zeros  (sizeInBytes=12)
	load	[r14+8],r4
	add	r4,756,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
!   openFileFreeList = _P_List_List
	set	_P_List_List,r1
	load	[r14+8],r2
	store	r1,[r2+756]
! ASSIGNMENT STATEMENT...
	mov	2207,r13		! source line 2207
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: anOpenFileBecameFree = zeros  (sizeInBytes=16)
	load	[r14+8],r4
	add	r4,740,r4
	store	r0,[r4]
	store	r0,[r4+4]
	store	r0,[r4+8]
	store	r0,[r4+12]
!   anOpenFileBecameFree = _P_Kernel_Condition
	set	_P_Kernel_Condition,r1
	load	[r14+8],r2
	store	r1,[r2+740]
! SEND STATEMENT...
	mov	2208,r13		! source line 2208
	mov	"\0\0SE",r10
!   _temp_2268 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-400]
!   Send message Init
	load	[r14+-400],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2209,r13		! source line 2209
	mov	"\0\0AS",r10
!   _temp_2269 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-396]
!   NEW ARRAY Constructor...
!   _temp_2271 = &_temp_2270
	add	r14,-392,r1
	store	r1,[r14+-108]
!   _temp_2271 = _temp_2271 + 4
	load	[r14+-108],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Next value...
!   NEW CLASS Constructor...
!   ZeroMemory: _temp_2273 = zeros  (sizeInBytes=28)
	add	r14,-100,r4
	mov	7,r3
_Label_3160:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3160
!   _temp_2273 = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	store	r1,[r14+-100]
	mov	10,r1
	store	r1,[r14+-104]
_Label_2275:
!   Data Move: *_temp_2271 = _temp_2273  (sizeInBytes=28)
	add	r14,-100,r5
	load	[r14+-108],r4
	mov	7,r3
_Label_3161:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3161
!   _temp_2271 = _temp_2271 + 28
	load	[r14+-108],r1
	add	r1,28,r1
	store	r1,[r14+-108]
!   _temp_2272 = _temp_2272 + -1
	load	[r14+-104],r1
	add	r1,-1,r1
	store	r1,[r14+-104]
!   if intNotZero (_temp_2272) then goto _Label_2275
	load	[r14+-104],r1
	cmp	r1,r0
	bne	_Label_2275
!   Initialize the array size...
	mov	10,r1
	store	r1,[r14+-392]
!   _temp_2276 = &_temp_2270
	add	r14,-392,r1
	store	r1,[r14+-68]
!   make sure array has size 10
	load	[r14+-396],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,0
	be	_Label_3162
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
_Label_3162:
!   make sure array has size 10
	load	[r14+-68],r1
	load	[r1],r1
	set	10, r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bne	_runtimeErrorWrongArraySize
!   Data Move: *_temp_2269 = *_temp_2276  (sizeInBytes=284)
	load	[r14+-68],r5
	load	[r14+-396],r4
	mov	71,r3
_Label_3163:
	load	[r5],r1
	add	r5,4,r5
	store	r1,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3163
! FOR STATEMENT...
	mov	2211,r13		! source line 2211
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2281 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2282 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2281  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-944]
_Label_2277:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2282 then goto _Label_2280		
	load	[r14+-944],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2280
_Label_2278:
	mov	2211,r13		! source line 2211
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2212,r13		! source line 2212
	mov	"\0\0AS",r10
!   _temp_2283 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-56]
!   Move address of _temp_2283 [i ] into _temp_2284
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-52]
!   _temp_2285 = _temp_2284 + 12
	load	[r14+-52],r1
	add	r1,12,r1
	store	r1,[r14+-48]
!   Data Move: *_temp_2285 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-48],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2213,r13		! source line 2213
	mov	"\0\0SE",r10
!   _temp_2287 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-40]
!   Move address of _temp_2287 [i ] into _temp_2288
!     make sure index expr is >= 0
	load	[r14+-944],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-36]
!   _temp_2286 = _temp_2288		(4 bytes)
	load	[r14+-36],r1
	store	r1,[r14+-44]
!   _temp_2289 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2286  sizeInBytes=4
	load	[r14+-44],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2279:
!   i = i + 1
	load	[r14+-944],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-944]
	jmp	_Label_2277
! END FOR
_Label_2280:
! ASSIGNMENT STATEMENT...
	mov	2217,r13		! source line 2217
	mov	"\0\0AS",r10
!   NEW CLASS Constructor...
!   ZeroMemory: serialTerminalFile = zeros  (sizeInBytes=28)
	load	[r14+8],r4
	add	r4,772,r4
	mov	7,r3
_Label_3164:
	store	r0,[r4]
	add	r4,4,r4
	sub	r3,1,r3
	bne	_Label_3164
!   serialTerminalFile = _P_Kernel_OpenFile
	set	_P_Kernel_OpenFile,r1
	load	[r14+8],r2
	store	r1,[r2+772]
! ASSIGNMENT STATEMENT...
	mov	2218,r13		! source line 2218
	mov	"\0\0AS",r10
!   _temp_2291 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-24]
!   _temp_2292 = _temp_2291 + 12
	load	[r14+-24],r1
	add	r1,12,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2292 = 2  (sizeInBytes=4)
	mov	2,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2223,r13		! source line 2223
	mov	"\0\0AS",r10
	mov	2223,r13		! source line 2223
	mov	"\0\0SE",r10
!   _temp_2293 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Send message GetAFrame
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=directoryFrame  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+768]
! SEND STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0SE",r10
!   _temp_2294 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=0  sizeInBytes=4
	mov	0,r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=directoryFrame  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! RETURN STATEMENT...
	mov	2224,r13		! source line 2224
	mov	"\0\0RE",r10
	add	r15,956,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_1:
	.word	_sourceFileName
	.word	_Label_2295
	.word	4		! total size of parameters
	.word	952		! frame size = 952
	.word	_Label_2296
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2297
	.word	-12
	.word	4
	.word	_Label_2298
	.word	-16
	.word	4
	.word	_Label_2299
	.word	-20
	.word	4
	.word	_Label_2300
	.word	-24
	.word	4
	.word	_Label_2301
	.word	-28
	.word	4
	.word	_Label_2302
	.word	-32
	.word	4
	.word	_Label_2303
	.word	-36
	.word	4
	.word	_Label_2304
	.word	-40
	.word	4
	.word	_Label_2305
	.word	-44
	.word	4
	.word	_Label_2306
	.word	-48
	.word	4
	.word	_Label_2307
	.word	-52
	.word	4
	.word	_Label_2308
	.word	-56
	.word	4
	.word	_Label_2309
	.word	-60
	.word	4
	.word	_Label_2310
	.word	-64
	.word	4
	.word	_Label_2311
	.word	-68
	.word	4
	.word	_Label_2312
	.word	-72
	.word	4
	.word	_Label_2313
	.word	-100
	.word	28
	.word	_Label_2314
	.word	-104
	.word	4
	.word	_Label_2315
	.word	-108
	.word	4
	.word	_Label_2316
	.word	-392
	.word	284
	.word	_Label_2317
	.word	-396
	.word	4
	.word	_Label_2318
	.word	-400
	.word	4
	.word	_Label_2319
	.word	-404
	.word	4
	.word	_Label_2320
	.word	-408
	.word	4
	.word	_Label_2321
	.word	-412
	.word	4
	.word	_Label_2322
	.word	-416
	.word	4
	.word	_Label_2323
	.word	-420
	.word	4
	.word	_Label_2324
	.word	-424
	.word	4
	.word	_Label_2325
	.word	-428
	.word	4
	.word	_Label_2326
	.word	-432
	.word	4
	.word	_Label_2327
	.word	-436
	.word	4
	.word	_Label_2328
	.word	-440
	.word	4
	.word	_Label_2329
	.word	-444
	.word	4
	.word	_Label_2330
	.word	-448
	.word	4
	.word	_Label_2331
	.word	-452
	.word	4
	.word	_Label_2332
	.word	-456
	.word	4
	.word	_Label_2333
	.word	-460
	.word	4
	.word	_Label_2334
	.word	-500
	.word	40
	.word	_Label_2335
	.word	-504
	.word	4
	.word	_Label_2336
	.word	-508
	.word	4
	.word	_Label_2337
	.word	-912
	.word	404
	.word	_Label_2338
	.word	-916
	.word	4
	.word	_Label_2339
	.word	-920
	.word	4
	.word	_Label_2340
	.word	-924
	.word	4
	.word	_Label_2341
	.word	-928
	.word	4
	.word	_Label_2342
	.word	-932
	.word	4
	.word	_Label_2343
	.word	-936
	.word	4
	.word	_Label_2344
	.word	-940
	.word	4
	.word	_Label_2345
	.word	-944
	.word	4
	.word	0
_Label_2295:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2296:
	.ascii	"Pself\0"
	.align
_Label_2297:
	.byte	'?'
	.ascii	"_temp_2294\0"
	.align
_Label_2298:
	.byte	'?'
	.ascii	"_temp_2293\0"
	.align
_Label_2299:
	.byte	'?'
	.ascii	"_temp_2292\0"
	.align
_Label_2300:
	.byte	'?'
	.ascii	"_temp_2291\0"
	.align
_Label_2301:
	.byte	'?'
	.ascii	"_temp_2290\0"
	.align
_Label_2302:
	.byte	'?'
	.ascii	"_temp_2289\0"
	.align
_Label_2303:
	.byte	'?'
	.ascii	"_temp_2288\0"
	.align
_Label_2304:
	.byte	'?'
	.ascii	"_temp_2287\0"
	.align
_Label_2305:
	.byte	'?'
	.ascii	"_temp_2286\0"
	.align
_Label_2306:
	.byte	'?'
	.ascii	"_temp_2285\0"
	.align
_Label_2307:
	.byte	'?'
	.ascii	"_temp_2284\0"
	.align
_Label_2308:
	.byte	'?'
	.ascii	"_temp_2283\0"
	.align
_Label_2309:
	.byte	'?'
	.ascii	"_temp_2282\0"
	.align
_Label_2310:
	.byte	'?'
	.ascii	"_temp_2281\0"
	.align
_Label_2311:
	.byte	'?'
	.ascii	"_temp_2276\0"
	.align
_Label_2312:
	.byte	'?'
	.ascii	"_temp_2274\0"
	.align
_Label_2313:
	.byte	'?'
	.ascii	"_temp_2273\0"
	.align
_Label_2314:
	.byte	'?'
	.ascii	"_temp_2272\0"
	.align
_Label_2315:
	.byte	'?'
	.ascii	"_temp_2271\0"
	.align
_Label_2316:
	.byte	'?'
	.ascii	"_temp_2270\0"
	.align
_Label_2317:
	.byte	'?'
	.ascii	"_temp_2269\0"
	.align
_Label_2318:
	.byte	'?'
	.ascii	"_temp_2268\0"
	.align
_Label_2319:
	.byte	'?'
	.ascii	"_temp_2267\0"
	.align
_Label_2320:
	.byte	'?'
	.ascii	"_temp_2266\0"
	.align
_Label_2321:
	.byte	'?'
	.ascii	"_temp_2265\0"
	.align
_Label_2322:
	.byte	'?'
	.ascii	"_temp_2264\0"
	.align
_Label_2323:
	.byte	'?'
	.ascii	"_temp_2263\0"
	.align
_Label_2324:
	.byte	'?'
	.ascii	"_temp_2262\0"
	.align
_Label_2325:
	.byte	'?'
	.ascii	"_temp_2261\0"
	.align
_Label_2326:
	.byte	'?'
	.ascii	"_temp_2260\0"
	.align
_Label_2327:
	.byte	'?'
	.ascii	"_temp_2259\0"
	.align
_Label_2328:
	.byte	'?'
	.ascii	"_temp_2258\0"
	.align
_Label_2329:
	.byte	'?'
	.ascii	"_temp_2257\0"
	.align
_Label_2330:
	.byte	'?'
	.ascii	"_temp_2256\0"
	.align
_Label_2331:
	.byte	'?'
	.ascii	"_temp_2255\0"
	.align
_Label_2332:
	.byte	'?'
	.ascii	"_temp_2250\0"
	.align
_Label_2333:
	.byte	'?'
	.ascii	"_temp_2248\0"
	.align
_Label_2334:
	.byte	'?'
	.ascii	"_temp_2247\0"
	.align
_Label_2335:
	.byte	'?'
	.ascii	"_temp_2246\0"
	.align
_Label_2336:
	.byte	'?'
	.ascii	"_temp_2245\0"
	.align
_Label_2337:
	.byte	'?'
	.ascii	"_temp_2244\0"
	.align
_Label_2338:
	.byte	'?'
	.ascii	"_temp_2243\0"
	.align
_Label_2339:
	.byte	'?'
	.ascii	"_temp_2242\0"
	.align
_Label_2340:
	.byte	'?'
	.ascii	"_temp_2241\0"
	.align
_Label_2341:
	.byte	'?'
	.ascii	"_temp_2240\0"
	.align
_Label_2342:
	.byte	'?'
	.ascii	"_temp_2239\0"
	.align
_Label_2343:
	.byte	'?'
	.ascii	"_temp_2238\0"
	.align
_Label_2344:
	.byte	'?'
	.ascii	"_temp_2237\0"
	.align
_Label_2345:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileManager_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_2,r1
	push	r1
	mov	29,r1
_Label_3165:
	push	r0
	sub	r1,1,r1
	bne	_Label_3165
	mov	2231,r13		! source line 2231
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2233,r13		! source line 2233
	mov	"\0\0SE",r10
!   _temp_2346 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-112]
!   Send message Lock
	load	[r14+-112],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! CALL STATEMENT...
!   _temp_2347 = _StringConst_174
	set	_StringConst_174,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2347  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Call the function
	mov	2234,r13		! source line 2234
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2235,r13		! source line 2235
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2352 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-104]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2353 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-100]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2352  (sizeInBytes=4)
	load	[r14+-104],r1
	store	r1,[r14+-116]
_Label_2348:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2353 then goto _Label_2351		
	load	[r14+-116],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2351
_Label_2349:
	mov	2235,r13		! source line 2235
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2354 = _StringConst_175
	set	_StringConst_175,r1
	store	r1,[r14+-96]
!   Prepare Argument: offset=8  value=_temp_2354  sizeInBytes=4
	load	[r14+-96],r1
	store	r1,[r15+0]
!   Call the function
	mov	2236,r13		! source line 2236
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2237,r13		! source line 2237
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2355 = _StringConst_176
	set	_StringConst_176,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2355  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2238,r13		! source line 2238
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2239,r13		! source line 2239
	mov	"\0\0SE",r10
!   _temp_2356 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-88]
!   Move address of _temp_2356 [i ] into _temp_2357
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-88],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-84]
!   Send message Print
	load	[r14+-84],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2350:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2348
! END FOR
_Label_2351:
! CALL STATEMENT...
!   _temp_2358 = _StringConst_177
	set	_StringConst_177,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2358  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   Call the function
	mov	2241,r13		! source line 2241
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2242,r13		! source line 2242
	mov	"\0\0SE",r10
!   _temp_2359 = _function_217_printFCB
	set	_function_217_printFCB,r1
	store	r1,[r14+-76]
!   _temp_2360 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=12  value=_temp_2359  sizeInBytes=4
	load	[r14+-76],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! CALL STATEMENT...
!   Call the function
	mov	2243,r13		! source line 2243
	mov	"\0\0CA",r10
	call	_P_System_nl
! CALL STATEMENT...
!   _temp_2361 = _StringConst_178
	set	_StringConst_178,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=8  value=_temp_2361  sizeInBytes=4
	load	[r14+-68],r1
	store	r1,[r15+0]
!   Call the function
	mov	2244,r13		! source line 2244
	mov	"\0\0CE",r10
	call	print
! FOR STATEMENT...
	mov	2245,r13		! source line 2245
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2366 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-64]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2367 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-60]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2366  (sizeInBytes=4)
	load	[r14+-64],r1
	store	r1,[r14+-116]
_Label_2362:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2367 then goto _Label_2365		
	load	[r14+-116],r1
	load	[r14+-60],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2365
_Label_2363:
	mov	2245,r13		! source line 2245
	mov	"\0\0FB",r10
! CALL STATEMENT...
!   _temp_2368 = _StringConst_179
	set	_StringConst_179,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2368  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2246,r13		! source line 2246
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=i  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2247,r13		! source line 2247
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2369 = _StringConst_180
	set	_StringConst_180,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=8  value=_temp_2369  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+0]
!   Call the function
	mov	2248,r13		! source line 2248
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2371 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-44]
!   Move address of _temp_2371 [i ] into _temp_2372
!     make sure index expr is >= 0
	load	[r14+-116],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-44],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-40]
!   _temp_2370 = _temp_2372		(4 bytes)
	load	[r14+-40],r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=8  value=_temp_2370  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+0]
!   Call the function
	mov	2249,r13		! source line 2249
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2373 = _StringConst_181
	set	_StringConst_181,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2373  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2250,r13		! source line 2250
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2251,r13		! source line 2251
	mov	"\0\0SE",r10
!   _temp_2374 = &openFileTable
	load	[r14+8],r1
	add	r1,456,r1
	store	r1,[r14+-32]
!   Move address of _temp_2374 [i ] into _temp_2375
!     make sure index expr is >= 0
	load	[r14+-116],r2
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
	set	28,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-28]
!   Send message Print
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,4,r2
	call	r2
!   Increment the FOR-LOOP index variable and jump back
_Label_2364:
!   i = i + 1
	load	[r14+-116],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
	jmp	_Label_2362
! END FOR
_Label_2365:
! CALL STATEMENT...
!   _temp_2376 = _StringConst_182
	set	_StringConst_182,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2376  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2253,r13		! source line 2253
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2254,r13		! source line 2254
	mov	"\0\0SE",r10
!   _temp_2377 = _function_216_printOpen
	set	_function_216_printOpen,r1
	store	r1,[r14+-20]
!   _temp_2378 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2377  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Send message ApplyToEach
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! SEND STATEMENT...
	mov	2255,r13		! source line 2255
	mov	"\0\0SE",r10
!   _temp_2379 = &fileManagerLock
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
	mov	2255,r13		! source line 2255
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_2:
	.word	_sourceFileName
	.word	_Label_2380
	.word	4		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2381
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2382
	.word	-12
	.word	4
	.word	_Label_2383
	.word	-16
	.word	4
	.word	_Label_2384
	.word	-20
	.word	4
	.word	_Label_2385
	.word	-24
	.word	4
	.word	_Label_2386
	.word	-28
	.word	4
	.word	_Label_2387
	.word	-32
	.word	4
	.word	_Label_2388
	.word	-36
	.word	4
	.word	_Label_2389
	.word	-40
	.word	4
	.word	_Label_2390
	.word	-44
	.word	4
	.word	_Label_2391
	.word	-48
	.word	4
	.word	_Label_2392
	.word	-52
	.word	4
	.word	_Label_2393
	.word	-56
	.word	4
	.word	_Label_2394
	.word	-60
	.word	4
	.word	_Label_2395
	.word	-64
	.word	4
	.word	_Label_2396
	.word	-68
	.word	4
	.word	_Label_2397
	.word	-72
	.word	4
	.word	_Label_2398
	.word	-76
	.word	4
	.word	_Label_2399
	.word	-80
	.word	4
	.word	_Label_2400
	.word	-84
	.word	4
	.word	_Label_2401
	.word	-88
	.word	4
	.word	_Label_2402
	.word	-92
	.word	4
	.word	_Label_2403
	.word	-96
	.word	4
	.word	_Label_2404
	.word	-100
	.word	4
	.word	_Label_2405
	.word	-104
	.word	4
	.word	_Label_2406
	.word	-108
	.word	4
	.word	_Label_2407
	.word	-112
	.word	4
	.word	_Label_2408
	.word	-116
	.word	4
	.word	0
_Label_2380:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2381:
	.ascii	"Pself\0"
	.align
_Label_2382:
	.byte	'?'
	.ascii	"_temp_2379\0"
	.align
_Label_2383:
	.byte	'?'
	.ascii	"_temp_2378\0"
	.align
_Label_2384:
	.byte	'?'
	.ascii	"_temp_2377\0"
	.align
_Label_2385:
	.byte	'?'
	.ascii	"_temp_2376\0"
	.align
_Label_2386:
	.byte	'?'
	.ascii	"_temp_2375\0"
	.align
_Label_2387:
	.byte	'?'
	.ascii	"_temp_2374\0"
	.align
_Label_2388:
	.byte	'?'
	.ascii	"_temp_2373\0"
	.align
_Label_2389:
	.byte	'?'
	.ascii	"_temp_2372\0"
	.align
_Label_2390:
	.byte	'?'
	.ascii	"_temp_2371\0"
	.align
_Label_2391:
	.byte	'?'
	.ascii	"_temp_2370\0"
	.align
_Label_2392:
	.byte	'?'
	.ascii	"_temp_2369\0"
	.align
_Label_2393:
	.byte	'?'
	.ascii	"_temp_2368\0"
	.align
_Label_2394:
	.byte	'?'
	.ascii	"_temp_2367\0"
	.align
_Label_2395:
	.byte	'?'
	.ascii	"_temp_2366\0"
	.align
_Label_2396:
	.byte	'?'
	.ascii	"_temp_2361\0"
	.align
_Label_2397:
	.byte	'?'
	.ascii	"_temp_2360\0"
	.align
_Label_2398:
	.byte	'?'
	.ascii	"_temp_2359\0"
	.align
_Label_2399:
	.byte	'?'
	.ascii	"_temp_2358\0"
	.align
_Label_2400:
	.byte	'?'
	.ascii	"_temp_2357\0"
	.align
_Label_2401:
	.byte	'?'
	.ascii	"_temp_2356\0"
	.align
_Label_2402:
	.byte	'?'
	.ascii	"_temp_2355\0"
	.align
_Label_2403:
	.byte	'?'
	.ascii	"_temp_2354\0"
	.align
_Label_2404:
	.byte	'?'
	.ascii	"_temp_2353\0"
	.align
_Label_2405:
	.byte	'?'
	.ascii	"_temp_2352\0"
	.align
_Label_2406:
	.byte	'?'
	.ascii	"_temp_2347\0"
	.align
_Label_2407:
	.byte	'?'
	.ascii	"_temp_2346\0"
	.align
_Label_2408:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD Open  ===============
! 
_Method_P_Kernel_FileManager_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_3,r1
	push	r1
	mov	14,r1
_Label_3166:
	push	r0
	sub	r1,1,r1
	bne	_Label_3166
	mov	2260,r13		! source line 2260
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2276,r13		! source line 2276
	mov	"\0\0AS",r10
	mov	2276,r13		! source line 2276
	mov	"\0\0SE",r10
!   _temp_2409 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=filename  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message FindFCB
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-56]
! IF STATEMENT...
	mov	2277,r13		! source line 2277
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _Label_2410
	load	[r14+-56],r1
	cmp	r1,r0
	be	_Label_2410
	jmp	_Label_2411
_Label_2410:
! THEN...
	mov	2278,r13		! source line 2278
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2278,r13		! source line 2278
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2411:
! SEND STATEMENT...
	mov	2282,r13		! source line 2282
	mov	"\0\0SE",r10
!   _temp_2412 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-44]
!   Send message Lock
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! WHILE STATEMENT...
	mov	2283,r13		! source line 2283
	mov	"\0\0WH",r10
_Label_2413:
	mov	2283,r13		! source line 2283
	mov	"\0\0SE",r10
!   _temp_2416 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-40]
!   Send message IsEmpty
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2414 else goto _Label_2415
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2415
	jmp	_Label_2414
_Label_2414:
	mov	2283,r13		! source line 2283
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2284,r13		! source line 2284
	mov	"\0\0SE",r10
!   _temp_2417 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-36]
!   _temp_2418 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=_temp_2417  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2413
_Label_2415:
! ASSIGNMENT STATEMENT...
	mov	2286,r13		! source line 2286
	mov	"\0\0AS",r10
	mov	2286,r13		! source line 2286
	mov	"\0\0SE",r10
!   _temp_2419 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-28]
!   Send message Remove
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=open  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-52]
! ASSIGNMENT STATEMENT...
	mov	2289,r13		! source line 2289
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2420 = open + 20
	load	[r14+-52],r1
	add	r1,20,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2420 = fcb  (sizeInBytes=4)
	load	[r14+-56],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2290,r13		! source line 2290
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2421 = open + 24
	load	[r14+-52],r1
	add	r1,24,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2421 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-20],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2293,r13		! source line 2293
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+-52],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2422 = open + 16
	load	[r14+-52],r1
	add	r1,16,r1
	store	r1,[r14+-16]
!   Data Move: *_temp_2422 = 0  (sizeInBytes=4)
	mov	0,r1
	load	[r14+-16],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2295,r13		! source line 2295
	mov	"\0\0SE",r10
!   _temp_2423 = &fileManagerLock
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
	mov	2296,r13		! source line 2296
	mov	"\0\0RE",r10
!   ReturnResult: open  (sizeInBytes=4)
	load	[r14+-52],r1
	store	r1,[r14+8]
	add	r15,60,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_3:
	.word	_sourceFileName
	.word	_Label_2424
	.word	8		! total size of parameters
	.word	56		! frame size = 56
	.word	_Label_2425
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2426
	.word	12
	.word	4
	.word	_Label_2427
	.word	-12
	.word	4
	.word	_Label_2428
	.word	-16
	.word	4
	.word	_Label_2429
	.word	-20
	.word	4
	.word	_Label_2430
	.word	-24
	.word	4
	.word	_Label_2431
	.word	-28
	.word	4
	.word	_Label_2432
	.word	-32
	.word	4
	.word	_Label_2433
	.word	-36
	.word	4
	.word	_Label_2434
	.word	-40
	.word	4
	.word	_Label_2435
	.word	-44
	.word	4
	.word	_Label_2436
	.word	-48
	.word	4
	.word	_Label_2437
	.word	-52
	.word	4
	.word	_Label_2438
	.word	-56
	.word	4
	.word	0
_Label_2424:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Open\0"
	.align
_Label_2425:
	.ascii	"Pself\0"
	.align
_Label_2426:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2427:
	.byte	'?'
	.ascii	"_temp_2423\0"
	.align
_Label_2428:
	.byte	'?'
	.ascii	"_temp_2422\0"
	.align
_Label_2429:
	.byte	'?'
	.ascii	"_temp_2421\0"
	.align
_Label_2430:
	.byte	'?'
	.ascii	"_temp_2420\0"
	.align
_Label_2431:
	.byte	'?'
	.ascii	"_temp_2419\0"
	.align
_Label_2432:
	.byte	'?'
	.ascii	"_temp_2418\0"
	.align
_Label_2433:
	.byte	'?'
	.ascii	"_temp_2417\0"
	.align
_Label_2434:
	.byte	'?'
	.ascii	"_temp_2416\0"
	.align
_Label_2435:
	.byte	'?'
	.ascii	"_temp_2412\0"
	.align
_Label_2436:
	.byte	'?'
	.ascii	"_temp_2409\0"
	.align
_Label_2437:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2438:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD FindFCB  ===============
! 
_Method_P_Kernel_FileManager_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_4,r1
	push	r1
	mov	41,r1
_Label_3167:
	push	r0
	sub	r1,1,r1
	bne	_Label_3167
	mov	2301,r13		! source line 2301
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2326,r13		! source line 2326
	mov	"\0\0AS",r10
!   p = directoryFrame		(4 bytes)
	load	[r14+8],r1
	load	[r1+768],r1
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2329,r13		! source line 2329
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2330,r13		! source line 2330
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2331,r13		! source line 2331
	mov	"\0\0IF",r10
!   if i == 1937012066 then goto _Label_2440		(int)
	load	[r14+-136],r1
	set	1937012066,r2
	cmp	r1,r2
	be	_Label_2440
!	jmp	_Label_2439
_Label_2439:
! THEN...
	mov	2332,r13		! source line 2332
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2441 = _StringConst_183
	set	_StringConst_183,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2441  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2332,r13		! source line 2332
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2440:
! ASSIGNMENT STATEMENT...
	mov	2336,r13		! source line 2336
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: numFiles = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-144]
! ASSIGNMENT STATEMENT...
	mov	2337,r13		! source line 2337
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2338,r13		! source line 2338
	mov	"\0\0AS",r10
!   if intIsZero (p) then goto _runtimeErrorNullPointer
	load	[r14+-160],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: i = *p  (sizeInBytes=4)
	load	[r14+-160],r1
	load	[r1],r1
	store	r1,[r14+-136]
! ASSIGNMENT STATEMENT...
	mov	2339,r13		! source line 2339
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! WHILE STATEMENT...
	mov	2342,r13		! source line 2342
	mov	"\0\0WH",r10
_Label_2442:
!   if numFiles <= 0 then goto _Label_2444		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2444
!	jmp	_Label_2443
_Label_2443:
	mov	2342,r13		! source line 2342
	mov	"\0\0WB",r10
! CALL STATEMENT...
!   _temp_2445 = &start
	add	r14,-140,r1
	store	r1,[r14+-128]
!   Prepare Argument: offset=8  value=_temp_2445  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2343,r13		! source line 2343
	mov	"\0\0CA",r10
	call	_function_218_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2344,r13		! source line 2344
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2446 = &fileLen
	add	r14,-148,r1
	store	r1,[r14+-124]
!   Prepare Argument: offset=8  value=_temp_2446  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2345,r13		! source line 2345
	mov	"\0\0CA",r10
	call	_function_218_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2346,r13		! source line 2346
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! CALL STATEMENT...
!   _temp_2447 = &fileNameLen
	add	r14,-152,r1
	store	r1,[r14+-120]
!   Prepare Argument: offset=8  value=_temp_2447  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+4]
!   Call the function
	mov	2347,r13		! source line 2347
	mov	"\0\0CA",r10
	call	_function_218_copyUnalignedWord
! ASSIGNMENT STATEMENT...
	mov	2348,r13		! source line 2348
	mov	"\0\0AS",r10
!   p = p + 4		(int)
	load	[r14+-160],r1
	mov	4,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! IF STATEMENT...
	mov	2349,r13		! source line 2349
	mov	"\0\0IF",r10
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Data Move: _temp_2451 = *filename  (sizeInBytes=4)
	load	[r14+12],r1
	load	[r1],r1
	store	r1,[r14+-116]
!   if fileNameLen != _temp_2451 then goto _Label_2449		(int)
	load	[r14+-152],r1
	load	[r14+-116],r2
	cmp	r1,r2
	bne	_Label_2449
!	jmp	_Label_2450
_Label_2450:
!   if intIsZero (filename) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Move address of filename [0 ] into _temp_2453
!     make sure index expr is >= 0
	mov	0,r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+12],r1
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
	store	r2,[r14+-108]
!   _temp_2452 = _temp_2453		(4 bytes)
	load	[r14+-108],r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=p  sizeInBytes=4
	load	[r14+-160],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2452  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=fileNameLen  sizeInBytes=4
	load	[r14+-152],r1
	store	r1,[r15+8]
!   Call the function
	mov	2350,r13		! source line 2350
	mov	"\0\0CA",r10
	call	_P_System_MemoryEqual
!   if result==true then goto _Label_2448 else goto _Label_2449
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2449
	jmp	_Label_2448
_Label_2448:
! THEN...
	mov	2351,r13		! source line 2351
	mov	"\0\0TN",r10
! BREAK STATEMENT...
	mov	2351,r13		! source line 2351
	mov	"\0\0BR",r10
	jmp	_Label_2444
! END IF...
_Label_2449:
! ASSIGNMENT STATEMENT...
	mov	2353,r13		! source line 2353
	mov	"\0\0AS",r10
!   p = p + fileNameLen		(int)
	load	[r14+-160],r1
	load	[r14+-152],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
! ASSIGNMENT STATEMENT...
	mov	2354,r13		! source line 2354
	mov	"\0\0AS",r10
!   numFiles = numFiles - 1		(int)
	load	[r14+-144],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
! END WHILE...
	jmp	_Label_2442
_Label_2444:
! IF STATEMENT...
	mov	2358,r13		! source line 2358
	mov	"\0\0IF",r10
!   if numFiles > 0 then goto _Label_2455		(int)
	load	[r14+-144],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2455
!	jmp	_Label_2454
_Label_2454:
! THEN...
	mov	2359,r13		! source line 2359
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2359,r13		! source line 2359
	mov	"\0\0RE",r10
!   ReturnResult: 0  (sizeInBytes=4)
	mov	0,r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2455:
! SEND STATEMENT...
	mov	2362,r13		! source line 2362
	mov	"\0\0SE",r10
!   _temp_2456 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-104]
!   Send message Lock
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! FOR STATEMENT...
	mov	2364,r13		! source line 2364
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2461 = 0		(4 bytes)
	mov	0,r1
	store	r1,[r14+-100]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2462 = 9		(4 bytes)
	mov	9,r1
	store	r1,[r14+-96]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2461  (sizeInBytes=4)
	load	[r14+-100],r1
	store	r1,[r14+-136]
_Label_2457:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2462 then goto _Label_2460		
	load	[r14+-136],r1
	load	[r14+-96],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2460
_Label_2458:
	mov	2364,r13		! source line 2364
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2365,r13		! source line 2365
	mov	"\0\0AS",r10
!   _temp_2463 = &fcbTable
	load	[r14+8],r1
	add	r1,24,r1
	store	r1,[r14+-92]
!   Move address of _temp_2463 [i ] into _temp_2464
!     make sure index expr is >= 0
	load	[r14+-136],r2
	cmp	r2,0
	bl	_runtimeErrorBadArrayIndex
!     make sure index expr is < array size
	load	[r14+-92],r1
	load	[r1],r3
	cmp	r3,0
	ble	_runtimeErrorUninitializedArray
	cmp	r2,r3
	bvs	_runtimeErrorOverflow
	bge	_runtimeErrorBadArrayIndex
!     compute address of array element
	set	40,r3
	mul	r2,r3,r2
	add	r2,4,r2
	add	r2,r1,r2
	store	r2,[r14+-88]
!   fcb = _temp_2464		(4 bytes)
	load	[r14+-88],r1
	store	r1,[r14+-156]
! IF STATEMENT...
	mov	2366,r13		! source line 2366
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2468 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-80]
!   Data Move: _temp_2467 = *_temp_2468  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r1],r1
	store	r1,[r14+-84]
!   if _temp_2467 != start then goto _Label_2466		(int)
	load	[r14+-84],r1
	load	[r14+-140],r2
	cmp	r1,r2
	bne	_Label_2466
!	jmp	_Label_2465
_Label_2465:
! THEN...
	mov	2367,r13		! source line 2367
	mov	"\0\0TN",r10
! ASSIGNMENT STATEMENT...
	mov	2367,r13		! source line 2367
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2469 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-76]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2472 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2471 = *_temp_2472  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   _temp_2470 = _temp_2471 + 1		(int)
	load	[r14+-68],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-72]
!   Data Move: *_temp_2469 = _temp_2470  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r14+-76],r2
	store	r1,[r2]
! SEND STATEMENT...
	mov	2368,r13		! source line 2368
	mov	"\0\0SE",r10
!   _temp_2473 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-60]
!   Send message Unlock
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2369,r13		! source line 2369
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2466:
!   Increment the FOR-LOOP index variable and jump back
_Label_2459:
!   i = i + 1
	load	[r14+-136],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
	jmp	_Label_2457
! END FOR
_Label_2460:
! WHILE STATEMENT...
	mov	2374,r13		! source line 2374
	mov	"\0\0WH",r10
_Label_2474:
	mov	2374,r13		! source line 2374
	mov	"\0\0SE",r10
!   _temp_2477 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-56]
!   Send message IsEmpty
	load	[r14+-56],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
!   if result==true then goto _Label_2475 else goto _Label_2476
	loadb	[r15],r1
	cmp	r1,0
	be	_Label_2476
	jmp	_Label_2475
_Label_2475:
	mov	2374,r13		! source line 2374
	mov	"\0\0WB",r10
! SEND STATEMENT...
	mov	2375,r13		! source line 2375
	mov	"\0\0SE",r10
!   _temp_2478 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-52]
!   _temp_2479 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-48]
!   Prepare Argument: offset=12  value=_temp_2478  sizeInBytes=4
	load	[r14+-52],r1
	store	r1,[r15+4]
!   Send message Wait
	load	[r14+-48],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END WHILE...
	jmp	_Label_2474
_Label_2476:
! ASSIGNMENT STATEMENT...
	mov	2377,r13		! source line 2377
	mov	"\0\0AS",r10
	mov	2377,r13		! source line 2377
	mov	"\0\0SE",r10
!   _temp_2480 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-44]
!   Send message Remove
	load	[r14+-44],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=fcb  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-156]
! SEND STATEMENT...
	mov	2380,r13		! source line 2380
	mov	"\0\0SE",r10
!   _temp_2481 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-40]
!   Send message Unlock
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2383,r13		! source line 2383
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2482 = fcb + 20
	load	[r14+-156],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2482 = start  (sizeInBytes=4)
	load	[r14+-140],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2384,r13		! source line 2384
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2483 = fcb + 24
	load	[r14+-156],r1
	add	r1,24,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2483 = fileLen  (sizeInBytes=4)
	load	[r14+-148],r1
	load	[r14+-32],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2385,r13		! source line 2385
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2484 = fcb + 16
	load	[r14+-156],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: *_temp_2484 = 1  (sizeInBytes=4)
	mov	1,r1
	load	[r14+-28],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2386,r13		! source line 2386
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2489 = fcb + 32
	load	[r14+-156],r1
	add	r1,32,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2488 = *_temp_2489  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if _temp_2488 < 0 then goto _Label_2487		(int)
	load	[r14+-24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bl	_Label_2487
	jmp	_Label_2485
_Label_2487:
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-156],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2490 = fcb + 36
	load	[r14+-156],r1
	add	r1,36,r1
	store	r1,[r14+-16]
!   if boolIsZero (_temp_2490 ) then goto _Label_2486		(int)
	load	[r14+-16],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2486
!	jmp	_Label_2485
_Label_2485:
! THEN...
	mov	2387,r13		! source line 2387
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2491 = _StringConst_184
	set	_StringConst_184,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2491  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2387,r13		! source line 2387
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2486:
! RETURN STATEMENT...
	mov	2389,r13		! source line 2389
	mov	"\0\0RE",r10
!   ReturnResult: fcb  (sizeInBytes=4)
	load	[r14+-156],r1
	store	r1,[r14+8]
	add	r15,168,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_4:
	.word	_sourceFileName
	.word	_Label_2492
	.word	8		! total size of parameters
	.word	164		! frame size = 164
	.word	_Label_2493
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2494
	.word	12
	.word	4
	.word	_Label_2495
	.word	-12
	.word	4
	.word	_Label_2496
	.word	-16
	.word	4
	.word	_Label_2497
	.word	-20
	.word	4
	.word	_Label_2498
	.word	-24
	.word	4
	.word	_Label_2499
	.word	-28
	.word	4
	.word	_Label_2500
	.word	-32
	.word	4
	.word	_Label_2501
	.word	-36
	.word	4
	.word	_Label_2502
	.word	-40
	.word	4
	.word	_Label_2503
	.word	-44
	.word	4
	.word	_Label_2504
	.word	-48
	.word	4
	.word	_Label_2505
	.word	-52
	.word	4
	.word	_Label_2506
	.word	-56
	.word	4
	.word	_Label_2507
	.word	-60
	.word	4
	.word	_Label_2508
	.word	-64
	.word	4
	.word	_Label_2509
	.word	-68
	.word	4
	.word	_Label_2510
	.word	-72
	.word	4
	.word	_Label_2511
	.word	-76
	.word	4
	.word	_Label_2512
	.word	-80
	.word	4
	.word	_Label_2513
	.word	-84
	.word	4
	.word	_Label_2514
	.word	-88
	.word	4
	.word	_Label_2515
	.word	-92
	.word	4
	.word	_Label_2516
	.word	-96
	.word	4
	.word	_Label_2517
	.word	-100
	.word	4
	.word	_Label_2518
	.word	-104
	.word	4
	.word	_Label_2519
	.word	-108
	.word	4
	.word	_Label_2520
	.word	-112
	.word	4
	.word	_Label_2521
	.word	-116
	.word	4
	.word	_Label_2522
	.word	-120
	.word	4
	.word	_Label_2523
	.word	-124
	.word	4
	.word	_Label_2524
	.word	-128
	.word	4
	.word	_Label_2525
	.word	-132
	.word	4
	.word	_Label_2526
	.word	-136
	.word	4
	.word	_Label_2527
	.word	-140
	.word	4
	.word	_Label_2528
	.word	-144
	.word	4
	.word	_Label_2529
	.word	-148
	.word	4
	.word	_Label_2530
	.word	-152
	.word	4
	.word	_Label_2531
	.word	-156
	.word	4
	.word	_Label_2532
	.word	-160
	.word	4
	.word	0
_Label_2492:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"FindFCB\0"
	.align
_Label_2493:
	.ascii	"Pself\0"
	.align
_Label_2494:
	.byte	'P'
	.ascii	"filename\0"
	.align
_Label_2495:
	.byte	'?'
	.ascii	"_temp_2491\0"
	.align
_Label_2496:
	.byte	'?'
	.ascii	"_temp_2490\0"
	.align
_Label_2497:
	.byte	'?'
	.ascii	"_temp_2489\0"
	.align
_Label_2498:
	.byte	'?'
	.ascii	"_temp_2488\0"
	.align
_Label_2499:
	.byte	'?'
	.ascii	"_temp_2484\0"
	.align
_Label_2500:
	.byte	'?'
	.ascii	"_temp_2483\0"
	.align
_Label_2501:
	.byte	'?'
	.ascii	"_temp_2482\0"
	.align
_Label_2502:
	.byte	'?'
	.ascii	"_temp_2481\0"
	.align
_Label_2503:
	.byte	'?'
	.ascii	"_temp_2480\0"
	.align
_Label_2504:
	.byte	'?'
	.ascii	"_temp_2479\0"
	.align
_Label_2505:
	.byte	'?'
	.ascii	"_temp_2478\0"
	.align
_Label_2506:
	.byte	'?'
	.ascii	"_temp_2477\0"
	.align
_Label_2507:
	.byte	'?'
	.ascii	"_temp_2473\0"
	.align
_Label_2508:
	.byte	'?'
	.ascii	"_temp_2472\0"
	.align
_Label_2509:
	.byte	'?'
	.ascii	"_temp_2471\0"
	.align
_Label_2510:
	.byte	'?'
	.ascii	"_temp_2470\0"
	.align
_Label_2511:
	.byte	'?'
	.ascii	"_temp_2469\0"
	.align
_Label_2512:
	.byte	'?'
	.ascii	"_temp_2468\0"
	.align
_Label_2513:
	.byte	'?'
	.ascii	"_temp_2467\0"
	.align
_Label_2514:
	.byte	'?'
	.ascii	"_temp_2464\0"
	.align
_Label_2515:
	.byte	'?'
	.ascii	"_temp_2463\0"
	.align
_Label_2516:
	.byte	'?'
	.ascii	"_temp_2462\0"
	.align
_Label_2517:
	.byte	'?'
	.ascii	"_temp_2461\0"
	.align
_Label_2518:
	.byte	'?'
	.ascii	"_temp_2456\0"
	.align
_Label_2519:
	.byte	'?'
	.ascii	"_temp_2453\0"
	.align
_Label_2520:
	.byte	'?'
	.ascii	"_temp_2452\0"
	.align
_Label_2521:
	.byte	'?'
	.ascii	"_temp_2451\0"
	.align
_Label_2522:
	.byte	'?'
	.ascii	"_temp_2447\0"
	.align
_Label_2523:
	.byte	'?'
	.ascii	"_temp_2446\0"
	.align
_Label_2524:
	.byte	'?'
	.ascii	"_temp_2445\0"
	.align
_Label_2525:
	.byte	'?'
	.ascii	"_temp_2441\0"
	.align
_Label_2526:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_2527:
	.byte	'I'
	.ascii	"start\0"
	.align
_Label_2528:
	.byte	'I'
	.ascii	"numFiles\0"
	.align
_Label_2529:
	.byte	'I'
	.ascii	"fileLen\0"
	.align
_Label_2530:
	.byte	'I'
	.ascii	"fileNameLen\0"
	.align
_Label_2531:
	.byte	'P'
	.ascii	"fcb\0"
	.align
_Label_2532:
	.byte	'P'
	.ascii	"p\0"
	.align
! 
! ===============  METHOD Close  ===============
! 
_Method_P_Kernel_FileManager_5:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_5,r1
	push	r1
	mov	26,r1
_Label_3168:
	push	r0
	sub	r1,1,r1
	bne	_Label_3168
	mov	2402,r13		! source line 2402
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2404,r13		! source line 2404
	mov	"\0\0IF",r10
!   _temp_2535 = &serialTerminalFile
	load	[r14+8],r1
	add	r1,772,r1
	store	r1,[r14+-100]
!   if open != _temp_2535 then goto _Label_2534		(int)
	load	[r14+12],r1
	load	[r14+-100],r2
	cmp	r1,r2
	bne	_Label_2534
!	jmp	_Label_2533
_Label_2533:
! THEN...
	mov	2405,r13		! source line 2405
	mov	"\0\0TN",r10
! RETURN STATEMENT...
	mov	2405,r13		! source line 2405
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2534:
! SEND STATEMENT...
	mov	2407,r13		! source line 2407
	mov	"\0\0SE",r10
!   _temp_2536 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-96]
!   Send message Lock
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2408,r13		! source line 2408
	mov	"\0\0SE",r10
!   _temp_2537 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-92],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2409,r13		! source line 2409
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2538 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: fcb = *_temp_2538  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-104]
! ASSIGNMENT STATEMENT...
	mov	2410,r13		! source line 2410
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2539 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-84]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2542 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2541 = *_temp_2542  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   _temp_2540 = _temp_2541 - 1		(int)
	load	[r14+-76],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-80]
!   Data Move: *_temp_2539 = _temp_2540  (sizeInBytes=4)
	load	[r14+-80],r1
	load	[r14+-84],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2411,r13		! source line 2411
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2546 = open + 24
	load	[r14+12],r1
	add	r1,24,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2545 = *_temp_2546  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   if _temp_2545 > 0 then goto _Label_2544		(int)
	load	[r14+-68],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2544
!	jmp	_Label_2543
_Label_2543:
! THEN...
	mov	2412,r13		! source line 2412
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2412,r13		! source line 2412
	mov	"\0\0SE",r10
!   _temp_2547 = &openFileFreeList
	load	[r14+8],r1
	add	r1,756,r1
	store	r1,[r14+-60]
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2413,r13		! source line 2413
	mov	"\0\0SE",r10
!   _temp_2548 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-56]
!   _temp_2549 = &anOpenFileBecameFree
	load	[r14+8],r1
	add	r1,740,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=_temp_2548  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+4]
!   Send message Signal
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2414,r13		! source line 2414
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2550 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2553 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2552 = *_temp_2553  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   _temp_2551 = _temp_2552 - 1		(int)
	load	[r14+-40],r1
	mov	1,r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-44]
!   Data Move: *_temp_2550 = _temp_2551  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r14+-48],r2
	store	r1,[r2]
! IF STATEMENT...
	mov	2415,r13		! source line 2415
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-104],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2557 = fcb + 16
	load	[r14+-104],r1
	add	r1,16,r1
	store	r1,[r14+-28]
!   Data Move: _temp_2556 = *_temp_2557  (sizeInBytes=4)
	load	[r14+-28],r1
	load	[r1],r1
	store	r1,[r14+-32]
!   if _temp_2556 > 0 then goto _Label_2555		(int)
	load	[r14+-32],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2555
!	jmp	_Label_2554
_Label_2554:
! THEN...
	mov	2416,r13		! source line 2416
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2416,r13		! source line 2416
	mov	"\0\0SE",r10
!   _temp_2558 = &fcbFreeList
	load	[r14+8],r1
	add	r1,444,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=12  value=fcb  sizeInBytes=4
	load	[r14+-104],r1
	store	r1,[r15+4]
!   Send message AddToEnd
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! SEND STATEMENT...
	mov	2417,r13		! source line 2417
	mov	"\0\0SE",r10
!   _temp_2559 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-20]
!   _temp_2560 = &anFCBBecameFree
	load	[r14+8],r1
	add	r1,428,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2559  sizeInBytes=4
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
_Label_2555:
! END IF...
_Label_2544:
! SEND STATEMENT...
	mov	2420,r13		! source line 2420
	mov	"\0\0SE",r10
!   _temp_2561 = &fileManagerLock
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
	mov	2420,r13		! source line 2420
	mov	"\0\0RE",r10
	add	r15,108,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_5:
	.word	_sourceFileName
	.word	_Label_2562
	.word	8		! total size of parameters
	.word	104		! frame size = 104
	.word	_Label_2563
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2564
	.word	12
	.word	4
	.word	_Label_2565
	.word	-12
	.word	4
	.word	_Label_2566
	.word	-16
	.word	4
	.word	_Label_2567
	.word	-20
	.word	4
	.word	_Label_2568
	.word	-24
	.word	4
	.word	_Label_2569
	.word	-28
	.word	4
	.word	_Label_2570
	.word	-32
	.word	4
	.word	_Label_2571
	.word	-36
	.word	4
	.word	_Label_2572
	.word	-40
	.word	4
	.word	_Label_2573
	.word	-44
	.word	4
	.word	_Label_2574
	.word	-48
	.word	4
	.word	_Label_2575
	.word	-52
	.word	4
	.word	_Label_2576
	.word	-56
	.word	4
	.word	_Label_2577
	.word	-60
	.word	4
	.word	_Label_2578
	.word	-64
	.word	4
	.word	_Label_2579
	.word	-68
	.word	4
	.word	_Label_2580
	.word	-72
	.word	4
	.word	_Label_2581
	.word	-76
	.word	4
	.word	_Label_2582
	.word	-80
	.word	4
	.word	_Label_2583
	.word	-84
	.word	4
	.word	_Label_2584
	.word	-88
	.word	4
	.word	_Label_2585
	.word	-92
	.word	4
	.word	_Label_2586
	.word	-96
	.word	4
	.word	_Label_2587
	.word	-100
	.word	4
	.word	_Label_2588
	.word	-104
	.word	4
	.word	0
_Label_2562:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Close\0"
	.align
_Label_2563:
	.ascii	"Pself\0"
	.align
_Label_2564:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2565:
	.byte	'?'
	.ascii	"_temp_2561\0"
	.align
_Label_2566:
	.byte	'?'
	.ascii	"_temp_2560\0"
	.align
_Label_2567:
	.byte	'?'
	.ascii	"_temp_2559\0"
	.align
_Label_2568:
	.byte	'?'
	.ascii	"_temp_2558\0"
	.align
_Label_2569:
	.byte	'?'
	.ascii	"_temp_2557\0"
	.align
_Label_2570:
	.byte	'?'
	.ascii	"_temp_2556\0"
	.align
_Label_2571:
	.byte	'?'
	.ascii	"_temp_2553\0"
	.align
_Label_2572:
	.byte	'?'
	.ascii	"_temp_2552\0"
	.align
_Label_2573:
	.byte	'?'
	.ascii	"_temp_2551\0"
	.align
_Label_2574:
	.byte	'?'
	.ascii	"_temp_2550\0"
	.align
_Label_2575:
	.byte	'?'
	.ascii	"_temp_2549\0"
	.align
_Label_2576:
	.byte	'?'
	.ascii	"_temp_2548\0"
	.align
_Label_2577:
	.byte	'?'
	.ascii	"_temp_2547\0"
	.align
_Label_2578:
	.byte	'?'
	.ascii	"_temp_2546\0"
	.align
_Label_2579:
	.byte	'?'
	.ascii	"_temp_2545\0"
	.align
_Label_2580:
	.byte	'?'
	.ascii	"_temp_2542\0"
	.align
_Label_2581:
	.byte	'?'
	.ascii	"_temp_2541\0"
	.align
_Label_2582:
	.byte	'?'
	.ascii	"_temp_2540\0"
	.align
_Label_2583:
	.byte	'?'
	.ascii	"_temp_2539\0"
	.align
_Label_2584:
	.byte	'?'
	.ascii	"_temp_2538\0"
	.align
_Label_2585:
	.byte	'?'
	.ascii	"_temp_2537\0"
	.align
_Label_2586:
	.byte	'?'
	.ascii	"_temp_2536\0"
	.align
_Label_2587:
	.byte	'?'
	.ascii	"_temp_2535\0"
	.align
_Label_2588:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD Flush  ===============
! 
_Method_P_Kernel_FileManager_6:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_6,r1
	push	r1
	mov	29,r1
_Label_3169:
	push	r0
	sub	r1,1,r1
	bne	_Label_3169
	mov	2425,r13		! source line 2425
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2592 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-104]
!   Data Move: _temp_2591 = *_temp_2592  (sizeInBytes=4)
	load	[r14+-104],r1
	load	[r1],r1
	store	r1,[r14+-108]
!   if intIsZero (_temp_2591) then goto _runtimeErrorNullPointer
	load	[r14+-108],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2593 = _temp_2591 + 36
	load	[r14+-108],r1
	add	r1,36,r1
	store	r1,[r14+-100]
!   if boolIsZero (_temp_2593 ) then goto _Label_2590		(int)
	load	[r14+-100],r1
	loadb	[r1],r1
	cmp	r1,r0
	be	_Label_2590
!	jmp	_Label_2589
_Label_2589:
! THEN...
	mov	2431,r13		! source line 2431
	mov	"\0\0TN",r10
! IF STATEMENT...
	mov	2431,r13		! source line 2431
	mov	"\0\0IF",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2598 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2597 = *_temp_2598  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2597) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2599 = _temp_2597 + 32
	load	[r14+-92],r1
	add	r1,32,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2596 = *_temp_2599  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2596 >= 0 then goto _Label_2595		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2595
!	jmp	_Label_2594
_Label_2594:
! THEN...
	mov	2432,r13		! source line 2432
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2600 = _StringConst_185
	set	_StringConst_185,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2600  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2432,r13		! source line 2432
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2595:
! ASSIGNMENT STATEMENT...
	mov	2434,r13		! source line 2434
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2602 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-72]
!   Data Move: _temp_2601 = *_temp_2602  (sizeInBytes=4)
	load	[r14+-72],r1
	load	[r1],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2601) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2603 = _temp_2601 + 36
	load	[r14+-76],r1
	add	r1,36,r1
	store	r1,[r14+-68]
!   Data Move: *_temp_2603 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-68],r2
	storeb	r1,[r2]
! SEND STATEMENT...
	mov	2435,r13		! source line 2435
	mov	"\0\0SE",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2607 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2606 = *_temp_2607  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if intIsZero (_temp_2606) then goto _runtimeErrorNullPointer
	load	[r14+-56],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2608 = _temp_2606 + 32
	load	[r14+-56],r1
	add	r1,32,r1
	store	r1,[r14+-48]
!   Data Move: _temp_2605 = *_temp_2608  (sizeInBytes=4)
	load	[r14+-48],r1
	load	[r1],r1
	store	r1,[r14+-60]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2611 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-36]
!   Data Move: _temp_2610 = *_temp_2611  (sizeInBytes=4)
	load	[r14+-36],r1
	load	[r1],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2610) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2612 = _temp_2610 + 20
	load	[r14+-40],r1
	add	r1,20,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2609 = *_temp_2612  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2604 = _temp_2605 + _temp_2609		(int)
	load	[r14+-60],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-64]
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2615 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-20]
!   Data Move: _temp_2614 = *_temp_2615  (sizeInBytes=4)
	load	[r14+-20],r1
	load	[r1],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2614) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2616 = _temp_2614 + 28
	load	[r14+-24],r1
	add	r1,28,r1
	store	r1,[r14+-16]
!   Data Move: _temp_2613 = *_temp_2616  (sizeInBytes=4)
	load	[r14+-16],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   _temp_2617 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=12  value=_temp_2604  sizeInBytes=4
	load	[r14+-64],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2613  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+12]
!   Send message SynchWriteSector
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! END IF...
_Label_2590:
! RETURN STATEMENT...
	mov	2430,r13		! source line 2430
	mov	"\0\0RE",r10
	add	r15,120,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_6:
	.word	_sourceFileName
	.word	_Label_2618
	.word	8		! total size of parameters
	.word	116		! frame size = 116
	.word	_Label_2619
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2620
	.word	12
	.word	4
	.word	_Label_2621
	.word	-12
	.word	4
	.word	_Label_2622
	.word	-16
	.word	4
	.word	_Label_2623
	.word	-20
	.word	4
	.word	_Label_2624
	.word	-24
	.word	4
	.word	_Label_2625
	.word	-28
	.word	4
	.word	_Label_2626
	.word	-32
	.word	4
	.word	_Label_2627
	.word	-36
	.word	4
	.word	_Label_2628
	.word	-40
	.word	4
	.word	_Label_2629
	.word	-44
	.word	4
	.word	_Label_2630
	.word	-48
	.word	4
	.word	_Label_2631
	.word	-52
	.word	4
	.word	_Label_2632
	.word	-56
	.word	4
	.word	_Label_2633
	.word	-60
	.word	4
	.word	_Label_2634
	.word	-64
	.word	4
	.word	_Label_2635
	.word	-68
	.word	4
	.word	_Label_2636
	.word	-72
	.word	4
	.word	_Label_2637
	.word	-76
	.word	4
	.word	_Label_2638
	.word	-80
	.word	4
	.word	_Label_2639
	.word	-84
	.word	4
	.word	_Label_2640
	.word	-88
	.word	4
	.word	_Label_2641
	.word	-92
	.word	4
	.word	_Label_2642
	.word	-96
	.word	4
	.word	_Label_2643
	.word	-100
	.word	4
	.word	_Label_2644
	.word	-104
	.word	4
	.word	_Label_2645
	.word	-108
	.word	4
	.word	0
_Label_2618:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"Flush\0"
	.align
_Label_2619:
	.ascii	"Pself\0"
	.align
_Label_2620:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2621:
	.byte	'?'
	.ascii	"_temp_2617\0"
	.align
_Label_2622:
	.byte	'?'
	.ascii	"_temp_2616\0"
	.align
_Label_2623:
	.byte	'?'
	.ascii	"_temp_2615\0"
	.align
_Label_2624:
	.byte	'?'
	.ascii	"_temp_2614\0"
	.align
_Label_2625:
	.byte	'?'
	.ascii	"_temp_2613\0"
	.align
_Label_2626:
	.byte	'?'
	.ascii	"_temp_2612\0"
	.align
_Label_2627:
	.byte	'?'
	.ascii	"_temp_2611\0"
	.align
_Label_2628:
	.byte	'?'
	.ascii	"_temp_2610\0"
	.align
_Label_2629:
	.byte	'?'
	.ascii	"_temp_2609\0"
	.align
_Label_2630:
	.byte	'?'
	.ascii	"_temp_2608\0"
	.align
_Label_2631:
	.byte	'?'
	.ascii	"_temp_2607\0"
	.align
_Label_2632:
	.byte	'?'
	.ascii	"_temp_2606\0"
	.align
_Label_2633:
	.byte	'?'
	.ascii	"_temp_2605\0"
	.align
_Label_2634:
	.byte	'?'
	.ascii	"_temp_2604\0"
	.align
_Label_2635:
	.byte	'?'
	.ascii	"_temp_2603\0"
	.align
_Label_2636:
	.byte	'?'
	.ascii	"_temp_2602\0"
	.align
_Label_2637:
	.byte	'?'
	.ascii	"_temp_2601\0"
	.align
_Label_2638:
	.byte	'?'
	.ascii	"_temp_2600\0"
	.align
_Label_2639:
	.byte	'?'
	.ascii	"_temp_2599\0"
	.align
_Label_2640:
	.byte	'?'
	.ascii	"_temp_2598\0"
	.align
_Label_2641:
	.byte	'?'
	.ascii	"_temp_2597\0"
	.align
_Label_2642:
	.byte	'?'
	.ascii	"_temp_2596\0"
	.align
_Label_2643:
	.byte	'?'
	.ascii	"_temp_2593\0"
	.align
_Label_2644:
	.byte	'?'
	.ascii	"_temp_2592\0"
	.align
_Label_2645:
	.byte	'?'
	.ascii	"_temp_2591\0"
	.align
! 
! ===============  METHOD SynchRead  ===============
! 
_Method_P_Kernel_FileManager_7:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_7,r1
	push	r1
	mov	34,r1
_Label_3170:
	push	r0
	sub	r1,1,r1
	bne	_Label_3170
	mov	2444,r13		! source line 2444
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2459,r13		! source line 2459
	mov	"\0\0SE",r10
!   _temp_2646 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-108]
!   Send message Lock
	load	[r14+-108],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2460,r13		! source line 2460
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2652		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2652
!   _temp_2651 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2653
_Label_2652:
!   _temp_2651 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2653:
!   if _temp_2651 then goto _Label_2650 else goto _Label_2647
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2647
	jmp	_Label_2650
_Label_2650:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2656 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-100]
!   Data Move: _temp_2655 = *_temp_2656  (sizeInBytes=4)
	load	[r14+-100],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2655 == 0 then goto _Label_2657		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2657
!   _temp_2654 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2658
_Label_2657:
!   _temp_2654 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2658:
!   if _temp_2654 then goto _Label_2649 else goto _Label_2647
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2647
	jmp	_Label_2649
_Label_2649:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2661 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-88]
!   Data Move: _temp_2660 = *_temp_2661  (sizeInBytes=4)
	load	[r14+-88],r1
	load	[r1],r1
	store	r1,[r14+-92]
!   if intIsZero (_temp_2660) then goto _runtimeErrorNullPointer
	load	[r14+-92],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2662 = _temp_2660 + 20
	load	[r14+-92],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: _temp_2659 = *_temp_2662  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-96]
!   if _temp_2659 >= 0 then goto _Label_2648		(int)
	load	[r14+-96],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2648
!	jmp	_Label_2647
_Label_2647:
! THEN...
	mov	2461,r13		! source line 2461
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2663 = _StringConst_186
	set	_StringConst_186,r1
	store	r1,[r14+-80]
!   Prepare Argument: offset=8  value=_temp_2663  sizeInBytes=4
	load	[r14+-80],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2461,r13		! source line 2461
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2648:
! ASSIGNMENT STATEMENT...
	mov	2463,r13		! source line 2463
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2664 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-76]
!   Data Move: fcb = *_temp_2664  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-128]
! WHILE STATEMENT...
	mov	2464,r13		! source line 2464
	mov	"\0\0WH",r10
_Label_2665:
!   if numBytes <= 0 then goto _Label_2667		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2667
!	jmp	_Label_2666
_Label_2666:
	mov	2464,r13		! source line 2464
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2473,r13		! source line 2473
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-112]
! ASSIGNMENT STATEMENT...
	mov	2474,r13		! source line 2474
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-116]
! IF STATEMENT...
	mov	2478,r13		! source line 2478
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2671 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-68]
!   Data Move: _temp_2670 = *_temp_2671  (sizeInBytes=4)
	load	[r14+-68],r1
	load	[r1],r1
	store	r1,[r14+-72]
!   if _temp_2670 == sector then goto _Label_2669		(int)
	load	[r14+-72],r1
	load	[r14+-112],r2
	cmp	r1,r2
	be	_Label_2669
!	jmp	_Label_2668
_Label_2668:
! THEN...
	mov	2479,r13		! source line 2479
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2479,r13		! source line 2479
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-64]
!   if intIsZero (_temp_2672) then goto _runtimeErrorNullPointer
	load	[r14+-64],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-64],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! SEND STATEMENT...
	mov	2481,r13		! source line 2481
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2675 = fcb + 20
	load	[r14+-128],r1
	add	r1,20,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2674 = *_temp_2675  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   _temp_2673 = sector + _temp_2674		(int)
	load	[r14+-112],r1
	load	[r14+-56],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2677 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-44]
!   Data Move: _temp_2676 = *_temp_2677  (sizeInBytes=4)
	load	[r14+-44],r1
	load	[r1],r1
	store	r1,[r14+-48]
!   _temp_2678 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-40]
!   Prepare Argument: offset=12  value=_temp_2673  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2676  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2484,r13		! source line 2484
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2679 = fcb + 32
	load	[r14+-128],r1
	add	r1,32,r1
	store	r1,[r14+-36]
!   Data Move: *_temp_2679 = sector  (sizeInBytes=4)
	load	[r14+-112],r1
	load	[r14+-36],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2485,r13		! source line 2485
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2680 = fcb + 36
	load	[r14+-128],r1
	add	r1,36,r1
	store	r1,[r14+-32]
!   Data Move: *_temp_2680 = 0  (sizeInBytes=1)
	mov	0,r1
	load	[r14+-32],r2
	storeb	r1,[r2]
! END IF...
_Label_2669:
! ASSIGNMENT STATEMENT...
	mov	2487,r13		! source line 2487
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-128],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2682 = fcb + 28
	load	[r14+-128],r1
	add	r1,28,r1
	store	r1,[r14+-24]
!   Data Move: _temp_2681 = *_temp_2682  (sizeInBytes=4)
	load	[r14+-24],r1
	load	[r1],r1
	store	r1,[r14+-28]
!   posInBuffer = _temp_2681 + offset		(int)
	load	[r14+-28],r1
	load	[r14+-116],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2488,r13		! source line 2488
	mov	"\0\0AS",r10
!   _temp_2683 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-116],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2683  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Call the function
	mov	2488,r13		! source line 2488
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-124]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=targetAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=posInBuffer  sizeInBytes=4
	load	[r14+-120],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-124],r1
	store	r1,[r15+8]
!   Call the function
	mov	2492,r13		! source line 2492
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2493,r13		! source line 2493
	mov	"\0\0AS",r10
!   targetAddr = targetAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2494,r13		! source line 2494
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2495,r13		! source line 2495
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2665
_Label_2667:
! SEND STATEMENT...
	mov	2502,r13		! source line 2502
	mov	"\0\0SE",r10
!   _temp_2684 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2503,r13		! source line 2503
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,140,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_7:
	.word	_sourceFileName
	.word	_Label_2685
	.word	20		! total size of parameters
	.word	136		! frame size = 136
	.word	_Label_2686
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2687
	.word	12
	.word	4
	.word	_Label_2688
	.word	16
	.word	4
	.word	_Label_2689
	.word	20
	.word	4
	.word	_Label_2690
	.word	24
	.word	4
	.word	_Label_2691
	.word	-16
	.word	4
	.word	_Label_2692
	.word	-20
	.word	4
	.word	_Label_2693
	.word	-24
	.word	4
	.word	_Label_2694
	.word	-28
	.word	4
	.word	_Label_2695
	.word	-32
	.word	4
	.word	_Label_2696
	.word	-36
	.word	4
	.word	_Label_2697
	.word	-40
	.word	4
	.word	_Label_2698
	.word	-44
	.word	4
	.word	_Label_2699
	.word	-48
	.word	4
	.word	_Label_2700
	.word	-52
	.word	4
	.word	_Label_2701
	.word	-56
	.word	4
	.word	_Label_2702
	.word	-60
	.word	4
	.word	_Label_2703
	.word	-64
	.word	4
	.word	_Label_2704
	.word	-68
	.word	4
	.word	_Label_2705
	.word	-72
	.word	4
	.word	_Label_2706
	.word	-76
	.word	4
	.word	_Label_2707
	.word	-80
	.word	4
	.word	_Label_2708
	.word	-84
	.word	4
	.word	_Label_2709
	.word	-88
	.word	4
	.word	_Label_2710
	.word	-92
	.word	4
	.word	_Label_2711
	.word	-96
	.word	4
	.word	_Label_2712
	.word	-100
	.word	4
	.word	_Label_2713
	.word	-104
	.word	4
	.word	_Label_2714
	.word	-9
	.word	1
	.word	_Label_2715
	.word	-10
	.word	1
	.word	_Label_2716
	.word	-108
	.word	4
	.word	_Label_2717
	.word	-112
	.word	4
	.word	_Label_2718
	.word	-116
	.word	4
	.word	_Label_2719
	.word	-120
	.word	4
	.word	_Label_2720
	.word	-124
	.word	4
	.word	_Label_2721
	.word	-128
	.word	4
	.word	0
_Label_2685:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchRead\0"
	.align
_Label_2686:
	.ascii	"Pself\0"
	.align
_Label_2687:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2688:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2689:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2690:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2691:
	.byte	'?'
	.ascii	"_temp_2684\0"
	.align
_Label_2692:
	.byte	'?'
	.ascii	"_temp_2683\0"
	.align
_Label_2693:
	.byte	'?'
	.ascii	"_temp_2682\0"
	.align
_Label_2694:
	.byte	'?'
	.ascii	"_temp_2681\0"
	.align
_Label_2695:
	.byte	'?'
	.ascii	"_temp_2680\0"
	.align
_Label_2696:
	.byte	'?'
	.ascii	"_temp_2679\0"
	.align
_Label_2697:
	.byte	'?'
	.ascii	"_temp_2678\0"
	.align
_Label_2698:
	.byte	'?'
	.ascii	"_temp_2677\0"
	.align
_Label_2699:
	.byte	'?'
	.ascii	"_temp_2676\0"
	.align
_Label_2700:
	.byte	'?'
	.ascii	"_temp_2675\0"
	.align
_Label_2701:
	.byte	'?'
	.ascii	"_temp_2674\0"
	.align
_Label_2702:
	.byte	'?'
	.ascii	"_temp_2673\0"
	.align
_Label_2703:
	.byte	'?'
	.ascii	"_temp_2672\0"
	.align
_Label_2704:
	.byte	'?'
	.ascii	"_temp_2671\0"
	.align
_Label_2705:
	.byte	'?'
	.ascii	"_temp_2670\0"
	.align
_Label_2706:
	.byte	'?'
	.ascii	"_temp_2664\0"
	.align
_Label_2707:
	.byte	'?'
	.ascii	"_temp_2663\0"
	.align
_Label_2708:
	.byte	'?'
	.ascii	"_temp_2662\0"
	.align
_Label_2709:
	.byte	'?'
	.ascii	"_temp_2661\0"
	.align
_Label_2710:
	.byte	'?'
	.ascii	"_temp_2660\0"
	.align
_Label_2711:
	.byte	'?'
	.ascii	"_temp_2659\0"
	.align
_Label_2712:
	.byte	'?'
	.ascii	"_temp_2656\0"
	.align
_Label_2713:
	.byte	'?'
	.ascii	"_temp_2655\0"
	.align
_Label_2714:
	.byte	'C'
	.ascii	"_temp_2654\0"
	.align
_Label_2715:
	.byte	'C'
	.ascii	"_temp_2651\0"
	.align
_Label_2716:
	.byte	'?'
	.ascii	"_temp_2646\0"
	.align
_Label_2717:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2718:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2719:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2720:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2721:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  METHOD SynchWrite  ===============
! 
_Method_P_Kernel_FileManager_8:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileManager_8,r1
	push	r1
	mov	36,r1
_Label_3171:
	push	r0
	sub	r1,1,r1
	bne	_Label_3171
	mov	2508,r13		! source line 2508
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2524,r13		! source line 2524
	mov	"\0\0SE",r10
!   _temp_2722 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-116]
!   Send message Lock
	load	[r14+-116],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! IF STATEMENT...
	mov	2525,r13		! source line 2525
	mov	"\0\0IF",r10
!   if open == 0 then goto _Label_2728		(int)
	load	[r14+12],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2728
!   _temp_2727 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-10]
	jmp	_Label_2729
_Label_2728:
!   _temp_2727 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-10]
_Label_2729:
!   if _temp_2727 then goto _Label_2726 else goto _Label_2723
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2723
	jmp	_Label_2726
_Label_2726:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2732 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-108]
!   Data Move: _temp_2731 = *_temp_2732  (sizeInBytes=4)
	load	[r14+-108],r1
	load	[r1],r1
	store	r1,[r14+-112]
!   if _temp_2731 == 0 then goto _Label_2733		(int)
	load	[r14+-112],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2733
!   _temp_2730 = 1		(1 byte)
	mov	1,r1
	storeb	r1,[r14+-9]
	jmp	_Label_2734
_Label_2733:
!   _temp_2730 = 0		(1 byte)
	mov	0,r1
	storeb	r1,[r14+-9]
_Label_2734:
!   if _temp_2730 then goto _Label_2725 else goto _Label_2723
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2723
	jmp	_Label_2725
_Label_2725:
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2737 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-96]
!   Data Move: _temp_2736 = *_temp_2737  (sizeInBytes=4)
	load	[r14+-96],r1
	load	[r1],r1
	store	r1,[r14+-100]
!   if intIsZero (_temp_2736) then goto _runtimeErrorNullPointer
	load	[r14+-100],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2738 = _temp_2736 + 20
	load	[r14+-100],r1
	add	r1,20,r1
	store	r1,[r14+-92]
!   Data Move: _temp_2735 = *_temp_2738  (sizeInBytes=4)
	load	[r14+-92],r1
	load	[r1],r1
	store	r1,[r14+-104]
!   if _temp_2735 >= 0 then goto _Label_2724		(int)
	load	[r14+-104],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bge	_Label_2724
!	jmp	_Label_2723
_Label_2723:
! THEN...
	mov	2526,r13		! source line 2526
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2739 = _StringConst_187
	set	_StringConst_187,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=8  value=_temp_2739  sizeInBytes=4
	load	[r14+-88],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2526,r13		! source line 2526
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2724:
! ASSIGNMENT STATEMENT...
	mov	2528,r13		! source line 2528
	mov	"\0\0AS",r10
!   if intIsZero (open) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2740 = open + 20
	load	[r14+12],r1
	add	r1,20,r1
	store	r1,[r14+-84]
!   Data Move: fcb = *_temp_2740  (sizeInBytes=4)
	load	[r14+-84],r1
	load	[r1],r1
	store	r1,[r14+-136]
! WHILE STATEMENT...
	mov	2529,r13		! source line 2529
	mov	"\0\0WH",r10
_Label_2741:
!   if numBytes <= 0 then goto _Label_2743		(int)
	load	[r14+24],r1
	mov	0,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2743
!	jmp	_Label_2742
_Label_2742:
	mov	2529,r13		! source line 2529
	mov	"\0\0WB",r10
! ASSIGNMENT STATEMENT...
	mov	2538,r13		! source line 2538
	mov	"\0\0AS",r10
!   sector = bytePos div 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
! ASSIGNMENT STATEMENT...
	mov	2539,r13		! source line 2539
	mov	"\0\0AS",r10
!   offset = bytePos rem 8192		(int)
	load	[r14+20],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
! IF STATEMENT...
	mov	2543,r13		! source line 2543
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2747 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-76]
!   Data Move: _temp_2746 = *_temp_2747  (sizeInBytes=4)
	load	[r14+-76],r1
	load	[r1],r1
	store	r1,[r14+-80]
!   if _temp_2746 == sector then goto _Label_2745		(int)
	load	[r14+-80],r1
	load	[r14+-120],r2
	cmp	r1,r2
	be	_Label_2745
!	jmp	_Label_2744
_Label_2744:
! THEN...
	mov	2545,r13		! source line 2545
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2545,r13		! source line 2545
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-72]
!   if intIsZero (_temp_2748) then goto _runtimeErrorNullPointer
	load	[r14+-72],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=open  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message Flush
	load	[r14+-72],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,24,r2
	call	r2
! END IF...
_Label_2745:
! ASSIGNMENT STATEMENT...
	mov	2547,r13		! source line 2547
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2750 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-64]
!   Data Move: _temp_2749 = *_temp_2750  (sizeInBytes=4)
	load	[r14+-64],r1
	load	[r1],r1
	store	r1,[r14+-68]
!   posInBuffer = _temp_2749 + offset		(int)
	load	[r14+-68],r1
	load	[r14+-124],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
! ASSIGNMENT STATEMENT...
	mov	2548,r13		! source line 2548
	mov	"\0\0AS",r10
!   _temp_2751 = 8192 - offset		(int)
	mov	8192,r1
	load	[r14+-124],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-60]
!   Prepare Argument: offset=8  value=numBytes  sizeInBytes=4
	load	[r14+24],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=_temp_2751  sizeInBytes=4
	load	[r14+-60],r1
	store	r1,[r15+4]
!   Call the function
	mov	2548,r13		! source line 2548
	mov	"\0\0CA",r10
	call	_P_System_Min
!   Retrieve Result: targetName=bytesToMove  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-132]
! IF STATEMENT...
	mov	2549,r13		! source line 2549
	mov	"\0\0IF",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2755 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-52]
!   Data Move: _temp_2754 = *_temp_2755  (sizeInBytes=4)
	load	[r14+-52],r1
	load	[r1],r1
	store	r1,[r14+-56]
!   if _temp_2754 != sector then goto _Label_2753		(int)
	load	[r14+-56],r1
	load	[r14+-120],r2
	cmp	r1,r2
	bne	_Label_2753
!	jmp	_Label_2752
_Label_2752:
	jmp	_Label_2756
_Label_2753:
! ELSE...
	mov	2551,r13		! source line 2551
	mov	"\0\0EL",r10
! IF STATEMENT...
	mov	2551,r13		! source line 2551
	mov	"\0\0IF",r10
!   if intIsZero (offset) then goto _Label_2759
	load	[r14+-124],r1
	cmp	r1,r0
	be	_Label_2759
	jmp	_Label_2758
_Label_2759:
!   if bytesToMove != 8192 then goto _Label_2758		(int)
	load	[r14+-132],r1
	mov	8192,r2
	cmp	r1,r2
	bne	_Label_2758
!	jmp	_Label_2757
_Label_2757:
	jmp	_Label_2760
_Label_2758:
! ELSE...
	mov	2555,r13		! source line 2555
	mov	"\0\0EL",r10
! SEND STATEMENT...
	mov	2555,r13		! source line 2555
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2763 = fcb + 20
	load	[r14+-136],r1
	add	r1,20,r1
	store	r1,[r14+-40]
!   Data Move: _temp_2762 = *_temp_2763  (sizeInBytes=4)
	load	[r14+-40],r1
	load	[r1],r1
	store	r1,[r14+-44]
!   _temp_2761 = sector + _temp_2762		(int)
	load	[r14+-120],r1
	load	[r14+-44],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-48]
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2765 = fcb + 28
	load	[r14+-136],r1
	add	r1,28,r1
	store	r1,[r14+-32]
!   Data Move: _temp_2764 = *_temp_2765  (sizeInBytes=4)
	load	[r14+-32],r1
	load	[r1],r1
	store	r1,[r14+-36]
!   _temp_2766 = &_P_Kernel_diskDriver
	set	_P_Kernel_diskDriver,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=12  value=_temp_2761  sizeInBytes=4
	load	[r14+-48],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=1  sizeInBytes=4
	mov	1,r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=_temp_2764  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+12]
!   Send message SynchReadSector
	load	[r14+-28],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! END IF...
_Label_2760:
! END IF...
_Label_2756:
! ASSIGNMENT STATEMENT...
	mov	2559,r13		! source line 2559
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2767 = fcb + 32
	load	[r14+-136],r1
	add	r1,32,r1
	store	r1,[r14+-24]
!   Data Move: *_temp_2767 = sector  (sizeInBytes=4)
	load	[r14+-120],r1
	load	[r14+-24],r2
	store	r1,[r2]
! ASSIGNMENT STATEMENT...
	mov	2560,r13		! source line 2560
	mov	"\0\0AS",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+-136],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2768 = fcb + 36
	load	[r14+-136],r1
	add	r1,36,r1
	store	r1,[r14+-20]
!   Data Move: *_temp_2768 = 1  (sizeInBytes=1)
	mov	1,r1
	load	[r14+-20],r2
	storeb	r1,[r2]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=posInBuffer  sizeInBytes=4
	load	[r14+-128],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=sourceAddr  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=bytesToMove  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+8]
!   Call the function
	mov	2564,r13		! source line 2564
	mov	"\0\0CE",r10
	call	MemoryCopy
! ASSIGNMENT STATEMENT...
	mov	2565,r13		! source line 2565
	mov	"\0\0AS",r10
!   sourceAddr = sourceAddr + bytesToMove		(int)
	load	[r14+16],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+16]
! ASSIGNMENT STATEMENT...
	mov	2566,r13		! source line 2566
	mov	"\0\0AS",r10
!   bytePos = bytePos + bytesToMove		(int)
	load	[r14+20],r1
	load	[r14+-132],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+20]
! ASSIGNMENT STATEMENT...
	mov	2567,r13		! source line 2567
	mov	"\0\0AS",r10
!   numBytes = numBytes - bytesToMove		(int)
	load	[r14+24],r1
	load	[r14+-132],r2
	sub	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+24]
! END WHILE...
	jmp	_Label_2741
_Label_2743:
! SEND STATEMENT...
	mov	2574,r13		! source line 2574
	mov	"\0\0SE",r10
!   _temp_2769 = &fileManagerLock
	load	[r14+8],r1
	add	r1,4,r1
	store	r1,[r14+-16]
!   Send message Unlock
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2576,r13		! source line 2576
	mov	"\0\0RE",r10
!   ReturnResult: 1  (sizeInBytes=1)
	mov	1,r1
	storeb	r1,[r14+8]
	add	r15,148,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileManager_8:
	.word	_sourceFileName
	.word	_Label_2770
	.word	20		! total size of parameters
	.word	144		! frame size = 144
	.word	_Label_2771
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2772
	.word	12
	.word	4
	.word	_Label_2773
	.word	16
	.word	4
	.word	_Label_2774
	.word	20
	.word	4
	.word	_Label_2775
	.word	24
	.word	4
	.word	_Label_2776
	.word	-16
	.word	4
	.word	_Label_2777
	.word	-20
	.word	4
	.word	_Label_2778
	.word	-24
	.word	4
	.word	_Label_2779
	.word	-28
	.word	4
	.word	_Label_2780
	.word	-32
	.word	4
	.word	_Label_2781
	.word	-36
	.word	4
	.word	_Label_2782
	.word	-40
	.word	4
	.word	_Label_2783
	.word	-44
	.word	4
	.word	_Label_2784
	.word	-48
	.word	4
	.word	_Label_2785
	.word	-52
	.word	4
	.word	_Label_2786
	.word	-56
	.word	4
	.word	_Label_2787
	.word	-60
	.word	4
	.word	_Label_2788
	.word	-64
	.word	4
	.word	_Label_2789
	.word	-68
	.word	4
	.word	_Label_2790
	.word	-72
	.word	4
	.word	_Label_2791
	.word	-76
	.word	4
	.word	_Label_2792
	.word	-80
	.word	4
	.word	_Label_2793
	.word	-84
	.word	4
	.word	_Label_2794
	.word	-88
	.word	4
	.word	_Label_2795
	.word	-92
	.word	4
	.word	_Label_2796
	.word	-96
	.word	4
	.word	_Label_2797
	.word	-100
	.word	4
	.word	_Label_2798
	.word	-104
	.word	4
	.word	_Label_2799
	.word	-108
	.word	4
	.word	_Label_2800
	.word	-112
	.word	4
	.word	_Label_2801
	.word	-9
	.word	1
	.word	_Label_2802
	.word	-10
	.word	1
	.word	_Label_2803
	.word	-116
	.word	4
	.word	_Label_2804
	.word	-120
	.word	4
	.word	_Label_2805
	.word	-124
	.word	4
	.word	_Label_2806
	.word	-128
	.word	4
	.word	_Label_2807
	.word	-132
	.word	4
	.word	_Label_2808
	.word	-136
	.word	4
	.word	0
_Label_2770:
	.ascii	"FileManager"
	.ascii	"::"
	.ascii	"SynchWrite\0"
	.align
_Label_2771:
	.ascii	"Pself\0"
	.align
_Label_2772:
	.byte	'P'
	.ascii	"open\0"
	.align
_Label_2773:
	.byte	'I'
	.ascii	"sourceAddr\0"
	.align
_Label_2774:
	.byte	'I'
	.ascii	"bytePos\0"
	.align
_Label_2775:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2776:
	.byte	'?'
	.ascii	"_temp_2769\0"
	.align
_Label_2777:
	.byte	'?'
	.ascii	"_temp_2768\0"
	.align
_Label_2778:
	.byte	'?'
	.ascii	"_temp_2767\0"
	.align
_Label_2779:
	.byte	'?'
	.ascii	"_temp_2766\0"
	.align
_Label_2780:
	.byte	'?'
	.ascii	"_temp_2765\0"
	.align
_Label_2781:
	.byte	'?'
	.ascii	"_temp_2764\0"
	.align
_Label_2782:
	.byte	'?'
	.ascii	"_temp_2763\0"
	.align
_Label_2783:
	.byte	'?'
	.ascii	"_temp_2762\0"
	.align
_Label_2784:
	.byte	'?'
	.ascii	"_temp_2761\0"
	.align
_Label_2785:
	.byte	'?'
	.ascii	"_temp_2755\0"
	.align
_Label_2786:
	.byte	'?'
	.ascii	"_temp_2754\0"
	.align
_Label_2787:
	.byte	'?'
	.ascii	"_temp_2751\0"
	.align
_Label_2788:
	.byte	'?'
	.ascii	"_temp_2750\0"
	.align
_Label_2789:
	.byte	'?'
	.ascii	"_temp_2749\0"
	.align
_Label_2790:
	.byte	'?'
	.ascii	"_temp_2748\0"
	.align
_Label_2791:
	.byte	'?'
	.ascii	"_temp_2747\0"
	.align
_Label_2792:
	.byte	'?'
	.ascii	"_temp_2746\0"
	.align
_Label_2793:
	.byte	'?'
	.ascii	"_temp_2740\0"
	.align
_Label_2794:
	.byte	'?'
	.ascii	"_temp_2739\0"
	.align
_Label_2795:
	.byte	'?'
	.ascii	"_temp_2738\0"
	.align
_Label_2796:
	.byte	'?'
	.ascii	"_temp_2737\0"
	.align
_Label_2797:
	.byte	'?'
	.ascii	"_temp_2736\0"
	.align
_Label_2798:
	.byte	'?'
	.ascii	"_temp_2735\0"
	.align
_Label_2799:
	.byte	'?'
	.ascii	"_temp_2732\0"
	.align
_Label_2800:
	.byte	'?'
	.ascii	"_temp_2731\0"
	.align
_Label_2801:
	.byte	'C'
	.ascii	"_temp_2730\0"
	.align
_Label_2802:
	.byte	'C'
	.ascii	"_temp_2727\0"
	.align
_Label_2803:
	.byte	'?'
	.ascii	"_temp_2722\0"
	.align
_Label_2804:
	.byte	'I'
	.ascii	"sector\0"
	.align
_Label_2805:
	.byte	'I'
	.ascii	"offset\0"
	.align
_Label_2806:
	.byte	'I'
	.ascii	"posInBuffer\0"
	.align
_Label_2807:
	.byte	'I'
	.ascii	"bytesToMove\0"
	.align
_Label_2808:
	.byte	'P'
	.ascii	"fcb\0"
	.align
! 
! ===============  CLASS FileControlBlock  ===============
! 
! Dispatch Table:
! 
_P_Kernel_FileControlBlock:
	.word	_Label_2809
	jmp	_Method_P_Kernel_FileControlBlock_1	! 4:	Init
	jmp	_Method_P_Kernel_FileControlBlock_2	! 8:	Print
	.word	0
! 
! Class descriptor:
! 
_Label_2809:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2810
	.word	_sourceFileName
	.word	373		! line number
	.word	40		! size of instances, in bytes
	.word	_P_Kernel_FileControlBlock
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2810:
	.ascii	"FileControlBlock\0"
	.align
! 
! ===============  METHOD Init  ===============
! 
_Method_P_Kernel_FileControlBlock_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1,r1
	push	r1
	mov	2,r1
_Label_3172:
	push	r0
	sub	r1,1,r1
	bne	_Label_3172
	mov	2612,r13		! source line 2612
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! ASSIGNMENT STATEMENT...
	mov	2613,r13		! source line 2613
	mov	"\0\0AS",r10
!   numberOfUsers = 0		(4 bytes)
	mov	0,r1
	load	[r14+8],r2
	store	r1,[r2+16]
! ASSIGNMENT STATEMENT...
	mov	2614,r13		! source line 2614
	mov	"\0\0AS",r10
	mov	2614,r13		! source line 2614
	mov	"\0\0SE",r10
!   _temp_2811 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-12]
!   Send message GetAFrame
	load	[r14+-12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bufferPtr  sizeInBytes=4
	load	[r15],r1
	load	[r14+8],r2
	store	r1,[r2+28]
! ASSIGNMENT STATEMENT...
	mov	2615,r13		! source line 2615
	mov	"\0\0AS",r10
!   relativeSectorInBuffer = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+32]
! ASSIGNMENT STATEMENT...
	mov	2616,r13		! source line 2616
	mov	"\0\0AS",r10
!   bufferIsDirty = 0		(1 byte)
	mov	0,r1
	load	[r14+8],r2
	storeb	r1,[r2+36]
! ASSIGNMENT STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0AS",r10
!   startingSectorOfFile = -1		(4 bytes)
	mov	-1,r1
	load	[r14+8],r2
	store	r1,[r2+20]
! RETURN STATEMENT...
	mov	2617,r13		! source line 2617
	mov	"\0\0RE",r10
	add	r15,12,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_1:
	.word	_sourceFileName
	.word	_Label_2812
	.word	4		! total size of parameters
	.word	8		! frame size = 8
	.word	_Label_2813
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2814
	.word	-12
	.word	4
	.word	0
_Label_2812:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Init\0"
	.align
_Label_2813:
	.ascii	"Pself\0"
	.align
_Label_2814:
	.byte	'?'
	.ascii	"_temp_2811\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_FileControlBlock_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2,r1
	push	r1
	mov	7,r1
_Label_3173:
	push	r0
	sub	r1,1,r1
	bne	_Label_3173
	mov	2622,r13		! source line 2622
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2815 = _StringConst_188
	set	_StringConst_188,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=8  value=_temp_2815  sizeInBytes=4
	load	[r14+-32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2623,r13		! source line 2623
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=fcbID  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2624,r13		! source line 2624
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2816 = _StringConst_189
	set	_StringConst_189,r1
	store	r1,[r14+-28]
!   Prepare Argument: offset=8  value=_temp_2816  sizeInBytes=4
	load	[r14+-28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2625,r13		! source line 2625
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=numberOfUsers  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2626,r13		! source line 2626
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2817 = _StringConst_190
	set	_StringConst_190,r1
	store	r1,[r14+-24]
!   Prepare Argument: offset=8  value=_temp_2817  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2627,r13		! source line 2627
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=startingSectorOfFile  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2628,r13		! source line 2628
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2818 = _StringConst_191
	set	_StringConst_191,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2818  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2629,r13		! source line 2629
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=sizeOfFileInBytes  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+24],r1
	store	r1,[r15+0]
!   Call the function
	mov	2630,r13		! source line 2630
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2819 = _StringConst_192
	set	_StringConst_192,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2819  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2631,r13		! source line 2631
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=bufferPtr  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+28],r1
	store	r1,[r15+0]
!   Call the function
	mov	2632,r13		! source line 2632
	mov	"\0\0CE",r10
	call	printHex
! CALL STATEMENT...
!   _temp_2820 = _StringConst_193
	set	_StringConst_193,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2820  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2633,r13		! source line 2633
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=relativeSectorInBuffer  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+32],r1
	store	r1,[r15+0]
!   Call the function
	mov	2634,r13		! source line 2634
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   Call the function
	mov	2635,r13		! source line 2635
	mov	"\0\0CA",r10
	call	_P_System_nl
! RETURN STATEMENT...
	mov	2635,r13		! source line 2635
	mov	"\0\0RE",r10
	add	r15,32,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_FileControlBlock_2:
	.word	_sourceFileName
	.word	_Label_2821
	.word	4		! total size of parameters
	.word	28		! frame size = 28
	.word	_Label_2822
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2823
	.word	-12
	.word	4
	.word	_Label_2824
	.word	-16
	.word	4
	.word	_Label_2825
	.word	-20
	.word	4
	.word	_Label_2826
	.word	-24
	.word	4
	.word	_Label_2827
	.word	-28
	.word	4
	.word	_Label_2828
	.word	-32
	.word	4
	.word	0
_Label_2821:
	.ascii	"FileControlBlock"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2822:
	.ascii	"Pself\0"
	.align
_Label_2823:
	.byte	'?'
	.ascii	"_temp_2820\0"
	.align
_Label_2824:
	.byte	'?'
	.ascii	"_temp_2819\0"
	.align
_Label_2825:
	.byte	'?'
	.ascii	"_temp_2818\0"
	.align
_Label_2826:
	.byte	'?'
	.ascii	"_temp_2817\0"
	.align
_Label_2827:
	.byte	'?'
	.ascii	"_temp_2816\0"
	.align
_Label_2828:
	.byte	'?'
	.ascii	"_temp_2815\0"
	.align
! 
! ===============  CLASS OpenFile  ===============
! 
! Dispatch Table:
! 
_P_Kernel_OpenFile:
	.word	_Label_2829
	jmp	_Method_P_Kernel_OpenFile_1	! 4:	Print
	jmp	_Method_P_Kernel_OpenFile_2	! 8:	ReadBytes
	jmp	_Method_P_Kernel_OpenFile_3	! 12:	ReadInt
	jmp	_Method_P_Kernel_OpenFile_4	! 16:	LoadExecutable
	.word	0
! 
! Class descriptor:
! 
_Label_2829:
	.word	1129070931		! Magic number 0x434c4153 == 'CLAS'
	.word	_Label_2830
	.word	_sourceFileName
	.word	390		! line number
	.word	28		! size of instances, in bytes
	.word	_P_Kernel_OpenFile
	.word	_P_List_Listable
	.word	_P_System_Object
	.word	0
_Label_2830:
	.ascii	"OpenFile\0"
	.align
! 
! ===============  METHOD Print  ===============
! 
_Method_P_Kernel_OpenFile_1:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_1,r1
	push	r1
	mov	4,r1
_Label_3174:
	push	r0
	sub	r1,1,r1
	bne	_Label_3174
	mov	2646,r13		! source line 2646
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! CALL STATEMENT...
!   _temp_2831 = _StringConst_194
	set	_StringConst_194,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2831  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2647,r13		! source line 2647
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=currentPos  sizeInBytes=4
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2648,r13		! source line 2648
	mov	"\0\0CE",r10
	call	printInt
! CALL STATEMENT...
!   _temp_2832 = _StringConst_195
	set	_StringConst_195,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2832  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   Call the function
	mov	2649,r13		! source line 2649
	mov	"\0\0CE",r10
	call	print
! IF STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0IF",r10
!   if fcb == 0 then goto _Label_2834		(int)
	load	[r14+8],r1
	load	[r1+20],r1
	mov	0,r2
	cmp	r1,r2
	be	_Label_2834
!	jmp	_Label_2833
_Label_2833:
! THEN...
	mov	2651,r13		! source line 2651
	mov	"\0\0TN",r10
! SEND STATEMENT...
	mov	2651,r13		! source line 2651
	mov	"\0\0SE",r10
!   if intIsZero (fcb) then goto _runtimeErrorNullPointer
	load	[r14+8],r1
	load	[r1+20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message Print
	load	[r14+8],r1
	load	[r1+20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
	jmp	_Label_2835
_Label_2834:
! ELSE...
	mov	2653,r13		! source line 2653
	mov	"\0\0EL",r10
! CALL STATEMENT...
!   _temp_2836 = _StringConst_196
	set	_StringConst_196,r1
	store	r1,[r14+-12]
!   Prepare Argument: offset=8  value=_temp_2836  sizeInBytes=4
	load	[r14+-12],r1
	store	r1,[r15+0]
!   Call the function
	mov	2653,r13		! source line 2653
	mov	"\0\0CE",r10
	call	print
! END IF...
_Label_2835:
! RETURN STATEMENT...
	mov	2650,r13		! source line 2650
	mov	"\0\0RE",r10
	add	r15,20,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_1:
	.word	_sourceFileName
	.word	_Label_2837
	.word	4		! total size of parameters
	.word	16		! frame size = 16
	.word	_Label_2838
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2839
	.word	-12
	.word	4
	.word	_Label_2840
	.word	-16
	.word	4
	.word	_Label_2841
	.word	-20
	.word	4
	.word	0
_Label_2837:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"Print\0"
	.align
_Label_2838:
	.ascii	"Pself\0"
	.align
_Label_2839:
	.byte	'?'
	.ascii	"_temp_2836\0"
	.align
_Label_2840:
	.byte	'?'
	.ascii	"_temp_2832\0"
	.align
_Label_2841:
	.byte	'?'
	.ascii	"_temp_2831\0"
	.align
! 
! ===============  METHOD ReadBytes  ===============
! 
_Method_P_Kernel_OpenFile_2:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_2,r1
	push	r1
	mov	13,r1
_Label_3175:
	push	r0
	sub	r1,1,r1
	bne	_Label_3175
	mov	2659,r13		! source line 2659
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! SEND STATEMENT...
	mov	2669,r13		! source line 2669
	mov	"\0\0SE",r10
!   _temp_2842 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-36]
!   _temp_2843 = _temp_2842 + 4
	load	[r14+-36],r1
	add	r1,4,r1
	store	r1,[r14+-32]
!   Send message Lock
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2670,r13		! source line 2670
	mov	"\0\0AS",r10
!   pos = currentPos		(4 bytes)
	load	[r14+8],r1
	load	[r1+16],r1
	store	r1,[r14+-40]
! ASSIGNMENT STATEMENT...
	mov	2671,r13		! source line 2671
	mov	"\0\0AS",r10
!   currentPos = currentPos + numBytes		(int)
	load	[r14+8],r1
	load	[r1+16],r1
	load	[r14+16],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	load	[r14+8],r2
	store	r1,[r2+16]
! SEND STATEMENT...
	mov	2672,r13		! source line 2672
	mov	"\0\0SE",r10
!   _temp_2844 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-28]
!   _temp_2845 = _temp_2844 + 4
	load	[r14+-28],r1
	add	r1,4,r1
	store	r1,[r14+-24]
!   Send message Unlock
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
! RETURN STATEMENT...
	mov	2673,r13		! source line 2673
	mov	"\0\0RE",r10
	mov	2673,r13		! source line 2673
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-20]
!   _temp_2848 = &_P_Kernel_fileManager
	set	_P_Kernel_fileManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=_temp_2847  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=targetAddr  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+8]
!   Prepare Argument: offset=20  value=pos  sizeInBytes=4
	load	[r14+-40],r1
	store	r1,[r15+12]
!   Prepare Argument: offset=24  value=numBytes  sizeInBytes=4
	load	[r14+16],r1
	store	r1,[r15+16]
!   Send message SynchRead
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,28,r2
	call	r2
!   Retrieve Result: targetName=_temp_2846  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   ReturnResult: _temp_2846  (sizeInBytes=1)
	loadb	[r14+-9],r1
	storeb	r1,[r14+8]
	add	r15,56,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_2:
	.word	_sourceFileName
	.word	_Label_2849
	.word	12		! total size of parameters
	.word	52		! frame size = 52
	.word	_Label_2850
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2851
	.word	12
	.word	4
	.word	_Label_2852
	.word	16
	.word	4
	.word	_Label_2853
	.word	-16
	.word	4
	.word	_Label_2854
	.word	-20
	.word	4
	.word	_Label_2855
	.word	-9
	.word	1
	.word	_Label_2856
	.word	-24
	.word	4
	.word	_Label_2857
	.word	-28
	.word	4
	.word	_Label_2858
	.word	-32
	.word	4
	.word	_Label_2859
	.word	-36
	.word	4
	.word	_Label_2860
	.word	-40
	.word	4
	.word	0
_Label_2849:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadBytes\0"
	.align
_Label_2850:
	.ascii	"Pself\0"
	.align
_Label_2851:
	.byte	'I'
	.ascii	"targetAddr\0"
	.align
_Label_2852:
	.byte	'I'
	.ascii	"numBytes\0"
	.align
_Label_2853:
	.byte	'?'
	.ascii	"_temp_2848\0"
	.align
_Label_2854:
	.byte	'?'
	.ascii	"_temp_2847\0"
	.align
_Label_2855:
	.byte	'C'
	.ascii	"_temp_2846\0"
	.align
_Label_2856:
	.byte	'?'
	.ascii	"_temp_2845\0"
	.align
_Label_2857:
	.byte	'?'
	.ascii	"_temp_2844\0"
	.align
_Label_2858:
	.byte	'?'
	.ascii	"_temp_2843\0"
	.align
_Label_2859:
	.byte	'?'
	.ascii	"_temp_2842\0"
	.align
_Label_2860:
	.byte	'I'
	.ascii	"pos\0"
	.align
! 
! ===============  METHOD ReadInt  ===============
! 
_Method_P_Kernel_OpenFile_3:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_3,r1
	push	r1
	mov	8,r1
_Label_3176:
	push	r0
	sub	r1,1,r1
	bne	_Label_3176
	mov	2678,r13		! source line 2678
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2683,r13		! source line 2683
	mov	"\0\0IF",r10
	mov	2683,r13		! source line 2683
	mov	"\0\0SE",r10
!   _temp_2864 = &i
	add	r14,-28,r1
	store	r1,[r14+-24]
	load	[r14+8],r1
	store	r1,[r14+-20]
!   if intIsZero (_temp_2865) then goto _runtimeErrorNullPointer
	load	[r14+-20],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=_temp_2864  sizeInBytes=4
	load	[r14+-24],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=4  sizeInBytes=4
	mov	4,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-20],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2863  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2863 then goto _Label_2862 else goto _Label_2861
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2861
	jmp	_Label_2862
_Label_2861:
! THEN...
	mov	2684,r13		! source line 2684
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2866 = _StringConst_197
	set	_StringConst_197,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=8  value=_temp_2866  sizeInBytes=4
	load	[r14+-16],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2684,r13		! source line 2684
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2862:
! RETURN STATEMENT...
	mov	2686,r13		! source line 2686
	mov	"\0\0RE",r10
!   ReturnResult: i  (sizeInBytes=4)
	load	[r14+-28],r1
	store	r1,[r14+8]
	add	r15,36,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_3:
	.word	_sourceFileName
	.word	_Label_2867
	.word	4		! total size of parameters
	.word	32		! frame size = 32
	.word	_Label_2868
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2869
	.word	-16
	.word	4
	.word	_Label_2870
	.word	-20
	.word	4
	.word	_Label_2871
	.word	-24
	.word	4
	.word	_Label_2872
	.word	-9
	.word	1
	.word	_Label_2873
	.word	-28
	.word	4
	.word	0
_Label_2867:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"ReadInt\0"
	.align
_Label_2868:
	.ascii	"Pself\0"
	.align
_Label_2869:
	.byte	'?'
	.ascii	"_temp_2866\0"
	.align
_Label_2870:
	.byte	'?'
	.ascii	"_temp_2865\0"
	.align
_Label_2871:
	.byte	'?'
	.ascii	"_temp_2864\0"
	.align
_Label_2872:
	.byte	'C'
	.ascii	"_temp_2863\0"
	.align
_Label_2873:
	.byte	'I'
	.ascii	"i\0"
	.align
! 
! ===============  METHOD LoadExecutable  ===============
! 
_Method_P_Kernel_OpenFile_4:
	push	r14
	mov	r15,r14
	push	r13
	set	_RoutineDescriptor__Method_P_Kernel_OpenFile_4,r1
	push	r1
	mov	68,r1
_Label_3177:
	push	r0
	sub	r1,1,r1
	bne	_Label_3177
	mov	2691,r13		! source line 2691
	mov	"\0\0ME",r10
! VARIABLE INITIALIZATION...
! IF STATEMENT...
	mov	2717,r13		! source line 2717
	mov	"\0\0IF",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   _temp_2877 = addrSpace + 4
	load	[r14+12],r1
	add	r1,4,r1
	store	r1,[r14+-216]
!   Data Move: _temp_2876 = *_temp_2877  (sizeInBytes=4)
	load	[r14+-216],r1
	load	[r1],r1
	store	r1,[r14+-220]
!   if intIsZero (_temp_2876) then goto _Label_2875
	load	[r14+-220],r1
	cmp	r1,r0
	be	_Label_2875
!	jmp	_Label_2874
_Label_2874:
! THEN...
	mov	2718,r13		! source line 2718
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2878 = _StringConst_198
	set	_StringConst_198,r1
	store	r1,[r14+-212]
!   Prepare Argument: offset=8  value=_temp_2878  sizeInBytes=4
	load	[r14+-212],r1
	store	r1,[r15+0]
!   call indirectly through variable _P_System_FatalError
	mov	2718,r13		! source line 2718
	mov	"\0\0CF",r10
	set	_P_System_FatalError,r1
	load	[r1],r1
	cmp	r1,0
	be	_runtimeErrorNullPointerDuringCall
	call	r1
! END IF...
_Label_2875:
! IF STATEMENT...
	mov	2722,r13		! source line 2722
	mov	"\0\0IF",r10
	mov	2722,r13		! source line 2722
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-204]
!   if intIsZero (_temp_2882) then goto _runtimeErrorNullPointer
	load	[r14+-204],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-204],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2881  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-208]
!   if _temp_2881 == 1112300152 then goto _Label_2880		(int)
	load	[r14+-208],r1
	set	1112300152,r2
	cmp	r1,r2
	be	_Label_2880
!	jmp	_Label_2879
_Label_2879:
! THEN...
	mov	2723,r13		! source line 2723
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2883 = _StringConst_199
	set	_StringConst_199,r1
	store	r1,[r14+-200]
!   Prepare Argument: offset=8  value=_temp_2883  sizeInBytes=4
	load	[r14+-200],r1
	store	r1,[r15+0]
!   Call the function
	mov	2723,r13		! source line 2723
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2724,r13		! source line 2724
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2880:
! ASSIGNMENT STATEMENT...
	mov	2728,r13		! source line 2728
	mov	"\0\0AS",r10
	mov	2728,r13		! source line 2728
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-196]
!   if intIsZero (_temp_2884) then goto _runtimeErrorNullPointer
	load	[r14+-196],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-196],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-232]
! ASSIGNMENT STATEMENT...
	mov	2729,r13		! source line 2729
	mov	"\0\0AS",r10
	mov	2729,r13		! source line 2729
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-192]
!   if intIsZero (_temp_2885) then goto _runtimeErrorNullPointer
	load	[r14+-192],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-192],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-236]
! ASSIGNMENT STATEMENT...
	mov	2730,r13		! source line 2730
	mov	"\0\0AS",r10
	mov	2730,r13		! source line 2730
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-188]
!   if intIsZero (_temp_2886) then goto _runtimeErrorNullPointer
	load	[r14+-188],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-188],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssSize  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-240]
! ASSIGNMENT STATEMENT...
	mov	2731,r13		! source line 2731
	mov	"\0\0AS",r10
	mov	2731,r13		! source line 2731
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-184]
!   if intIsZero (_temp_2887) then goto _runtimeErrorNullPointer
	load	[r14+-184],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-184],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=textStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-244]
! ASSIGNMENT STATEMENT...
	mov	2732,r13		! source line 2732
	mov	"\0\0AS",r10
	mov	2732,r13		! source line 2732
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-180]
!   if intIsZero (_temp_2888) then goto _runtimeErrorNullPointer
	load	[r14+-180],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-180],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=dataStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-248]
! ASSIGNMENT STATEMENT...
	mov	2733,r13		! source line 2733
	mov	"\0\0AS",r10
	mov	2733,r13		! source line 2733
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-176]
!   if intIsZero (_temp_2889) then goto _runtimeErrorNullPointer
	load	[r14+-176],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-176],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=bssStart  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-252]
! IF STATEMENT...
	mov	2736,r13		! source line 2736
	mov	"\0\0IF",r10
!   _temp_2892 = textSize rem 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-172]
!   if intIsZero (_temp_2892) then goto _Label_2891
	load	[r14+-172],r1
	cmp	r1,r0
	be	_Label_2891
!	jmp	_Label_2890
_Label_2890:
! THEN...
	mov	2737,r13		! source line 2737
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2893 = _StringConst_200
	set	_StringConst_200,r1
	store	r1,[r14+-168]
!   Prepare Argument: offset=8  value=_temp_2893  sizeInBytes=4
	load	[r14+-168],r1
	store	r1,[r15+0]
!   Call the function
	mov	2737,r13		! source line 2737
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2738,r13		! source line 2738
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2891:
! ASSIGNMENT STATEMENT...
	mov	2740,r13		! source line 2740
	mov	"\0\0AS",r10
!   textSizeInPages = textSize div 8192		(int)
	load	[r14+-232],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-260]
! IF STATEMENT...
	mov	2744,r13		! source line 2744
	mov	"\0\0IF",r10
!   if intIsZero (textStart) then goto _Label_2895
	load	[r14+-244],r1
	cmp	r1,r0
	be	_Label_2895
!	jmp	_Label_2894
_Label_2894:
! THEN...
	mov	2745,r13		! source line 2745
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2896 = _StringConst_201
	set	_StringConst_201,r1
	store	r1,[r14+-164]
!   Prepare Argument: offset=8  value=_temp_2896  sizeInBytes=4
	load	[r14+-164],r1
	store	r1,[r15+0]
!   Call the function
	mov	2745,r13		! source line 2745
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2746,r13		! source line 2746
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2895:
! IF STATEMENT...
	mov	2750,r13		! source line 2750
	mov	"\0\0IF",r10
!   _temp_2899 = dataSize rem 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-160]
!   if intIsZero (_temp_2899) then goto _Label_2898
	load	[r14+-160],r1
	cmp	r1,r0
	be	_Label_2898
!	jmp	_Label_2897
_Label_2897:
! THEN...
	mov	2751,r13		! source line 2751
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2900 = _StringConst_202
	set	_StringConst_202,r1
	store	r1,[r14+-156]
!   Prepare Argument: offset=8  value=_temp_2900  sizeInBytes=4
	load	[r14+-156],r1
	store	r1,[r15+0]
!   Call the function
	mov	2751,r13		! source line 2751
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2752,r13		! source line 2752
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2898:
! IF STATEMENT...
	mov	2754,r13		! source line 2754
	mov	"\0\0IF",r10
!   _temp_2903 = textStart + textSize		(int)
	load	[r14+-244],r1
	load	[r14+-232],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-152]
!   if dataStart == _temp_2903 then goto _Label_2902		(int)
	load	[r14+-248],r1
	load	[r14+-152],r2
	cmp	r1,r2
	be	_Label_2902
!	jmp	_Label_2901
_Label_2901:
! THEN...
	mov	2755,r13		! source line 2755
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2904 = _StringConst_203
	set	_StringConst_203,r1
	store	r1,[r14+-148]
!   Prepare Argument: offset=8  value=_temp_2904  sizeInBytes=4
	load	[r14+-148],r1
	store	r1,[r15+0]
!   Call the function
	mov	2755,r13		! source line 2755
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2756,r13		! source line 2756
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2902:
! ASSIGNMENT STATEMENT...
	mov	2758,r13		! source line 2758
	mov	"\0\0AS",r10
!   dataSizeInPages = dataSize div 8192		(int)
	load	[r14+-236],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-264]
! IF STATEMENT...
	mov	2761,r13		! source line 2761
	mov	"\0\0IF",r10
!   _temp_2907 = bssSize rem 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	rem	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-144]
!   if intIsZero (_temp_2907) then goto _Label_2906
	load	[r14+-144],r1
	cmp	r1,r0
	be	_Label_2906
!	jmp	_Label_2905
_Label_2905:
! THEN...
	mov	2762,r13		! source line 2762
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2908 = _StringConst_204
	set	_StringConst_204,r1
	store	r1,[r14+-140]
!   Prepare Argument: offset=8  value=_temp_2908  sizeInBytes=4
	load	[r14+-140],r1
	store	r1,[r15+0]
!   Call the function
	mov	2762,r13		! source line 2762
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2763,r13		! source line 2763
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2906:
! IF STATEMENT...
	mov	2765,r13		! source line 2765
	mov	"\0\0IF",r10
!   _temp_2911 = dataStart + dataSize		(int)
	load	[r14+-248],r1
	load	[r14+-236],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-136]
!   if bssStart == _temp_2911 then goto _Label_2910		(int)
	load	[r14+-252],r1
	load	[r14+-136],r2
	cmp	r1,r2
	be	_Label_2910
!	jmp	_Label_2909
_Label_2909:
! THEN...
	mov	2766,r13		! source line 2766
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2912 = _StringConst_205
	set	_StringConst_205,r1
	store	r1,[r14+-132]
!   Prepare Argument: offset=8  value=_temp_2912  sizeInBytes=4
	load	[r14+-132],r1
	store	r1,[r15+0]
!   Call the function
	mov	2766,r13		! source line 2766
	mov	"\0\0CE",r10
	call	print
! RETURN STATEMENT...
	mov	2767,r13		! source line 2767
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2910:
! ASSIGNMENT STATEMENT...
	mov	2769,r13		! source line 2769
	mov	"\0\0AS",r10
!   bssSizeInPages = bssSize div 8192		(int)
	load	[r14+-240],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-268]
! ASSIGNMENT STATEMENT...
	mov	2772,r13		! source line 2772
	mov	"\0\0AS",r10
!   _temp_2915 = textSizeInPages + dataSizeInPages		(int)
	load	[r14+-260],r1
	load	[r14+-264],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-120]
!   _temp_2914 = _temp_2915 + bssSizeInPages		(int)
	load	[r14+-120],r1
	load	[r14+-268],r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-124]
!   _temp_2913 = _temp_2914 + 1		(int)
	load	[r14+-124],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-128]
!   i = _temp_2913 + 0		(int)
	load	[r14+-128],r1
	mov	0,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
! IF STATEMENT...
	mov	2787,r13		! source line 2787
	mov	"\0\0IF",r10
!   if i <= 20 then goto _Label_2917		(int)
	load	[r14+-256],r1
	mov	20,r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	ble	_Label_2917
!	jmp	_Label_2916
_Label_2916:
! THEN...
	mov	2788,r13		! source line 2788
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2918 = _StringConst_206
	set	_StringConst_206,r1
	store	r1,[r14+-116]
!   Prepare Argument: offset=8  value=_temp_2918  sizeInBytes=4
	load	[r14+-116],r1
	store	r1,[r15+0]
!   Call the function
	mov	2788,r13		! source line 2788
	mov	"\0\0CE",r10
	call	print
! CALL STATEMENT...
!   _temp_2919 = _StringConst_207
	set	_StringConst_207,r1
	store	r1,[r14+-112]
!   Prepare Argument: offset=8  value=_temp_2919  sizeInBytes=4
	load	[r14+-112],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+4]
!   Call the function
	mov	2789,r13		! source line 2789
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! CALL STATEMENT...
!   _temp_2920 = _StringConst_208
	set	_StringConst_208,r1
	store	r1,[r14+-108]
!   Prepare Argument: offset=8  value=_temp_2920  sizeInBytes=4
	load	[r14+-108],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=20  sizeInBytes=4
	mov	20,r1
	store	r1,[r15+4]
!   Call the function
	mov	2790,r13		! source line 2790
	mov	"\0\0CA",r10
	call	_P_System_printIntVar
! RETURN STATEMENT...
	mov	2791,r13		! source line 2791
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2917:
! SEND STATEMENT...
	mov	2793,r13		! source line 2793
	mov	"\0\0SE",r10
!   _temp_2921 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-104]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=i  sizeInBytes=4
	load	[r14+-256],r1
	store	r1,[r15+8]
!   Send message GetNewFrames
	load	[r14+-104],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,16,r2
	call	r2
! IF STATEMENT...
	mov	2799,r13		! source line 2799
	mov	"\0\0IF",r10
	mov	2799,r13		! source line 2799
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-96]
!   if intIsZero (_temp_2925) then goto _runtimeErrorNullPointer
	load	[r14+-96],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-96],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2924  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-100]
!   if _temp_2924 == 707406378 then goto _Label_2923		(int)
	load	[r14+-100],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2923
!	jmp	_Label_2922
_Label_2922:
! THEN...
	mov	2800,r13		! source line 2800
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2926 = _StringConst_209
	set	_StringConst_209,r1
	store	r1,[r14+-92]
!   Prepare Argument: offset=8  value=_temp_2926  sizeInBytes=4
	load	[r14+-92],r1
	store	r1,[r15+0]
!   Call the function
	mov	2800,r13		! source line 2800
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2801,r13		! source line 2801
	mov	"\0\0SE",r10
!   _temp_2927 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-88]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-88],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2802,r13		! source line 2802
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2923:
! ASSIGNMENT STATEMENT...
	mov	2806,r13		! source line 2806
	mov	"\0\0AS",r10
!   nextVirtPage = textStart div 8192		(int)
	load	[r14+-244],r1
	mov	8192,r2
	cmp	r2,0
	be	_runtimeErrorZeroDivide
	div	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
! FOR STATEMENT...
	mov	2807,r13		! source line 2807
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2932 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-84]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2933 = textSizeInPages		(4 bytes)
	load	[r14+-260],r1
	store	r1,[r14+-80]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2932  (sizeInBytes=4)
	load	[r14+-84],r1
	store	r1,[r14+-256]
_Label_2928:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2933 then goto _Label_2931		
	load	[r14+-256],r1
	load	[r14+-80],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2931
_Label_2929:
	mov	2807,r13		! source line 2807
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2808,r13		! source line 2808
	mov	"\0\0AS",r10
	mov	2808,r13		! source line 2808
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2811,r13		! source line 2811
	mov	"\0\0IF",r10
	mov	2811,r13		! source line 2811
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-76]
!   if intIsZero (_temp_2937) then goto _runtimeErrorNullPointer
	load	[r14+-76],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-76],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2936  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-10]
!   if _temp_2936 then goto _Label_2935 else goto _Label_2934
	loadb	[r14+-10],r1
	cmp	r1,0
	be	_Label_2934
	jmp	_Label_2935
_Label_2934:
! THEN...
	mov	2812,r13		! source line 2812
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2938 = _StringConst_210
	set	_StringConst_210,r1
	store	r1,[r14+-72]
!   Prepare Argument: offset=8  value=_temp_2938  sizeInBytes=4
	load	[r14+-72],r1
	store	r1,[r15+0]
!   Call the function
	mov	2812,r13		! source line 2812
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2813,r13		! source line 2813
	mov	"\0\0SE",r10
!   _temp_2939 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-68]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-68],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2814,r13		! source line 2814
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2935:
! SEND STATEMENT...
	mov	2816,r13		! source line 2816
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ClearWritable
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,64,r2
	call	r2
! ASSIGNMENT STATEMENT...
	mov	2817,r13		! source line 2817
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2930:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2928
! END FOR
_Label_2931:
! IF STATEMENT...
	mov	2821,r13		! source line 2821
	mov	"\0\0IF",r10
	mov	2821,r13		! source line 2821
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-60]
!   if intIsZero (_temp_2943) then goto _runtimeErrorNullPointer
	load	[r14+-60],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-60],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2942  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-64]
!   if _temp_2942 == 707406378 then goto _Label_2941		(int)
	load	[r14+-64],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2941
!	jmp	_Label_2940
_Label_2940:
! THEN...
	mov	2822,r13		! source line 2822
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2944 = _StringConst_211
	set	_StringConst_211,r1
	store	r1,[r14+-56]
!   Prepare Argument: offset=8  value=_temp_2944  sizeInBytes=4
	load	[r14+-56],r1
	store	r1,[r15+0]
!   Call the function
	mov	2822,r13		! source line 2822
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2823,r13		! source line 2823
	mov	"\0\0SE",r10
!   _temp_2945 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-52]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-52],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2824,r13		! source line 2824
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2941:
! FOR STATEMENT...
	mov	2828,r13		! source line 2828
	mov	"\0\0FO",r10
!   Calculate and save the FOR-LOOP starting value
!   _temp_2950 = 1		(4 bytes)
	mov	1,r1
	store	r1,[r14+-48]
!   Calculate and save the FOR-LOOP ending value
!   _temp_2951 = dataSizeInPages		(4 bytes)
	load	[r14+-264],r1
	store	r1,[r14+-44]
!   Initialize FOR-LOOP index variable
!   Data Move: i = _temp_2950  (sizeInBytes=4)
	load	[r14+-48],r1
	store	r1,[r14+-256]
_Label_2946:
!   Perform the FOR-LOOP termination test
!   if i > _temp_2951 then goto _Label_2949		
	load	[r14+-256],r1
	load	[r14+-44],r2
	cmp	r1,r2
	bvs	_runtimeErrorOverflow
	bg	_Label_2949
_Label_2947:
	mov	2828,r13		! source line 2828
	mov	"\0\0FB",r10
! ASSIGNMENT STATEMENT...
	mov	2829,r13		! source line 2829
	mov	"\0\0AS",r10
	mov	2829,r13		! source line 2829
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! IF STATEMENT...
	mov	2832,r13		! source line 2832
	mov	"\0\0IF",r10
	mov	2832,r13		! source line 2832
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-40]
!   if intIsZero (_temp_2955) then goto _runtimeErrorNullPointer
	load	[r14+-40],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+4]
!   Prepare Argument: offset=16  value=8192  sizeInBytes=4
	mov	8192,r1
	store	r1,[r15+8]
!   Send message ReadBytes
	load	[r14+-40],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,8,r2
	call	r2
!   Retrieve Result: targetName=_temp_2954  sizeInBytes=1
	loadb	[r15],r1
	storeb	r1,[r14+-9]
!   if _temp_2954 then goto _Label_2953 else goto _Label_2952
	loadb	[r14+-9],r1
	cmp	r1,0
	be	_Label_2952
	jmp	_Label_2953
_Label_2952:
! THEN...
	mov	2833,r13		! source line 2833
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2956 = _StringConst_212
	set	_StringConst_212,r1
	store	r1,[r14+-36]
!   Prepare Argument: offset=8  value=_temp_2956  sizeInBytes=4
	load	[r14+-36],r1
	store	r1,[r15+0]
!   Call the function
	mov	2833,r13		! source line 2833
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2834,r13		! source line 2834
	mov	"\0\0SE",r10
!   _temp_2957 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-32]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-32],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2835,r13		! source line 2835
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2953:
! ASSIGNMENT STATEMENT...
	mov	2837,r13		! source line 2837
	mov	"\0\0AS",r10
!   nextVirtPage = nextVirtPage + 1		(int)
	load	[r14+-224],r1
	mov	1,r2
	add	r1,r2,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-224]
!   Increment the FOR-LOOP index variable and jump back
_Label_2948:
!   i = i + 1
	load	[r14+-256],r1
	add	r1,1,r1
	bvs	_runtimeErrorOverflow
	store	r1,[r14+-256]
	jmp	_Label_2946
! END FOR
_Label_2949:
! IF STATEMENT...
	mov	2841,r13		! source line 2841
	mov	"\0\0IF",r10
	mov	2841,r13		! source line 2841
	mov	"\0\0SE",r10
	load	[r14+8],r1
	store	r1,[r14+-24]
!   if intIsZero (_temp_2961) then goto _runtimeErrorNullPointer
	load	[r14+-24],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Send message ReadInt
	load	[r14+-24],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=_temp_2960  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-28]
!   if _temp_2960 == 707406378 then goto _Label_2959		(int)
	load	[r14+-28],r1
	set	707406378,r2
	cmp	r1,r2
	be	_Label_2959
!	jmp	_Label_2958
_Label_2958:
! THEN...
	mov	2842,r13		! source line 2842
	mov	"\0\0TN",r10
! CALL STATEMENT...
!   _temp_2962 = _StringConst_213
	set	_StringConst_213,r1
	store	r1,[r14+-20]
!   Prepare Argument: offset=8  value=_temp_2962  sizeInBytes=4
	load	[r14+-20],r1
	store	r1,[r15+0]
!   Call the function
	mov	2842,r13		! source line 2842
	mov	"\0\0CE",r10
	call	print
! SEND STATEMENT...
	mov	2843,r13		! source line 2843
	mov	"\0\0SE",r10
!   _temp_2963 = &_P_Kernel_frameManager
	set	_P_Kernel_frameManager,r1
	store	r1,[r14+-16]
!   Prepare Argument: offset=12  value=addrSpace  sizeInBytes=4
	load	[r14+12],r1
	store	r1,[r15+4]
!   Send message ReturnAllFrames
	load	[r14+-16],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,20,r2
	call	r2
! RETURN STATEMENT...
	mov	2844,r13		! source line 2844
	mov	"\0\0RE",r10
!   ReturnResult: -1  (sizeInBytes=4)
	mov	-1,r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! END IF...
_Label_2959:
! ASSIGNMENT STATEMENT...
	mov	2848,r13		! source line 2848
	mov	"\0\0AS",r10
	mov	2848,r13		! source line 2848
	mov	"\0\0SE",r10
!   if intIsZero (addrSpace) then goto _runtimeErrorNullPointer
	load	[r14+12],r1
	cmp	r1,r0
	be	_runtimeErrorNullPointer
!   Prepare Argument: offset=12  value=nextVirtPage  sizeInBytes=4
	load	[r14+-224],r1
	store	r1,[r15+4]
!   Send message ExtractFrameAddr
	load	[r14+12],r1
	load	[r1],r2
	cmp	r2,0
	be	 _runtimeErrorUninitializedObject
	store	r1,[r15]
	add	r2,12,r2
	call	r2
!   Retrieve Result: targetName=addr  sizeInBytes=4
	load	[r15],r1
	store	r1,[r14+-228]
! CALL STATEMENT...
!   Prepare Argument: offset=8  value=addr  sizeInBytes=4
	load	[r14+-228],r1
	store	r1,[r15+0]
!   Prepare Argument: offset=12  value=bssSize  sizeInBytes=4
	load	[r14+-240],r1
	store	r1,[r15+4]
!   Call the function
	mov	2852,r13		! source line 2852
	mov	"\0\0CE",r10
	call	MemoryZero
! RETURN STATEMENT...
	mov	2855,r13		! source line 2855
	mov	"\0\0RE",r10
!   ReturnResult: textStart  (sizeInBytes=4)
	load	[r14+-244],r1
	store	r1,[r14+8]
	add	r15,276,r15
	pop	r13
	pop	r14
	ret
! 
! Routine Descriptor
! 
_RoutineDescriptor__Method_P_Kernel_OpenFile_4:
	.word	_sourceFileName
	.word	_Label_2964
	.word	8		! total size of parameters
	.word	272		! frame size = 272
	.word	_Label_2965
	.word	4		! size of self
	.word	8		! offset of self
	.word	_Label_2966
	.word	12
	.word	4
	.word	_Label_2967
	.word	-16
	.word	4
	.word	_Label_2968
	.word	-20
	.word	4
	.word	_Label_2969
	.word	-24
	.word	4
	.word	_Label_2970
	.word	-28
	.word	4
	.word	_Label_2971
	.word	-32
	.word	4
	.word	_Label_2972
	.word	-36
	.word	4
	.word	_Label_2973
	.word	-40
	.word	4
	.word	_Label_2974
	.word	-9
	.word	1
	.word	_Label_2975
	.word	-44
	.word	4
	.word	_Label_2976
	.word	-48
	.word	4
	.word	_Label_2977
	.word	-52
	.word	4
	.word	_Label_2978
	.word	-56
	.word	4
	.word	_Label_2979
	.word	-60
	.word	4
	.word	_Label_2980
	.word	-64
	.word	4
	.word	_Label_2981
	.word	-68
	.word	4
	.word	_Label_2982
	.word	-72
	.word	4
	.word	_Label_2983
	.word	-76
	.word	4
	.word	_Label_2984
	.word	-10
	.word	1
	.word	_Label_2985
	.word	-80
	.word	4
	.word	_Label_2986
	.word	-84
	.word	4
	.word	_Label_2987
	.word	-88
	.word	4
	.word	_Label_2988
	.word	-92
	.word	4
	.word	_Label_2989
	.word	-96
	.word	4
	.word	_Label_2990
	.word	-100
	.word	4
	.word	_Label_2991
	.word	-104
	.word	4
	.word	_Label_2992
	.word	-108
	.word	4
	.word	_Label_2993
	.word	-112
	.word	4
	.word	_Label_2994
	.word	-116
	.word	4
	.word	_Label_2995
	.word	-120
	.word	4
	.word	_Label_2996
	.word	-124
	.word	4
	.word	_Label_2997
	.word	-128
	.word	4
	.word	_Label_2998
	.word	-132
	.word	4
	.word	_Label_2999
	.word	-136
	.word	4
	.word	_Label_3000
	.word	-140
	.word	4
	.word	_Label_3001
	.word	-144
	.word	4
	.word	_Label_3002
	.word	-148
	.word	4
	.word	_Label_3003
	.word	-152
	.word	4
	.word	_Label_3004
	.word	-156
	.word	4
	.word	_Label_3005
	.word	-160
	.word	4
	.word	_Label_3006
	.word	-164
	.word	4
	.word	_Label_3007
	.word	-168
	.word	4
	.word	_Label_3008
	.word	-172
	.word	4
	.word	_Label_3009
	.word	-176
	.word	4
	.word	_Label_3010
	.word	-180
	.word	4
	.word	_Label_3011
	.word	-184
	.word	4
	.word	_Label_3012
	.word	-188
	.word	4
	.word	_Label_3013
	.word	-192
	.word	4
	.word	_Label_3014
	.word	-196
	.word	4
	.word	_Label_3015
	.word	-200
	.word	4
	.word	_Label_3016
	.word	-204
	.word	4
	.word	_Label_3017
	.word	-208
	.word	4
	.word	_Label_3018
	.word	-212
	.word	4
	.word	_Label_3019
	.word	-216
	.word	4
	.word	_Label_3020
	.word	-220
	.word	4
	.word	_Label_3021
	.word	-224
	.word	4
	.word	_Label_3022
	.word	-228
	.word	4
	.word	_Label_3023
	.word	-232
	.word	4
	.word	_Label_3024
	.word	-236
	.word	4
	.word	_Label_3025
	.word	-240
	.word	4
	.word	_Label_3026
	.word	-244
	.word	4
	.word	_Label_3027
	.word	-248
	.word	4
	.word	_Label_3028
	.word	-252
	.word	4
	.word	_Label_3029
	.word	-256
	.word	4
	.word	_Label_3030
	.word	-260
	.word	4
	.word	_Label_3031
	.word	-264
	.word	4
	.word	_Label_3032
	.word	-268
	.word	4
	.word	0
_Label_2964:
	.ascii	"OpenFile"
	.ascii	"::"
	.ascii	"LoadExecutable\0"
	.align
_Label_2965:
	.ascii	"Pself\0"
	.align
_Label_2966:
	.byte	'P'
	.ascii	"addrSpace\0"
	.align
_Label_2967:
	.byte	'?'
	.ascii	"_temp_2963\0"
	.align
_Label_2968:
	.byte	'?'
	.ascii	"_temp_2962\0"
	.align
_Label_2969:
	.byte	'?'
	.ascii	"_temp_2961\0"
	.align
_Label_2970:
	.byte	'?'
	.ascii	"_temp_2960\0"
	.align
_Label_2971:
	.byte	'?'
	.ascii	"_temp_2957\0"
	.align
_Label_2972:
	.byte	'?'
	.ascii	"_temp_2956\0"
	.align
_Label_2973:
	.byte	'?'
	.ascii	"_temp_2955\0"
	.align
_Label_2974:
	.byte	'C'
	.ascii	"_temp_2954\0"
	.align
_Label_2975:
	.byte	'?'
	.ascii	"_temp_2951\0"
	.align
_Label_2976:
	.byte	'?'
	.ascii	"_temp_2950\0"
	.align
_Label_2977:
	.byte	'?'
	.ascii	"_temp_2945\0"
	.align
_Label_2978:
	.byte	'?'
	.ascii	"_temp_2944\0"
	.align
_Label_2979:
	.byte	'?'
	.ascii	"_temp_2943\0"
	.align
_Label_2980:
	.byte	'?'
	.ascii	"_temp_2942\0"
	.align
_Label_2981:
	.byte	'?'
	.ascii	"_temp_2939\0"
	.align
_Label_2982:
	.byte	'?'
	.ascii	"_temp_2938\0"
	.align
_Label_2983:
	.byte	'?'
	.ascii	"_temp_2937\0"
	.align
_Label_2984:
	.byte	'C'
	.ascii	"_temp_2936\0"
	.align
_Label_2985:
	.byte	'?'
	.ascii	"_temp_2933\0"
	.align
_Label_2986:
	.byte	'?'
	.ascii	"_temp_2932\0"
	.align
_Label_2987:
	.byte	'?'
	.ascii	"_temp_2927\0"
	.align
_Label_2988:
	.byte	'?'
	.ascii	"_temp_2926\0"
	.align
_Label_2989:
	.byte	'?'
	.ascii	"_temp_2925\0"
	.align
_Label_2990:
	.byte	'?'
	.ascii	"_temp_2924\0"
	.align
_Label_2991:
	.byte	'?'
	.ascii	"_temp_2921\0"
	.align
_Label_2992:
	.byte	'?'
	.ascii	"_temp_2920\0"
	.align
_Label_2993:
	.byte	'?'
	.ascii	"_temp_2919\0"
	.align
_Label_2994:
	.byte	'?'
	.ascii	"_temp_2918\0"
	.align
_Label_2995:
	.byte	'?'
	.ascii	"_temp_2915\0"
	.align
_Label_2996:
	.byte	'?'
	.ascii	"_temp_2914\0"
	.align
_Label_2997:
	.byte	'?'
	.ascii	"_temp_2913\0"
	.align
_Label_2998:
	.byte	'?'
	.ascii	"_temp_2912\0"
	.align
_Label_2999:
	.byte	'?'
	.ascii	"_temp_2911\0"
	.align
_Label_3000:
	.byte	'?'
	.ascii	"_temp_2908\0"
	.align
_Label_3001:
	.byte	'?'
	.ascii	"_temp_2907\0"
	.align
_Label_3002:
	.byte	'?'
	.ascii	"_temp_2904\0"
	.align
_Label_3003:
	.byte	'?'
	.ascii	"_temp_2903\0"
	.align
_Label_3004:
	.byte	'?'
	.ascii	"_temp_2900\0"
	.align
_Label_3005:
	.byte	'?'
	.ascii	"_temp_2899\0"
	.align
_Label_3006:
	.byte	'?'
	.ascii	"_temp_2896\0"
	.align
_Label_3007:
	.byte	'?'
	.ascii	"_temp_2893\0"
	.align
_Label_3008:
	.byte	'?'
	.ascii	"_temp_2892\0"
	.align
_Label_3009:
	.byte	'?'
	.ascii	"_temp_2889\0"
	.align
_Label_3010:
	.byte	'?'
	.ascii	"_temp_2888\0"
	.align
_Label_3011:
	.byte	'?'
	.ascii	"_temp_2887\0"
	.align
_Label_3012:
	.byte	'?'
	.ascii	"_temp_2886\0"
	.align
_Label_3013:
	.byte	'?'
	.ascii	"_temp_2885\0"
	.align
_Label_3014:
	.byte	'?'
	.ascii	"_temp_2884\0"
	.align
_Label_3015:
	.byte	'?'
	.ascii	"_temp_2883\0"
	.align
_Label_3016:
	.byte	'?'
	.ascii	"_temp_2882\0"
	.align
_Label_3017:
	.byte	'?'
	.ascii	"_temp_2881\0"
	.align
_Label_3018:
	.byte	'?'
	.ascii	"_temp_2878\0"
	.align
_Label_3019:
	.byte	'?'
	.ascii	"_temp_2877\0"
	.align
_Label_3020:
	.byte	'?'
	.ascii	"_temp_2876\0"
	.align
_Label_3021:
	.byte	'I'
	.ascii	"nextVirtPage\0"
	.align
_Label_3022:
	.byte	'I'
	.ascii	"addr\0"
	.align
_Label_3023:
	.byte	'I'
	.ascii	"textSize\0"
	.align
_Label_3024:
	.byte	'I'
	.ascii	"dataSize\0"
	.align
_Label_3025:
	.byte	'I'
	.ascii	"bssSize\0"
	.align
_Label_3026:
	.byte	'I'
	.ascii	"textStart\0"
	.align
_Label_3027:
	.byte	'I'
	.ascii	"dataStart\0"
	.align
_Label_3028:
	.byte	'I'
	.ascii	"bssStart\0"
	.align
_Label_3029:
	.byte	'I'
	.ascii	"i\0"
	.align
_Label_3030:
	.byte	'I'
	.ascii	"textSizeInPages\0"
	.align
_Label_3031:
	.byte	'I'
	.ascii	"dataSizeInPages\0"
	.align
_Label_3032:
	.byte	'I'
	.ascii	"bssSizeInPages\0"
	.align
