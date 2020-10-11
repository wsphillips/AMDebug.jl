
# Skipping MacroDefinition: AMD_DBGAPI_EXPORT_DECORATOR __attribute__ ( ( visibility ( "default" ) ) )

const AMD_DBGAPI_EXPORT = AMD_DBGAPI_EXPORT_DECORATOR
const AMD_DBGAPI_IMPORT = AMD_DBGAPI_IMPORT_DECORATOR
const AMD_DBGAPI = AMD_DBGAPI_IMPORT
const LITTLE_ENDIAN = __LITTLE_ENDIAN
const BIG_ENDIAN = __BIG_ENDIAN
const PDP_ENDIAN = __PDP_ENDIAN
const BYTE_ORDER = __BYTE_ORDER

# Skipping MacroDefinition: htobe16 ( x ) __bswap_16 ( x )
# Skipping MacroDefinition: htole16 ( x ) __uint16_identity ( x )
# Skipping MacroDefinition: be16toh ( x ) __bswap_16 ( x )
# Skipping MacroDefinition: le16toh ( x ) __uint16_identity ( x )
# Skipping MacroDefinition: htobe32 ( x ) __bswap_32 ( x )
# Skipping MacroDefinition: htole32 ( x ) __uint32_identity ( x )
# Skipping MacroDefinition: be32toh ( x ) __bswap_32 ( x )
# Skipping MacroDefinition: le32toh ( x ) __uint32_identity ( x )
# Skipping MacroDefinition: htobe64 ( x ) __bswap_64 ( x )
# Skipping MacroDefinition: htole64 ( x ) __uint64_identity ( x )
# Skipping MacroDefinition: be64toh ( x ) __bswap_64 ( x )
# Skipping MacroDefinition: le64toh ( x ) __uint64_identity ( x )

const FD_SETSIZE = __FD_SETSIZE
const NFDBITS = __NFDBITS

# Skipping MacroDefinition: FD_SET ( fd , fdsetp ) __FD_SET ( fd , fdsetp )
# Skipping MacroDefinition: FD_CLR ( fd , fdsetp ) __FD_CLR ( fd , fdsetp )
# Skipping MacroDefinition: FD_ISSET ( fd , fdsetp ) __FD_ISSET ( fd , fdsetp )
# Skipping MacroDefinition: FD_ZERO ( fdsetp ) __FD_ZERO ( fdsetp )

const INT8_MIN = -128
const INT16_MIN = -32767 - 1
const INT32_MIN = -2147483647 - 1

# Skipping MacroDefinition: INT64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT8_MAX = 127
const INT16_MAX = 32767
const INT32_MAX = 2147483647

# Skipping MacroDefinition: INT64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT8_MAX = 255
const UINT16_MAX = 65535
const UINT32_MAX = UInt32(4294967295)

# Skipping MacroDefinition: UINT64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INT_LEAST8_MIN = -128
const INT_LEAST16_MIN = -32767 - 1
const INT_LEAST32_MIN = -2147483647 - 1

# Skipping MacroDefinition: INT_LEAST64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT_LEAST8_MAX = 127
const INT_LEAST16_MAX = 32767
const INT_LEAST32_MAX = 2147483647

# Skipping MacroDefinition: INT_LEAST64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT_LEAST8_MAX = 255
const UINT_LEAST16_MAX = 65535
const UINT_LEAST32_MAX = UInt32(4294967295)

# Skipping MacroDefinition: UINT_LEAST64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INT_FAST8_MIN = -128
const INT_FAST16_MIN = -(Int32(9223372036854775807)) - 1
const INT_FAST32_MIN = -(Int32(9223372036854775807)) - 1

# Skipping MacroDefinition: INT_FAST64_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )

const INT_FAST8_MAX = 127
const INT_FAST16_MAX = Int32(9223372036854775807)
const INT_FAST32_MAX = Int32(9223372036854775807)

# Skipping MacroDefinition: INT_FAST64_MAX ( __INT64_C ( 9223372036854775807 ) )

const UINT_FAST8_MAX = 255
const UINT_FAST16_MAX = UInt32(18446744073709551615)
const UINT_FAST32_MAX = UInt32(18446744073709551615)

# Skipping MacroDefinition: UINT_FAST64_MAX ( __UINT64_C ( 18446744073709551615 ) )

const INTPTR_MIN = -(Int32(9223372036854775807)) - 1
const INTPTR_MAX = Int32(9223372036854775807)
const UINTPTR_MAX = UInt32(18446744073709551615)

# Skipping MacroDefinition: INTMAX_MIN ( - __INT64_C ( 9223372036854775807 ) - 1 )
# Skipping MacroDefinition: INTMAX_MAX ( __INT64_C ( 9223372036854775807 ) )
# Skipping MacroDefinition: UINTMAX_MAX ( __UINT64_C ( 18446744073709551615 ) )

