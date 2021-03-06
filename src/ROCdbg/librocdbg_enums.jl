@cenum Changed::UInt32 begin
    CHANGED_NO = 0
    CHANGED_YES = 1
end

@cenum Status::Int32 begin
    STATUS_SUCCESS = 0
    STATUS_ERROR = -1
    STATUS_FATAL = -2
    STATUS_ERROR_NOT_SUPPORTED = -3
    STATUS_ERROR_INVALID_ARGUMENT = -4
    STATUS_ERROR_INVALID_ARGUMENT_SIZE = -5
    STATUS_ERROR_ALREADY_INITIALIZED = -6
    STATUS_ERROR_NOT_INITIALIZED = -7
    STATUS_ERROR_VERSION_MISMATCH = -8
    STATUS_ERROR_ALREADY_ATTACHED = -9
    STATUS_ERROR_INVALID_ARCHITECTURE_ID = -10
    STATUS_ERROR_ILLEGAL_INSTRUCTION = -11
    STATUS_ERROR_INVALID_CODE_OBJECT_ID = -12
    STATUS_ERROR_INVALID_ELF_AMDGPU_MACHINE = -13
    STATUS_ERROR_INVALID_PROCESS_ID = -14
    STATUS_ERROR_INVALID_AGENT_ID = -15
    STATUS_ERROR_INVALID_QUEUE_ID = -16
    STATUS_ERROR_INVALID_DISPATCH_ID = -17
    STATUS_ERROR_INVALID_WAVE_ID = -18
    STATUS_ERROR_WAVE_NOT_STOPPED = -19
    STATUS_ERROR_WAVE_STOPPED = -20
    STATUS_ERROR_WAVE_OUTSTANDING_STOP = -21
    STATUS_ERROR_WAVE_NOT_RESUMABLE = -22
    STATUS_ERROR_INVALID_DISPLACED_STEPPING_ID = -23
    STATUS_ERROR_DISPLACED_STEPPING_BUFFER_UNAVAILABLE = -24
    STATUS_ERROR_INVALID_WATCHPOINT_ID = -25
    STATUS_ERROR_NO_WATCHPOINT_AVAILABLE = -26
    STATUS_ERROR_INVALID_REGISTER_CLASS_ID = -27
    STATUS_ERROR_INVALID_REGISTER_ID = -28
    STATUS_ERROR_INVALID_LANE_ID = -29
    STATUS_ERROR_INVALID_ADDRESS_CLASS_ID = -30
    STATUS_ERROR_INVALID_ADDRESS_SPACE_ID = -31
    STATUS_ERROR_MEMORY_ACCESS = -32
    STATUS_ERROR_INVALID_ADDRESS_SPACE_CONVERSION = -33
    STATUS_ERROR_INVALID_EVENT_ID = -34
    STATUS_ERROR_INVALID_SHARED_LIBRARY_ID = -35
    STATUS_ERROR_INVALID_BREAKPOINT_ID = -36
    STATUS_ERROR_CLIENT_CALLBACK = -37
    STATUS_ERROR_INVALID_CLIENT_PROCESS_ID = -38
    STATUS_ERROR_PROCESS_EXITED = -39
    STATUS_ERROR_LIBRARY_NOT_LOADED = -40
    STATUS_ERROR_SYMBOL_NOT_FOUND = -41
    STATUS_ERROR_INVALID_ADDRESS = -42
end

@cenum ArchitectureInfo::UInt32 begin
    ARCHITECTURE_INFO_NAME = 1
    ARCHITECTURE_INFO_ELF_AMDGPU_MACHINE = 2
    ARCHITECTURE_INFO_LARGEST_INSTRUCTION_SIZE = 3
    ARCHITECTURE_INFO_MINIMUM_INSTRUCTION_ALIGNMENT = 4
    ARCHITECTURE_INFO_BREAKPOINT_INSTRUCTION_SIZE = 5
    ARCHITECTURE_INFO_BREAKPOINT_INSTRUCTION = 6
    ARCHITECTURE_INFO_BREAKPOINT_INSTRUCTION_PC_ADJUST = 7
    ARCHITECTURE_INFO_PC_REGISTER = 8
    ARCHITECTURE_INFO_EXECUTION_MASK_REGISTER = 9
    ARCHITECTURE_INFO_WATCHPOINT_COUNT = 10
    ARCHITECTURE_INFO_WATCHPOINT_SHARE = 11
    ARCHITECTURE_INFO_DEFAULT_GLOBAL_ADDRESS_SPACE = 12
    ARCHITECTURE_INFO_PRECISE_MEMORY_SUPPORTED = 13
end

@cenum ProcessInfo::UInt32 begin
    PROCESS_INFO_NOTIFIER = 1
end

@cenum Progress::UInt32 begin
    PROGRESS_NORMAL = 0
    PROGRESS_NO_FORWARD = 1
end

@cenum CodeObjectInfo::UInt32 begin
    CODE_OBJECT_INFO_URI_NAME = 1
    CODE_OBJECT_INFO_LOAD_ADDRESS = 2
end

