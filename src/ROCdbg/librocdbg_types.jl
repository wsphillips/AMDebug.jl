struct Callbacks
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

struct ArchitectureID
    handle::UInt64
end

struct ProcessID
    handle::UInt64
end

struct CodeObjectID
    handle::UInt64
end

struct AgentID
    handle::UInt64
end

struct QueueID
    handle::UInt64
end

struct DispatchID
    handle::UInt64
end

struct WaveID
    handle::UInt64
end

struct DisplacedSteppingID
    handle::UInt64
end

struct RegisterClassID
    handle::UInt64
end

struct RegisterID
    handle::UInt64
end

struct AddressClassID
    handle::UInt64
end

struct AddressSpaceID
    handle::UInt64
end

struct EventID
    handle::UInt64
end

struct SharedLibraryID
    handle::UInt64
end

struct BreakpointID
    handle::UInt64
end