const PTRDIFF_MIN = -(Int32(9223372036854775807)) - 1
const PTRDIFF_MAX = Int32(9223372036854775807)
const SIG_ATOMIC_MIN = -2147483647 - 1
const SIG_ATOMIC_MAX = 2147483647
const SIZE_MAX = UInt32(18446744073709551615)
const WCHAR_MIN = __WCHAR_MIN
const WCHAR_MAX = __WCHAR_MAX
const WINT_MIN = UInt32(0)
const WINT_MAX = UInt32(4294967295)

# Skipping MacroDefinition: INT8_C ( c ) c
# Skipping MacroDefinition: INT16_C ( c ) c
# Skipping MacroDefinition: INT32_C ( c ) c
# Skipping MacroDefinition: INT64_C ( c ) c ## L
# Skipping MacroDefinition: UINT8_C ( c ) c
# Skipping MacroDefinition: UINT16_C ( c ) c
# Skipping MacroDefinition: UINT32_C ( c ) c ## U
# Skipping MacroDefinition: UINT64_C ( c ) c ## UL
# Skipping MacroDefinition: INTMAX_C ( c ) c ## L
# Skipping MacroDefinition: UINTMAX_C ( c ) c ## UL
# Skipping MacroDefinition: NULL ( ( void * ) 0 )
# Skipping MacroDefinition: offsetof ( t , d ) __builtin_offsetof ( t , d )
# Skipping MacroDefinition: AMD_DBGAPI_ARCHITECTURE_NONE ( amd_dbgapi_architecture_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_PROCESS_NONE ( amd_dbgapi_process_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_CODE_OBJECT_NONE ( amd_dbgapi_code_object_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_AGENT_NONE ( amd_dbgapi_agent_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_QUEUE_NONE ( amd_dbgapi_queue_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_DISPATCH_NONE ( amd_dbgapi_dispatch_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_WAVE_NONE ( amd_dbgapi_wave_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_DISPLACED_STEPPING_NONE ( amd_dbgapi_displaced_stepping_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_WATCHPOINT_NONE ( amd_dbgapi_watchpoint_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_REGISTER_CLASS_NONE ( amd_dbgapi_register_class_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_REGISTER_NONE ( amd_dbgapi_register_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_LANE_NONE ( ( amd_dbgapi_lane_id_t ) ( - 1 ) )
# Skipping MacroDefinition: AMD_DBGAPI_ADDRESS_CLASS_NONE ( amd_dbgapi_address_class_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_EVENT_NONE ( amd_dbgapi_event_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_SHARED_LIBRARY_NONE ( amd_dbgapi_shared_library_id_t { 0 } )
# Skipping MacroDefinition: AMD_DBGAPI_BREAKPOINT_NONE ( ( amd_dbgapi_breakpoint_id_t ) ( 0 ) )

struct __fsid_t
    __val::NTuple{2, Cint}
end

const u_char = __u_char
const u_short = __u_short
const u_int = __u_int
const u_long = __u_long
const quad_t = __quad_t
const u_quad_t = __u_quad_t
const fsid_t = __fsid_t
const loff_t = __loff_t
const ino_t = __ino_t
const dev_t = __dev_t
const gid_t = __gid_t
const mode_t = __mode_t
const nlink_t = __nlink_t
const uid_t = __uid_t
const off_t = __off_t
const pid_t = __pid_t
const id_t = __id_t
const ssize_t = __ssize_t
const daddr_t = __daddr_t
const caddr_t = __caddr_t
const key_t = __key_t
const clock_t = __clock_t
const clockid_t = __clockid_t
const time_t = __time_t
const timer_t = __timer_t
const size_t = Culong
const ulong = Culong
const ushort = UInt16
const uint = UInt32
const int8_t = __int8_t
const int16_t = __int16_t
const int32_t = __int32_t
const int64_t = __int64_t
const u_int8_t = __uint8_t
const u_int16_t = __uint16_t
const u_int32_t = __uint32_t
const u_int64_t = __uint64_t
const register_t = Clong

struct __sigset_t
    __val::NTuple{16, Culong}
end

const sigset_t = __sigset_t

struct timeval
    tv_sec::__time_t
    tv_usec::__suseconds_t
end

struct timespec
    tv_sec::__time_t
    tv_nsec::__syscall_slong_t
end

const suseconds_t = __suseconds_t

struct fd_set
    __fds_bits::NTuple{16, __fd_mask}
end

