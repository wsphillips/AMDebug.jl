const AMD_DBGAPI_SYMBOL_VERSION = "AMD_DBGAPI_0.19"
const GlobalAddress = UInt64
const Notifier = Cint
const ClientProcessID = Ptr{Cvoid}
const QueuePacketID = UInt64
const WatchpointID = UInt32
const LaneID = UInt32
const SegmentAddress = UInt64
const ClientThreadID = Ptr{Cvoid}

# Perhaps useful to know macro definitions for object handle values...
# AMD_DBGAPI_ARCHITECTURE_NONE ( amd_dbgapi_architecture_id_t { 0 } )
# AMD_DBGAPI_PROCESS_NONE ( amd_dbgapi_process_id_t { 0 } )
# AMD_DBGAPI_CODE_OBJECT_NONE ( amd_dbgapi_code_object_id_t { 0 } )
# AMD_DBGAPI_AGENT_NONE ( amd_dbgapi_agent_id_t { 0 } )
# AMD_DBGAPI_QUEUE_NONE ( amd_dbgapi_queue_id_t { 0 } )
# AMD_DBGAPI_DISPATCH_NONE ( amd_dbgapi_dispatch_id_t { 0 } )
# AMD_DBGAPI_WAVE_NONE ( amd_dbgapi_wave_id_t { 0 } )
# AMD_DBGAPI_DISPLACED_STEPPING_NONE ( amd_dbgapi_displaced_stepping_id_t { 0 } )
# AMD_DBGAPI_WATCHPOINT_NONE ( amd_dbgapi_watchpoint_id_t ( - 1 ) )
# AMD_DBGAPI_REGISTER_CLASS_NONE ( amd_dbgapi_register_class_id_t { 0 } )
# AMD_DBGAPI_REGISTER_NONE ( amd_dbgapi_register_id_t { 0 } )
# AMD_DBGAPI_LANE_NONE ( amd_dbgapi_lane_id_t ( - 1 ) )
# AMD_DBGAPI_ADDRESS_CLASS_NONE ( amd_dbgapi_address_class_id_t { 0 } )
# AMD_DBGAPI_EVENT_NONE ( amd_dbgapi_event_id_t { 0 } )
# AMD_DBGAPI_SHARED_LIBRARY_NONE ( amd_dbgapi_shared_library_id_t { 0 } )
# AMD_DBGAPI_BREAKPOINT_NONE ( amd_dbgapi_breakpoint_id_t { 0 } )