@cenum AgentInfo::UInt32 begin
    AGENT_INFO_NAME = 1
    AGENT_INFO_ARCHITECTURE = 2
    AGENT_INFO_PCIE_SLOT = 3
    AGENT_INFO_PCIE_VENDOR_ID = 4
    AGENT_INFO_PCIE_DEVICE_ID = 5
    AGENT_INFO_SHADER_ENGINE_COUNT = 6
    AGENT_INFO_COMPUTE_UNIT_COUNT = 7
    AGENT_INFO_NUM_SIMD_PER_COMPUTE_UNIT = 8
    AGENT_INFO_MAX_WAVES_PER_SIMD = 9
end

@cenum QueueInfo::UInt32 begin
    QUEUE_INFO_AGENT = 1
    QUEUE_INFO_ARCHITECTURE = 2
    QUEUE_TYPE = 3
    QUEUE_INFO_STATE = 4
    QUEUE_INFO_ERROR_REASON = 5
end

@cenum QueueType::UInt32 begin
    QUEUE_TYPE_UNKNOWN = 0
    QUEUE_TYPE_HSA_KERNEL_DISPATCH_MULTIPLE_PRODUCER = 1
    QUEUE_TYPE_HSA_KERNEL_DISPATCH_SINGLE_PRODUCER = 2
    QUEUE_TYPE_AMD_PM4 = 3
end

@cenum QueueState::UInt32 begin
    QUEUE_STATE_VALID = 1
    QUEUE_STATE_ERROR = 2
end

@cenum QueueErrorReason::UInt32 begin
    QUEUE_ERROR_REASON_INVALID_PACKET = 1
    QUEUE_ERROR_REASON_MEMORY_VIOLATION = 2
    QUEUE_ERROR_REASON_ASSERT_TRAP = 4
    QUEUE_ERROR_REASON_WAVE_ERROR = 8
end

@cenum DispatchInfo::UInt32 begin
    DISPATCH_INFO_QUEUE = 1
    DISPATCH_INFO_AGENT = 2
    DISPATCH_INFO_ARCHITECTURE = 3
    DISPATCH_INFO_PACKET_ID = 4
    DISPATCH_INFO_BARRIER = 5
    DISPATCH_INFO_ACQUIRE_FENCE = 6
    DISPATCH_INFO_RELEASE_FENCE = 7
    DISPATCH_INFO_GRID_DIMENSIONS = 8
    DISPATCH_INFO_WORK_GROUP_SIZES = 9
    DISPATCH_INFO_GRID_SIZES = 10
    DISPATCH_INFO_PRIVATE_SEGMENT_SIZE = 11
    DISPATCH_INFO_GROUP_SEGMENT_SIZE = 12
    DISPATCH_INFO_KERNEL_ARGUMENT_SEGMENT_ADDRESS = 13
    DISPATCH_INFO_KERNEL_ENTRY_ADDRESS = 14
end

@cenum DispatchBarrier::UInt32 begin
    DISPATCH_BARRIER_NONE = 0
    DISPATCH_BARRIER_PRESENT = 1
end

@cenum DispatchFenceScope::UInt32 begin
    DISPATCH_FENCE_SCOPE_NONE = 0
    DISPATCH_FENCE_SCOPE_AGENT = 1
    DISPATCH_FENCE_SCOPE_SYSTEM = 2
end

@cenum WaveInfo::UInt32 begin
    WAVE_INFO_STATE = 1
    WAVE_INFO_STOP_REASON = 2
    WAVE_INFO_WATCHPOINTS = 3
    WAVE_INFO_DISPATCH = 4
    WAVE_INFO_QUEUE = 5
    WAVE_INFO_AGENT = 6
    WAVE_INFO_ARCHITECTURE = 7
    WAVE_INFO_PC = 8
    WAVE_INFO_EXEC_MASK = 9
    WAVE_INFO_WORK_GROUP_COORD = 10
    WAVE_INFO_WAVE_NUMBER_IN_WORK_GROUP = 11
    WAVE_INFO_LANE_COUNT = 12
end

@cenum WaveState::UInt32 begin
    WAVE_STATE_RUN = 1
    WAVE_STATE_SINGLE_STEP = 2
    WAVE_STATE_STOP = 3
end

@cenum WaveStopReason::UInt32 begin
    WAVE_STOP_REASON_NONE = 0
    WAVE_STOP_REASON_BREAKPOINT = 1
    WAVE_STOP_REASON_WATCHPOINT = 2
    WAVE_STOP_REASON_SINGLE_STEP = 4
    WAVE_STOP_REASON_QUEUE_ERROR = 8
    WAVE_STOP_REASON_FP_INPUT_DENORMAL = 16
    WAVE_STOP_REASON_FP_DIVIDE_BY_0 = 32
    WAVE_STOP_REASON_FP_OVERFLOW = 64
    WAVE_STOP_REASON_FP_UNDERFLOW = 128
    WAVE_STOP_REASON_FP_INEXACT = 256
    WAVE_STOP_REASON_FP_INVALID_OPERATION = 512
    WAVE_STOP_REASON_INT_DIVIDE_BY_0 = 1024
    WAVE_STOP_REASON_DEBUG_TRAP = 2048
    WAVE_STOP_REASON_ASSERT_TRAP = 4096
    WAVE_STOP_REASON_TRAP = 8192
    WAVE_STOP_REASON_MEMORY_VIOLATION = 16384
    WAVE_STOP_REASON_ILLEGAL_INSTRUCTION = 32768
    WAVE_STOP_REASON_ECC_ERROR = 65536
    WAVE_STOP_REASON_FATAL_HALT = 131072
    WAVE_STOP_REASON_XNACK_ERROR = 262144