const fd_mask = __fd_mask
const blksize_t = __blksize_t
const blkcnt_t = __blkcnt_t
const fsblkcnt_t = __fsblkcnt_t
const fsfilcnt_t = __fsfilcnt_t
const pthread_t = Culong
const pthread_mutexattr_t = pthread_mutexattr_t
const pthread_condattr_t = pthread_condattr_t
const pthread_key_t = UInt32
const pthread_once_t = Cint
const pthread_attr_t = pthread_attr_t
const pthread_mutex_t = pthread_mutex_t
const pthread_cond_t = pthread_cond_t
const pthread_rwlock_t = pthread_rwlock_t
const pthread_rwlockattr_t = pthread_rwlockattr_t
const pthread_spinlock_t = Cint
const pthread_barrier_t = pthread_barrier_t
const pthread_barrierattr_t = pthread_barrierattr_t
const uint8_t = __uint8_t
const uint16_t = __uint16_t
const uint32_t = __uint32_t
const uint64_t = __uint64_t
const int_least8_t = __int_least8_t
const int_least16_t = __int_least16_t
const int_least32_t = __int_least32_t
const int_least64_t = __int_least64_t
const uint_least8_t = __uint_least8_t
const uint_least16_t = __uint_least16_t
const uint_least32_t = __uint_least32_t
const uint_least64_t = __uint_least64_t
const int_fast8_t = UInt8
const int_fast16_t = Clong
const int_fast32_t = Clong
const int_fast64_t = Clong
const uint_fast8_t = Cuchar
const uint_fast16_t = Culong
const uint_fast32_t = Culong
const uint_fast64_t = Culong
const intptr_t = Clong
const uintptr_t = Culong
const intmax_t = __intmax_t
const uintmax_t = __uintmax_t
const ptrdiff_t = Clong
const wchar_t = Cint

struct max_align_t
    __clang_max_align_nonce1::Clonglong
    __clang_max_align_nonce2::Float64
end

struct amd_dbgapi_callbacks_s
    allocate_memory::Ptr{Cvoid}
    deallocate_memory::Ptr{Cvoid}
    get_os_pid::Ptr{Cvoid}
    enable_notify_shared_library::Ptr{Cvoid}
    disable_notify_shared_library::Ptr{Cvoid}
    get_symbol_address::Ptr{Cvoid}
    add_breakpoint::Ptr{Cvoid}
    remove_breakpoint::Ptr{Cvoid}
    set_breakpoint_state::Ptr{Cvoid}
    log_message::Ptr{Cvoid}
end

const amd_dbgapi_callbacks_t = amd_dbgapi_callbacks_s
const amd_dbgapi_global_address_t = UInt64
const amd_dbgapi_size_t = UInt64

@cenum amd_dbgapi_changed_t::UInt32 begin
    AMD_DBGAPI_CHANGED_NO = 0
    AMD_DBGAPI_CHANGED_YES = 1
end


const amd_dbgapi_os_pid_t = pid_t
const amd_dbgapi_notifier_t = Cint

@cenum amd_dbgapi_status_t::Int32 begin
    AMD_DBGAPI_STATUS_SUCCESS = 0
    AMD_DBGAPI_STATUS_ERROR = -1
    AMD_DBGAPI_STATUS_FATAL = -2
    AMD_DBGAPI_STATUS_ERROR_UNIMPLEMENTED = -3
    AMD_DBGAPI_STATUS_ERROR_NOT_SUPPORTED = -4
    AMD_DBGAPI_STATUS_ERROR_INVALID_ARGUMENT = -5
    AMD_DBGAPI_STATUS_ERROR_INVALID_ARGUMENT_SIZE = -6
    AMD_DBGAPI_STATUS_ERROR_ALREADY_INITIALIZED = -7
    AMD_DBGAPI_STATUS_ERROR_NOT_INITIALIZED = -8
    AMD_DBGAPI_STATUS_ERROR_VERSION_MISMATCH = -9
    AMD_DBGAPI_STATUS_ERROR_ALREADY_ATTACHED = -10
    AMD_DBGAPI_STATUS_ERROR_INVALID_ARCHITECTURE_ID = -11
    AMD_DBGAPI_STATUS_ERROR_ILLEGAL_INSTRUCTION = -12
    AMD_DBGAPI_STATUS_ERROR_INVALID_CODE_OBJECT_ID = -13
    AMD_DBGAPI_STATUS_ERROR_INVALID_ELF_AMDGPU_MACHINE = -14
    AMD_DBGAPI_STATUS_ERROR_INVALID_PROCESS_ID = -15
    AMD_DBGAPI_STATUS_ERROR_INVALID_AGENT_ID = -16
    AMD_DBGAPI_STATUS_ERROR_INVALID_QUEUE_ID = -17
    AMD_DBGAPI_STATUS_ERROR_INVALID_DISPATCH_ID = -18
    AMD_DBGAPI_STATUS_ERROR_INVALID_WAVE_ID = -19
    AMD_DBGAPI_STATUS_ERROR_WAVE_NOT_STOPPED = -20
    AMD_DBGAPI_STATUS_ERROR_WAVE_STOPPED = -21
    AMD_DBGAPI_STATUS_ERROR_WAVE_OUTSTANDING_STOP = -22
    AMD_DBGAPI_STATUS_ERROR_WAVE_NOT_RESUMABLE = -23
    AMD_DBGAPI_STATUS_ERROR_INVALID_DISPLACED_STEPPING_ID = -24
    AMD_DBGAPI_STATUS_ERROR_DISPLACED_STEPPING_BUFFER_UNAVAILABLE = -25
    AMD_DBGAPI_STATUS_ERROR_INVALID_WATCHPOINT_ID = -26
    AMD_DBGAPI_STATUS_ERROR_NO_WATCHPOINT_AVAILABLE = -27
    AMD_DBGAPI_STATUS_ERROR_INVALID_REGISTER_CLASS_ID = -28
    AMD_DBGAPI_STATUS_ERROR_INVALID_REGISTER_ID = -29
    AMD_DBGAPI_STATUS_ERROR_INVALID_LANE_ID = -30
    AMD_DBGAPI_STATUS_ERROR_INVALID_ADDRESS_CLASS_ID = -31
    AMD_DBGAPI_STATUS_ERROR_INVALID_ADDRESS_SPACE_ID = -32
    AMD_DBGAPI_STATUS_ERROR_MEMORY_ACCESS = -33
    AMD_DBGAPI_STATUS_ERROR_INVALID_ADDRESS_SPACE_CONVERSION = -34
    AMD_DBGAPI_STATUS_ERROR_INVALID_EVENT_ID = -35
    AMD_DBGAPI_STATUS_ERROR_INVALID_SHARED_LIBRARY_ID = -36
    AMD_DBGAPI_STATUS_ERROR_INVALID_BREAKPOINT_ID = -37
    AMD_DBGAPI_STATUS_ERROR_CLIENT_CALLBACK = -38
    AMD_DBGAPI_STATUS_ERROR_INVALID_CLIENT_PROCESS_ID = -39
    AMD_DBGAPI_STATUS_ERROR_PROCESS_EXITED = -40
    AMD_DBGAPI_STATUS_ERROR_LIBRARY_NOT_LOADED = -41
    AMD_DBGAPI_STATUS_ERROR_SYMBOL_NOT_FOUND = -42
    AMD_DBGAPI_STATUS_ERROR_INVALID_ADDRESS = -43
end


struct amd_dbgapi_architecture_id_t
    handle::UInt64
end

@cenum amd_dbgapi_architecture_info_t::UInt32 begin
    AMD_DBGAPI_ARCHITECTURE_INFO_NAME = 1
    AMD_DBGAPI_ARCHITECTURE_INFO_ELF_AMDGPU_MACHINE = 2
    AMD_DBGAPI_ARCHITECTURE_INFO_LARGEST_INSTRUCTION_SIZE = 3
    AMD_DBGAPI_ARCHITECTURE_INFO_MINIMUM_INSTRUCTION_ALIGNMENT = 4
    AMD_DBGAPI_ARCHITECTURE_INFO_BREAKPOINT_INSTRUCTION_SIZE = 5
    AMD_DBGAPI_ARCHITECTURE_INFO_BREAKPOINT_INSTRUCTION = 6
    AMD_DBGAPI_ARCHITECTURE_INFO_BREAKPOINT_INSTRUCTION_PC_ADJUST = 7
    AMD_DBGAPI_ARCHITECTURE_INFO_PC_REGISTER = 8
    AMD_DBGAPI_ARCHITECTURE_INFO_DEFAULT_GLOBAL_ADDRESS_SPACE = 9
end


const amd_dbgapi_symbolizer_id_s = Cvoid
const amd_dbgapi_symbolizer_id_t = Ptr{amd_dbgapi_symbolizer_id_s}