end

@cenum ResumeMode::UInt32 begin
    RESUME_MODE_NORMAL = 0
    RESUME_MODE_SINGLE_STEP = 1
end

@cenum WatchpointShareKind::UInt32 begin
    WATCHPOINT_SHARE_KIND_UNSUPPORTED = 0
    WATCHPOINT_SHARE_KIND_UNSHARED = 1
    WATCHPOINT_SHARE_KIND_SHARED = 2
end

@cenum WatchpointKind::UInt32 begin
    WATCHPOINT_KIND_LOAD = 1
    WATCHPOINT_KIND_STORE_AND_RMW = 2
    WATCHPOINT_KIND_RMW = 3
    WATCHPOINT_KIND_ALL = 4
end

@cenum RegisterClassInfo::UInt32 begin
    REGISTER_CLASS_INFO_NAME = 1
end

@cenum RegisterInfo::UInt32 begin
    REGISTER_INFO_NAME = 1
    REGISTER_INFO_SIZE = 2
    REGISTER_INFO_TYPE = 3
end

@cenum RegisterClassState::UInt32 begin
    REGISTER_CLASS_STATE_NOT_MEMBER = 0
    REGISTER_CLASS_STATE_MEMBER = 1
end

@cenum AddressClassInfo::UInt32 begin
    ADDRESS_CLASS_INFO_NAME = 1
    ADDRESS_CLASS_INFO_ADDRESS_SPACE = 2
end

@cenum AddressSpaceAccess::UInt32 begin
    ADDRESS_SPACE_ACCESS_ALL = 1
    ADDRESS_SPACE_ACCESS_PROGRAM_CONSTANT = 2
    ADDRESS_SPACE_ACCESS_DISPATCH_CONSTANT = 3
end

@cenum AddressSpaceInfo::UInt32 begin
    ADDRESS_SPACE_INFO_NAME = 1
    ADDRESS_SPACE_INFO_ADDRESS_SIZE = 2
    ADDRESS_SPACE_INFO_NULL_ADDRESS = 3
    ADDRESS_SPACE_INFO_ACCESS = 4
end

@cenum AddressSpaceAlias::UInt32 begin
    ADDRESS_SPACE_ALIAS_NONE = 0
    ADDRESS_SPACE_ALIAS_MAY = 1
end

@cenum AddressClassState::UInt32 begin
    ADDRESS_CLASS_STATE_NOT_MEMBER = 0
    ADDRESS_CLASS_STATE_MEMBER = 1
end

@cenum MemoryPrecision::UInt32 begin
    MEMORY_PRECISION_NONE = 0
    MEMORY_PRECISION_PRECISE = 1
end

@cenum EventKind::UInt32 begin
    EVENT_KIND_NONE = 0
    EVENT_KIND_WAVE_STOP = 1
    EVENT_KIND_WAVE_COMMAND_TERMINATED = 2
    EVENT_KIND_CODE_OBJECT_LIST_UPDATED = 3
    EVENT_KIND_BREAKPOINT_RESUME = 4
    EVENT_KIND_RUNTIME = 5
    EVENT_KIND_QUEUE_ERROR = 6
end

@cenum RuntimeState::UInt32 begin
    RUNTIME_STATE_LOADED_SUPPORTED = 1
    RUNTIME_STATE_LOADED_UNSUPPORTED = 2
    RUNTIME_STATE_UNLOADED = 3
end

@cenum EventInfo::UInt32 begin
    EVENT_INFO_KIND = 1
    EVENT_INFO_WAVE = 2
    EVENT_INFO_BREAKPOINT = 3
    EVENT_INFO_CLIENT_THREAD = 4
    EVENT_INFO_RUNTIME_STATE = 5
    EVENT_INFO_RUNTIME_VERSION = 6
end

@cenum LogLevel::UInt32 begin
    LOG_LEVEL_NONE = 0
    LOG_LEVEL_FATAL_ERROR = 1
    LOG_LEVEL_WARNING = 2
    LOG_LEVEL_INFO = 3
    LOG_LEVEL_VERBOSE = 4
end

@cenum SharedLibraryState::UInt32 begin
    SHARED_LIBRARY_STATE_LOADED = 1
    SHARED_LIBRARY_STATE_UNLOADED = 2
end

@cenum BreakpointAction::UInt32 begin
    BREAKPOINT_ACTION_RESUME = 1
    BREAKPOINT_ACTION_HALT = 2
end

@cenum BreakpointState::UInt32 begin
    BREAKPOINT_STATE_DISABLE = 1
    BREAKPOINT_STATE_ENABLE = 2
end