@cenum amd_dbgapi_instruction_kind_t::UInt32 begin
    AMD_DBGAPI_INSTRUCTION_KIND_UNKNOWN = 0
    AMD_DBGAPI_INSTRUCTION_KIND_SEQUENTIAL = 1
    AMD_DBGAPI_INSTRUCTION_KIND_DIRECT_BRANCH = 2
    AMD_DBGAPI_INSTRUCTION_KIND_DIRECT_BRANCH_CONDITIONAL = 3
    AMD_DBGAPI_INSTRUCTION_KIND_INDIRECT_BRANCH_REGISTER_PAIR = 4
    AMD_DBGAPI_INSTRUCTION_KIND_DIRECT_CALL_REGISTER_PAIR = 5
    AMD_DBGAPI_INSTRUCTION_KIND_INDIRECT_CALL_REGISTER_PAIRS = 6
    AMD_DBGAPI_INSTRUCTION_KIND_TERMINATE = 7
    AMD_DBGAPI_INSTRUCTION_KIND_TRAP = 8
    AMD_DBGAPI_INSTRUCTION_KIND_HALT = 9
    AMD_DBGAPI_INSTRUCTION_KIND_BARRIER = 10
    AMD_DBGAPI_INSTRUCTION_KIND_SLEEP = 11
    AMD_DBGAPI_INSTRUCTION_KIND_SPECIAL = 12
end


const amd_dbgapi_client_process_s = Cvoid
const amd_dbgapi_client_process_id_t = Ptr{amd_dbgapi_client_process_s}

struct amd_dbgapi_process_id_t
    handle::UInt64
end

@cenum amd_dbgapi_process_info_t::UInt32 begin
    AMD_DBGAPI_PROCESS_INFO_NOTIFIER = 1
    AMD_DBGAPI_PROCESS_INFO_WATCHPOINT_COUNT = 2
    AMD_DBGAPI_PROCESS_INFO_WATCHPOINT_SHARE = 3
    AMD_DBGAPI_PROCESS_INFO_PRECISE_MEMORY_SUPPORTED = 4
end

@cenum amd_dbgapi_progress_t::UInt32 begin
    AMD_DBGAPI_PROGRESS_NORMAL = 0
    AMD_DBGAPI_PROGRESS_NO_FORWARD = 1
end

@cenum amd_dbgapi_wave_creation_t::UInt32 begin
    AMD_DBGAPI_WAVE_CREATION_NORMAL = 0
    AMD_DBGAPI_WAVE_CREATION_STOP = 1
end


struct amd_dbgapi_code_object_id_t
    handle::UInt64
end

@cenum amd_dbgapi_code_object_info_t::UInt32 begin
    AMD_DBGAPI_CODE_OBJECT_INFO_URI_NAME = 1
    AMD_DBGAPI_CODE_OBJECT_INFO_LOAD_ADDRESS = 2
end


struct amd_dbgapi_agent_id_t
    handle::UInt64
end

@cenum amd_dbgapi_agent_info_t::UInt32 begin
    AMD_DBGAPI_AGENT_INFO_NAME = 1
    AMD_DBGAPI_AGENT_INFO_ARCHITECTURE = 2
    AMD_DBGAPI_AGENT_INFO_PCI_SLOT = 3
    AMD_DBGAPI_AGENT_INFO_PCI_VENDOR_ID = 4
    AMD_DBGAPI_AGENT_INFO_PCI_DEVICE_ID = 5
    AMD_DBGAPI_AGENT_INFO_SHADER_ENGINE_COUNT = 6
    AMD_DBGAPI_AGENT_INFO_COMPUTE_UNIT_COUNT = 7
    AMD_DBGAPI_AGENT_INFO_NUM_SIMD_PER_COMPUTE_UNIT = 8
    AMD_DBGAPI_AGENT_INFO_MAX_WAVES_PER_SIMD = 9
end


struct amd_dbgapi_queue_id_t
    handle::UInt64
end

@cenum amd_dbgapi_queue_info_t::UInt32 begin
    AMD_DBGAPI_QUEUE_INFO_AGENT = 1
    AMD_DBGAPI_QUEUE_INFO_ARCHITECTURE = 2
    AMD_DBGAPI_QUEUE_TYPE = 3
    AMD_DBGAPI_QUEUE_INFO_STATE = 4
    AMD_DBGAPI_QUEUE_INFO_ERROR_REASON = 5
end

@cenum amd_dbgapi_queue_type_t::UInt32 begin
    AMD_DBGAPI_QUEUE_TYPE_UNKNOWN = 0
    AMD_DBGAPI_QUEUE_TYPE_HSA_KERNEL_DISPATCH_MULTIPLE_PRODUCER = 1
    AMD_DBGAPI_QUEUE_TYPE_HSA_KERNEL_DISPATCH_SINGLE_PRODUCER = 2
    AMD_DBGAPI_QUEUE_TYPE_HSA_KERNEL_DISPATCH_COOPERATIVE = 3
    AMD_DBGAPI_QUEUE_TYPE_AMD_PM4 = 257
    AMD_DBGAPI_QUEUE_TYPE_AMD_SDMA = 513
    AMD_DBGAPI_QUEUE_TYPE_AMD_SDMA_XGMI = 514
end

@cenum amd_dbgapi_queue_state_t::UInt32 begin
    AMD_DBGAPI_QUEUE_STATE_VALID = 1
    AMD_DBGAPI_QUEUE_STATE_ERROR = 2
end

@cenum amd_dbgapi_queue_error_reason_t::UInt32 begin
    AMD_DBGAPI_QUEUE_ERROR_REASON_NONE = 0
    AMD_DBGAPI_QUEUE_ERROR_REASON_INVALID_PACKET = 1
    AMD_DBGAPI_QUEUE_ERROR_REASON_MEMORY_VIOLATION = 2
    AMD_DBGAPI_QUEUE_ERROR_REASON_ASSERT_TRAP = 4
    AMD_DBGAPI_QUEUE_ERROR_REASON_WAVE_ERROR = 8
end


const amd_dbgapi_queue_packet_id_t = UInt64

struct amd_dbgapi_dispatch_id_t
    handle::UInt64
end

@cenum amd_dbgapi_dispatch_info_t::UInt32 begin
    AMD_DBGAPI_DISPATCH_INFO_QUEUE = 1
    AMD_DBGAPI_DISPATCH_INFO_AGENT = 2
    AMD_DBGAPI_DISPATCH_INFO_ARCHITECTURE = 3
    AMD_DBGAPI_DISPATCH_INFO_PACKET_ID = 4
    AMD_DBGAPI_DISPATCH_INFO_BARRIER = 5
    AMD_DBGAPI_DISPATCH_INFO_ACQUIRE_FENCE = 6
    AMD_DBGAPI_DISPATCH_INFO_RELEASE_FENCE = 7
    AMD_DBGAPI_DISPATCH_INFO_GRID_DIMENSIONS = 8
    AMD_DBGAPI_DISPATCH_INFO_WORK_GROUP_SIZES = 9
    AMD_DBGAPI_DISPATCH_INFO_GRID_SIZES = 10
    AMD_DBGAPI_DISPATCH_INFO_PRIVATE_SEGMENT_SIZE = 11
    AMD_DBGAPI_DISPATCH_INFO_GROUP_SEGMENT_SIZE = 12
    AMD_DBGAPI_DISPATCH_INFO_KERNEL_ARGUMENT_SEGMENT_ADDRESS = 13
    AMD_DBGAPI_DISPATCH_INFO_KERNEL_ENTRY_ADDRESS = 14
end

@cenum amd_dbgapi_dispatch_barrier_t::UInt32 begin
    AMD_DBGAPI_DISPATCH_BARRIER_NONE = 0
    AMD_DBGAPI_DISPATCH_BARRIER_PRESENT = 1
end

@cenum amd_dbgapi_dispatch_fence_scope_t::UInt32 begin
    AMD_DBGAPI_DISPATCH_FENCE_SCOPE_NONE = 0
    AMD_DBGAPI_DISPATCH_FENCE_SCOPE_AGENT = 1
    AMD_DBGAPI_DISPATCH_FENCE_SCOPE_SYSTEM = 2
end


struct amd_dbgapi_wave_id_t
    handle::UInt64
end

@cenum amd_dbgapi_wave_info_t::UInt32 begin
    AMD_DBGAPI_WAVE_INFO_STATE = 1
    AMD_DBGAPI_WAVE_INFO_STOP_REASON = 2
    AMD_DBGAPI_WAVE_INFO_WATCHPOINTS = 3
    AMD_DBGAPI_WAVE_INFO_DISPATCH = 4
    AMD_DBGAPI_WAVE_INFO_QUEUE = 5
    AMD_DBGAPI_WAVE_INFO_AGENT = 6
    AMD_DBGAPI_WAVE_INFO_ARCHITECTURE = 7
    AMD_DBGAPI_WAVE_INFO_PC = 8
    AMD_DBGAPI_WAVE_INFO_EXEC_MASK = 9
    AMD_DBGAPI_WAVE_INFO_WORK_GROUP_COORD = 10
    AMD_DBGAPI_WAVE_INFO_WAVE_NUMBER_IN_WORK_GROUP = 11
    AMD_DBGAPI_WAVE_INFO_LANE_COUNT = 12
end

@cenum amd_dbgapi_wave_state_t::UInt32 begin
    AMD_DBGAPI_WAVE_STATE_RUN = 1
    AMD_DBGAPI_WAVE_STATE_SINGLE_STEP = 2
    AMD_DBGAPI_WAVE_STATE_STOP = 3
end

@cenum amd_dbgapi_wave_stop_reason_t::UInt32 begin
    AMD_DBGAPI_WAVE_STOP_REASON_NONE = 0
    AMD_DBGAPI_WAVE_STOP_REASON_BREAKPOINT = 1
    AMD_DBGAPI_WAVE_STOP_REASON_WATCHPOINT = 2
    AMD_DBGAPI_WAVE_STOP_REASON_SINGLE_STEP = 4
    AMD_DBGAPI_WAVE_STOP_REASON_QUEUE_ERROR = 8
    AMD_DBGAPI_WAVE_STOP_REASON_FP_INPUT_DENORMAL = 16
    AMD_DBGAPI_WAVE_STOP_REASON_FP_DIVIDE_BY_0 = 32
    AMD_DBGAPI_WAVE_STOP_REASON_FP_OVERFLOW = 64
    AMD_DBGAPI_WAVE_STOP_REASON_FP_UNDERFLOW = 128
    AMD_DBGAPI_WAVE_STOP_REASON_FP_INEXACT = 256
    AMD_DBGAPI_WAVE_STOP_REASON_FP_INVALID_OPERATION = 512
    AMD_DBGAPI_WAVE_STOP_REASON_INT_DIVIDE_BY_0 = 1024
    AMD_DBGAPI_WAVE_STOP_REASON_DEBUG_TRAP = 2048
    AMD_DBGAPI_WAVE_STOP_REASON_ASSERT_TRAP = 4096
    AMD_DBGAPI_WAVE_STOP_REASON_TRAP = 8192
    AMD_DBGAPI_WAVE_STOP_REASON_MEMORY_VIOLATION = 16384
    AMD_DBGAPI_WAVE_STOP_REASON_ILLEGAL_INSTRUCTION = 32768
    AMD_DBGAPI_WAVE_STOP_REASON_ECC_ERROR = 65536
    AMD_DBGAPI_WAVE_STOP_REASON_FATAL_HALT = 131072
    AMD_DBGAPI_WAVE_STOP_REASON_XNACK_ERROR = 262144
end

@cenum amd_dbgapi_resume_mode_t::UInt32 begin
    AMD_DBGAPI_RESUME_MODE_NORMAL = 0
    AMD_DBGAPI_RESUME_MODE_SINGLE_STEP = 1
end


struct amd_dbgapi_displaced_stepping_id_t
    handle::UInt64
end

struct amd_dbgapi_watchpoint_id_t
    handle::UInt64
end

@cenum amd_dbgapi_watchpoint_share_kind_t::UInt32 begin
    AMD_DBGAPI_WATCHPOINT_SHARE_KIND_UNSUPPORTED = 0
    AMD_DBGAPI_WATCHPOINT_SHARE_KIND_UNSHARED = 1
    AMD_DBGAPI_WATCHPOINT_SHARE_KIND_SHARED = 2
end

@cenum amd_dbgapi_watchpoint_kind_t::UInt32 begin
    AMD_DBGAPI_WATCHPOINT_KIND_LOAD = 1
    AMD_DBGAPI_WATCHPOINT_KIND_STORE_AND_RMW = 2
    AMD_DBGAPI_WATCHPOINT_KIND_RMW = 3
    AMD_DBGAPI_WATCHPOINT_KIND_ALL = 4
end


struct amd_dbgapi_watchpoint_list_t
    count::Csize_t
    watchpoint_ids::Ptr{amd_dbgapi_watchpoint_id_t}
end

struct amd_dbgapi_register_class_id_t
    handle::UInt64
end

@cenum amd_dbgapi_register_class_info_t::UInt32 begin
    AMD_DBGAPI_REGISTER_CLASS_INFO_NAME = 1
end


struct amd_dbgapi_register_id_t
    handle::UInt64
end

@cenum amd_dbgapi_register_info_t::UInt32 begin
    AMD_DBGAPI_REGISTER_INFO_NAME = 1
    AMD_DBGAPI_REGISTER_INFO_SIZE = 2
    AMD_DBGAPI_REGISTER_INFO_TYPE = 3
end

@cenum amd_dbgapi_register_class_state_t::UInt32 begin
    AMD_DBGAPI_REGISTER_CLASS_STATE_NOT_MEMBER = 0
    AMD_DBGAPI_REGISTER_CLASS_STATE_MEMBER = 1
end


const amd_dbgapi_lane_id_t = UInt32

struct amd_dbgapi_address_class_id_t
    handle::UInt64
end

@cenum amd_dbgapi_address_class_info_t::UInt32 begin
    AMD_DBGAPI_ADDRESS_CLASS_INFO_NAME = 1
    AMD_DBGAPI_ADDRESS_CLASS_INFO_ADDRESS_SPACE = 2
end


struct amd_dbgapi_address_space_id_t
    handle::UInt64
end

@cenum amd_dbgapi_address_space_access_t::UInt32 begin
    AMD_DBGAPI_ADDRESS_SPACE_ACCESS_ALL = 1
    AMD_DBGAPI_ADDRESS_SPACE_ACCESS_PROGRAM_CONSTANT = 2
    AMD_DBGAPI_ADDRESS_SPACE_ACCESS_DISPATCH_CONSTANT = 3
end

@cenum amd_dbgapi_address_space_info_t::UInt32 begin
    AMD_DBGAPI_ADDRESS_SPACE_INFO_NAME = 1
    AMD_DBGAPI_ADDRESS_SPACE_INFO_ADDRESS_SIZE = 2
    AMD_DBGAPI_ADDRESS_SPACE_INFO_NULL_ADDRESS = 3
    AMD_DBGAPI_ADDRESS_SPACE_INFO_ACCESS = 4
end

@cenum amd_dbgapi_address_space_alias_t::UInt32 begin
    AMD_DBGAPI_ADDRESS_SPACE_ALIAS_NONE = 0
    AMD_DBGAPI_ADDRESS_SPACE_ALIAS_MAY = 1
end


const amd_dbgapi_segment_address_t = UInt64

@cenum amd_dbgapi_address_class_state_t::UInt32 begin
    AMD_DBGAPI_ADDRESS_CLASS_STATE_NOT_MEMBER = 0
    AMD_DBGAPI_ADDRESS_CLASS_STATE_MEMBER = 1
end

@cenum amd_dbgapi_memory_precision_t::UInt32 begin
    AMD_DBGAPI_MEMORY_PRECISION_NONE = 0
    AMD_DBGAPI_MEMORY_PRECISION_PRECISE = 1
end


struct amd_dbgapi_event_id_t
    handle::UInt64
end

@cenum amd_dbgapi_event_kind_t::UInt32 begin
    AMD_DBGAPI_EVENT_KIND_NONE = 0
    AMD_DBGAPI_EVENT_KIND_WAVE_STOP = 1
    AMD_DBGAPI_EVENT_KIND_WAVE_COMMAND_TERMINATED = 2
    AMD_DBGAPI_EVENT_KIND_CODE_OBJECT_LIST_UPDATED = 3
    AMD_DBGAPI_EVENT_KIND_BREAKPOINT_RESUME = 4
    AMD_DBGAPI_EVENT_KIND_RUNTIME = 5
    AMD_DBGAPI_EVENT_KIND_QUEUE_ERROR = 6
end

@cenum amd_dbgapi_runtime_state_t::UInt32 begin
    AMD_DBGAPI_RUNTIME_STATE_LOADED_SUPPORTED = 1
    AMD_DBGAPI_RUNTIME_STATE_LOADED_UNSUPPORTED = 2
    AMD_DBGAPI_RUNTIME_STATE_UNLOADED = 3
end

@cenum amd_dbgapi_event_info_t::UInt32 begin
    AMD_DBGAPI_EVENT_INFO_KIND = 1
    AMD_DBGAPI_EVENT_INFO_WAVE = 2
    AMD_DBGAPI_EVENT_INFO_BREAKPOINT = 3
    AMD_DBGAPI_EVENT_INFO_CLIENT_THREAD = 4
    AMD_DBGAPI_EVENT_INFO_RUNTIME_STATE = 5
    AMD_DBGAPI_EVENT_INFO_RUNTIME_VERSION = 6
end

@cenum amd_dbgapi_log_level_t::UInt32 begin
    AMD_DBGAPI_LOG_LEVEL_NONE = 0
    AMD_DBGAPI_LOG_LEVEL_FATAL_ERROR = 1
    AMD_DBGAPI_LOG_LEVEL_WARNING = 2
    AMD_DBGAPI_LOG_LEVEL_INFO = 3
    AMD_DBGAPI_LOG_LEVEL_VERBOSE = 4
end


struct amd_dbgapi_shared_library_id_t
    handle::UInt64
end

@cenum amd_dbgapi_shared_library_state_t::UInt32 begin
    AMD_DBGAPI_SHARED_LIBRARY_STATE_LOADED = 1
    AMD_DBGAPI_SHARED_LIBRARY_STATE_UNLOADED = 2
end


struct amd_dbgapi_breakpoint_id_t
    handle::UInt64
end

@cenum amd_dbgapi_breakpoint_action_t::UInt32 begin
    AMD_DBGAPI_BREAKPOINT_ACTION_RESUME = 1
    AMD_DBGAPI_BREAKPOINT_ACTION_HALT = 2
end

@cenum amd_dbgapi_breakpoint_state_t::UInt32 begin
    AMD_DBGAPI_BREAKPOINT_STATE_DISABLE = 1
    AMD_DBGAPI_BREAKPOINT_STATE_ENABLE = 2
end


const amd_dbgapi_client_thread_s = Cvoid
const amd_dbgapi_client_thread_id_t = Ptr{amd_dbgapi_client_thread_s}
