
function get_status_string(status::Status, status_string::Ref{Cstring})
    ccall((:amd_dbgapi_get_status_string, "librocm-dbgapi"), Status,
          (Status, Ref{Cstring}), status, status_string)
end

function get_version(major::Ref{UInt32}, minor::Ref{UInt32}, patch::Ref{UInt32})
    ccall((:amd_dbgapi_get_version, "librocm-dbgapi"), Cvoid,
          (Ref{UInt32}, Ref{UInt32}, Ref{UInt32}), major, minor, patch)
end

function get_build_name()
    ccall((:amd_dbgapi_get_build_name, "librocm-dbgapi"), Cstring, ())
end

function initialize(callbacks::Ref{Callbacks})
    ccall((:amd_dbgapi_initialize, "librocm-dbgapi"), Status,
          (Ref{Callbacks},), callbacks)
end

function finalize()
    ccall((:amd_dbgapi_finalize, "librocm-dbgapi"), Status, ())
end

function architecture_get_info(architecture_id::ArchitectureID, query::ArchitectureInfo,
                               value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_architecture_get_info, "librocm-dbgapi"), Status,
          (ArchitectureID, ArchitectureInfo, Csize_t, Ref{Cvoid}),
          architecture_id, query, value_size, value)
end

function get_architecture(elf_amdgpu_machine::UInt32, architecture_id::Ref{ArchitectureID})
    ccall((:amd_dbgapi_get_architecture, "librocm-dbgapi"), Status,
          (UInt32, Ref{ArchitectureID}), elf_amdgpu_machine, architecture_id)
end

function disassemble_instruction(architecture_id::ArchitectureID, address::GlobalAddress,
                                 size::Ref{UInt64}, memory::Ref{Cvoid},
                                 instruction_text::Ref{Cstring},
                                 address_operand_count::Ref{Csize_t},
                                 address_operands::Ref{Ptr{GlobalAddress}})

    ccall((:amd_dbgapi_disassemble_instruction, "librocm-dbgapi"), Status,
          (ArchitectureID, GlobalAddress, Ref{UInt64}, Ref{Cvoid}, Ref{Cstring},
           Ref{Csize_t}, Ref{Ptr{GlobalAddress}}), architecture_id, address, size, memory,
          instruction_text, address_operand_count, address_operands)
end

function process_get_info(process_id::ProcessID, query::ProcessInfo, value_size::Csize_t,
                          value::Ref{Cvoid})

    ccall((:amd_dbgapi_process_get_info, "librocm-dbgapi"), Status,
          (ProcessID, ProcessInfo, Csize_t, Ref{Cvoid}),
          process_id, query, value_size, value)
end

function process_attach(client_process_id::ClientProcessID, process_id::Ref{ProcessID})
    ccall((:amd_dbgapi_process_attach, "librocm-dbgapi"), Status,
          (ClientProcessID, Ref{ProcessID}), client_process_id, process_id)
end

function process_detach(process_id::ProcessID)
    ccall((:amd_dbgapi_process_detach, "librocm-dbgapi"), Status, (ProcessID,), process_id)
end

function process_set_progress(process_id::ProcessID, progress::Progress)
    ccall((:amd_dbgapi_process_set_progress, "librocm-dbgapi"), Status, (ProcessID, Progress), process_id, progress)
end

function code_object_get_info(process_id::ProcessID, code_object_id::CodeObjectID,
                              query::CodeObjectInfo, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_code_object_get_info, "librocm-dbgapi"), Status,
          (ProcessID, CodeObjectID, CodeObjectInfo, Csize_t, Ref{Cvoid}),
          process_id, code_object_id, query, value_size, value)
end

function code_object_list(process_id::ProcessID, code_object_count::Ref{Csize_t},
                          code_objects::Ref{Ptr{CodeObjectID}}, changed::Ref{Changed})
    ccall((:amd_dbgapi_code_object_list, "librocm-dbgapi"), Status,
          (ProcessID, Ref{Csize_t}, Ref{Ptr{CodeObjectID}}, Ref{Changed}),
          process_id, code_object_count, code_objects, changed)
end

function agent_get_info(process_id::ProcessID, agent_id::AgentID, query::AgentInfo,
                        value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_agent_get_info, "librocm-dbgapi"), Status,
          (ProcessID, AgentID, AgentInfo, Csize_t, Ref{Cvoid}),
          process_id, agent_id, query, value_size, value)
end

function agent_list(process_id::ProcessID, agent_count::Ref{Csize_t},
                    agents::Ref{Ptr{AgentID}}, changed::Ref{Changed})
    ccall((:amd_dbgapi_agent_list, "librocm-dbgapi"), Status,
          (ProcessID, Ref{Csize_t}, Ref{Ptr{AgentID}}, Ref{Changed}),
          process_id, agent_count, agents, changed)
end

function queue_get_info(process_id::ProcessID, queue_id::QueueID, query::QueueInfo,
                        value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_queue_get_info, "librocm-dbgapi"), Status,
          (ProcessID, QueueID, QueueInfo, Csize_t, Ref{Cvoid}),
          process_id, queue_id, query, value_size, value)
end

function queue_list(process_id::ProcessID, queue_count::Ref{Csize_t},
                    queues::Ref{Ptr{QueueID}}, changed::Ref{Changed})

    ccall((:amd_dbgapi_queue_list, "librocm-dbgapi"), Status,
          (ProcessID, Ref{Csize_t}, Ref{Ptr{QueueID}}, Ref{Changed}),
          process_id, queue_count, queues, changed)
end

function queue_packet_list(process_id::ProcessID, queue_id::QueueID,
                           first_packet_id::Ref{QueuePacketID},
                           packets_byte_size::Ref{UInt64},
                           packets_bytes::Ref{Ptr{Cvoid}})

    ccall((:amd_dbgapi_queue_packet_list, "librocm-dbgapi"), Status,
          (ProcessID, QueueID, Ref{QueuePacketID}, Ref{UInt64}, Ref{Ptr{Cvoid}}),
          process_id, queue_id, first_packet_id, packets_byte_size, packets_bytes)
end

function dispatch_get_info(process_id::ProcessID, dispatch_id::DispatchID,
                           query::DispatchInfo, value_size::Csize_t, value::Ref{Cvoid})

    ccall((:amd_dbgapi_dispatch_get_info, "librocm-dbgapi"), Status,
          (ProcessID, DispatchID, DispatchInfo, Csize_t, Ref{Cvoid}),
          process_id, dispatch_id, query, value_size, value)
end

function dispatch_list(process_id::ProcessID, dispatch_count::Ref{Csize_t},
                       dispatches::Ref{Ptr{DispatchID}}, changed::Ref{Changed})

    ccall((:amd_dbgapi_dispatch_list, "librocm-dbgapi"), Status,
          (ProcessID, Ref{Csize_t}, Ref{Ptr{DispatchID}}, Ref{Changed}),
          process_id, dispatch_count, dispatches, changed)
end

function wave_get_info(process_id::ProcessID, wave_id::WaveID, query::WaveInfo,
                       value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_wave_get_info, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, WaveInfo, Csize_t, Ref{Cvoid}),
          process_id, wave_id, query, value_size, value)
end

function wave_list(process_id::ProcessID, wave_count::Ref{Csize_t}, waves::Ref{Ptr{WaveID}},
                   changed::Ref{Changed})

    ccall((:amd_dbgapi_wave_list, "librocm-dbgapi"), Status,
          (ProcessID, Ref{Csize_t}, Ref{Ptr{WaveID}}, Ref{Changed}),
          process_id, wave_count, waves, changed)
end

function wave_stop(process_id::ProcessID, wave_id::WaveID)
    ccall((:amd_dbgapi_wave_stop, "librocm-dbgapi"), Status,
          (ProcessID, WaveID), process_id, wave_id)
end

function wave_resume(process_id::ProcessID, wave_id::WaveID, resume_mode::ResumeMode)
    ccall((:amd_dbgapi_wave_resume, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, ResumeMode), process_id, wave_id, resume_mode)
end

function displaced_stepping_start(process_id::ProcessID, wave_id::WaveID,
                                  saved_instruction_bytes::Ref{Cvoid},
                                  displaced_stepping::Ref{DisplacedSteppingID})

    ccall((:amd_dbgapi_displaced_stepping_start, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, Ref{Cvoid}, Ref{DisplacedSteppingID}),
          process_id, wave_id, saved_instruction_bytes, displaced_stepping)
end

function displaced_stepping_complete(process_id::ProcessID, wave_id::WaveID,
                                     displaced_stepping::DisplacedSteppingID)

    ccall((:amd_dbgapi_displaced_stepping_complete, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, DisplacedSteppingID), process_id, wave_id, displaced_stepping)
end

function set_watchpoint(process_id::ProcessID, agent_id::AgentID, address::GlobalAddress,
                        size::UInt64, kind::WatchpointKind,
                        watchpoint_id::Ref{WatchpointID},
                        watchpoint_address::Ref{GlobalAddress},
                        watchpoint_size::Ref{UInt64})

    ccall((:amd_dbgapi_set_watchpoint, "librocm-dbgapi"), Status,
          (ProcessID, AgentID, GlobalAddress, UInt64, WatchpointKind, Ref{WatchpointID},
           Ref{GlobalAddress}, Ref{UInt64}),
          process_id, agent_id, address, size, kind, watchpoint_id, watchpoint_address,
          watchpoint_size)
end

function remove_watchpoint(process_id::ProcessID, agent_id::AgentID,
                           watchpoint_id::WatchpointID)

    ccall((:amd_dbgapi_remove_watchpoint, "librocm-dbgapi"), Status,
          (ProcessID, AgentID, WatchpointID),
          process_id, agent_id, watchpoint_id)
end

function architecture_register_class_get_info(architecture_id::ArchitectureID,
                                              register_class_id::RegisterClassID,
                                              query::RegisterClassInfo,
                                              value_size::Csize_t, value::Ref{Cvoid})

    ccall((:amd_dbgapi_architecture_register_class_get_info, "librocm-dbgapi"), Status,
          (ArchitectureID, RegisterClassID, RegisterClassInfo, Csize_t, Ref{Cvoid}),
          architecture_id, register_class_id, query, value_size, value)
end

function architecture_register_class_list(architecture_id::ArchitectureID,
                                          register_class_count::Ref{Csize_t},
                                          register_classes::Ref{Ptr{RegisterClassID}})

    ccall((:amd_dbgapi_architecture_register_class_list, "librocm-dbgapi"), Status,
          (ArchitectureID, Ref{Csize_t}, Ref{Ptr{RegisterClassID}}),
          architecture_id, register_class_count, register_classes)
end

function architecture_register_get_info(architecture_id::ArchitectureID,
                                        register_id::RegisterID, query::RegisterInfo,
                                        value_size::Csize_t, value::Ref{Cvoid})

    ccall((:amd_dbgapi_architecture_register_get_info, "librocm-dbgapi"), Status,
          (ArchitectureID, RegisterID, RegisterInfo, Csize_t, Ref{Cvoid}),
          architecture_id, register_id, query, value_size, value)
end

function wave_register_get_info(process_id::ProcessID, wave_id::WaveID,
                                register_id::RegisterID, query::RegisterInfo,
                                value_size::Csize_t, value::Ref{Cvoid})

    ccall((:amd_dbgapi_wave_register_get_info, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, RegisterID, RegisterInfo, Csize_t, Ref{Cvoid}),
          process_id, wave_id, register_id, query, value_size, value)
end

function architecture_register_list(architecture_id::ArchitectureID,
                                    register_count::Ref{Csize_t},
                                    registers::Ref{Ptr{RegisterID}})

    ccall((:amd_dbgapi_architecture_register_list, "librocm-dbgapi"), Status,
          (ArchitectureID, Ref{Csize_t}, Ref{Ptr{RegisterID}}),
          architecture_id, register_count, registers)
end

function wave_register_list(process_id::ProcessID, wave_id::WaveID,
                            register_count::Ref{Csize_t},
                            registers::Ref{Ptr{RegisterID}})

    ccall((:amd_dbgapi_wave_register_list, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, Ref{Csize_t}, Ref{Ptr{RegisterID}}),
          process_id, wave_id, register_count, registers)
end

function dwarf_register_to_register(architecture_id::ArchitectureID, dwarf_register::UInt64,
                                    register_id::Ref{RegisterID})

    ccall((:amd_dbgapi_dwarf_register_to_register, "librocm-dbgapi"), Status,
          (ArchitectureID, UInt64, Ref{RegisterID}),
          architecture_id, dwarf_register, register_id)
end

function register_is_in_register_class(architecture_id::ArchitectureID,
                                       register_id::RegisterID,
                                       register_class_id::RegisterClassID,
                                       register_class_state::Ref{RegisterClassState})

    ccall((:amd_dbgapi_register_is_in_register_class, "librocm-dbgapi"), Status,
          (ArchitectureID, RegisterID, RegisterClassID, Ref{RegisterClassState}),
          architecture_id, register_id, register_class_id, register_class_state)
end

function read_register(process_id::ProcessID, wave_id::WaveID, register_id::RegisterID,
                       offset::UInt64, value_size::UInt64, value::Ref{Cvoid})

    ccall((:amd_dbgapi_read_register, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, RegisterID, UInt64, UInt64, Ref{Cvoid}),
          process_id, wave_id, register_id, offset, value_size, value)
end

function write_register(process_id::ProcessID, wave_id::WaveID, register_id::RegisterID,
                        offset::UInt64, value_size::UInt64, value::Ref{Cvoid})

    ccall((:amd_dbgapi_write_register, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, RegisterID, UInt64, UInt64, Ref{Cvoid}),
          process_id, wave_id, register_id, offset, value_size, value)
end

function prefetch_register(process_id::ProcessID, wave_id::WaveID, register_id::RegisterID,
                           register_count::UInt64)

    ccall((:amd_dbgapi_prefetch_register, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, RegisterID, UInt64),
          process_id, wave_id, register_id, register_count)
end

function architecture_address_class_get_info(architecture_id::ArchitectureID,
                                             address_class_id::AddressClassID,
                                             query::AddressClassInfo, value_size::Csize_t,
                                             value::Ref{Cvoid})

    ccall((:amd_dbgapi_architecture_address_class_get_info, "librocm-dbgapi"), Status,
          (ArchitectureID, AddressClassID, AddressClassInfo, Csize_t, Ref{Cvoid}),
          architecture_id, address_class_id, query, value_size, value)
end

function architecture_address_class_list(architecture_id::ArchitectureID,
                                         address_class_count::Ref{Csize_t},
                                         address_classes::Ref{Ptr{AddressClassID}})

    ccall((:amd_dbgapi_architecture_address_class_list, "librocm-dbgapi"), Status,
          (ArchitectureID, Ref{Csize_t}, Ref{Ptr{AddressClassID}}),
          architecture_id, address_class_count, address_classes)
end

function dwarf_address_class_to_address_class(architecture_id::ArchitectureID,
                                              dwarf_address_class::UInt64,
                                              address_class_id::Ref{AddressClassID})

    ccall((:amd_dbgapi_dwarf_address_class_to_address_class, "librocm-dbgapi"), Status,
          (ArchitectureID, UInt64, Ref{AddressClassID}),
          architecture_id, dwarf_address_class, address_class_id)
end

function address_space_get_info(architecture_id::ArchitectureID,
                                address_space_id::AddressSpaceID,
                                query::AddressSpaceInfo, value_size::Csize_t,
                                value::Ref{Cvoid})

    ccall((:amd_dbgapi_address_space_get_info, "librocm-dbgapi"), Status,
          (ArchitectureID, AddressSpaceID, AddressSpaceInfo, Csize_t, Ref{Cvoid}),
          architecture_id, address_space_id, query, value_size, value)
end

function architecture_address_space_list(architecture_id::ArchitectureID,
                                         address_space_count::Ref{Csize_t},
                                         address_spaces::Ref{Ptr{AddressSpaceID}})

    ccall((:amd_dbgapi_architecture_address_space_list, "librocm-dbgapi"), Status,
          (ArchitectureID, Ref{Csize_t}, Ref{Ptr{AddressSpaceID}}),
          architecture_id, address_space_count, address_spaces)
end

function dwarf_address_space_to_address_space(architecture_id::ArchitectureID,
                                              dwarf_address_space::UInt64,
                                              address_space_id::Ref{AddressSpaceID})

    ccall((:amd_dbgapi_dwarf_address_space_to_address_space, "librocm-dbgapi"), Status,
          (ArchitectureID, UInt64, Ref{AddressSpaceID}),
          architecture_id, dwarf_address_space, address_space_id)
end

function address_spaces_may_alias(architecture_id::ArchitectureID,
                                  address_space_id1::AddressSpaceID,
                                  address_space_id2::AddressSpaceID,
                                  address_space_alias::Ref{AddressSpaceAlias})

    ccall((:amd_dbgapi_address_spaces_may_alias, "librocm-dbgapi"), Status,
          (ArchitectureID, AddressSpaceID, AddressSpaceID, Ref{AddressSpaceAlias}),
          architecture_id, address_space_id1, address_space_id2, address_space_alias)
end

function convert_address_space(process_id::ProcessID, wave_id::WaveID, lane_id::LaneID,
                               source_address_space_id::AddressSpaceID,
                               source_segment_address::SegmentAddress,
                               destination_address_space_id::AddressSpaceID,
                               destination_segment_address::Ref{SegmentAddress})

    ccall((:amd_dbgapi_convert_address_space, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, LaneID, AddressSpaceID, SegmentAddress, AddressSpaceID,
           Ref{SegmentAddress}),
          process_id, wave_id, lane_id, source_address_space_id, source_segment_address,
          destination_address_space_id, destination_segment_address)
end

function address_is_in_address_class(process_id::ProcessID, wave_id::WaveID,
                                     lane_id::LaneID, address_space_id::AddressSpaceID,
                                     segment_address::SegmentAddress,
                                     address_class_id::AddressClassID,
                                     address_class_state::Ref{AddressClassState})

    ccall((:amd_dbgapi_address_is_in_address_class, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, LaneID, AddressSpaceID, SegmentAddress, AddressClassID,
           Ref{AddressClassState}),
          process_id, wave_id, lane_id, address_space_id, segment_address, address_class_id,
          address_class_state)
end

function read_memory(process_id::ProcessID, wave_id::WaveID, lane_id::LaneID,
                     address_space_id::AddressSpaceID, segment_address::SegmentAddress,
                     value_size::Ref{UInt64}, value::Ref{Cvoid})

    ccall((:amd_dbgapi_read_memory, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, LaneID, AddressSpaceID, SegmentAddress, Ref{UInt64},
           Ref{Cvoid}),
          process_id, wave_id, lane_id, address_space_id, segment_address, value_size,
          value)
end

function write_memory(process_id::ProcessID, wave_id::WaveID, lane_id::LaneID,
                      address_space_id::AddressSpaceID, segment_address::SegmentAddress,
                      value_size::Ref{UInt64}, value::Ref{Cvoid})

    ccall((:amd_dbgapi_write_memory, "librocm-dbgapi"), Status,
          (ProcessID, WaveID, LaneID, AddressSpaceID, SegmentAddress, Ref{UInt64},
           Ref{Cvoid}),
          process_id, wave_id, lane_id, address_space_id, segment_address, value_size,
          value)
end

function set_memory_precision(process_id::ProcessID, agent_id::AgentID,
                              memory_precision::MemoryPrecision)

    ccall((:amd_dbgapi_set_memory_precision, "librocm-dbgapi"), Status,
          (ProcessID, AgentID, MemoryPrecision), process_id, agent_id, memory_precision)
end

function next_pending_event(process_id::ProcessID, event_id::Ref{EventID},
                            kind::Ref{EventKind})

    ccall((:amd_dbgapi_next_pending_event, "librocm-dbgapi"), Status,
          (ProcessID, Ref{EventID}, Ref{EventKind}), process_id, event_id, kind)
end

function event_get_info(process_id::ProcessID, event_id::EventID, query::EventInfo,
                        value_size::Csize_t, value::Ref{Cvoid})

    ccall((:amd_dbgapi_event_get_info, "librocm-dbgapi"), Status,
          (ProcessID, EventID, EventInfo, Csize_t, Ref{Cvoid}),
          process_id, event_id, query, value_size, value)
end

function event_processed(process_id::ProcessID, event_id::EventID)
    ccall((:amd_dbgapi_event_processed, "librocm-dbgapi"), Status,
          (ProcessID, EventID),
          process_id, event_id)
end

function set_log_level(level::LogLevel)
    ccall((:amd_dbgapi_set_log_level, "librocm-dbgapi"), Cvoid,
          (LogLevel,), level)
end

function report_shared_library(process_id::ProcessID, shared_library_id::SharedLibraryID,
                               shared_library_state::SharedLibraryState)

    ccall((:amd_dbgapi_report_shared_library, "librocm-dbgapi"), Status,
          (ProcessID, SharedLibraryID, SharedLibraryState),
          process_id, shared_library_id, shared_library_state)
end

function report_breakpoint_hit(process_id::ProcessID, breakpoint_id::BreakpointID,
                               client_thread_id::ClientThreadID,
                               breakpoint_action::Ref{BreakpointAction})

    ccall((:amd_dbgapi_report_breakpoint_hit, "librocm-dbgapi"), Status,
          (ProcessID, BreakpointID, ClientThreadID, Ref{BreakpointAction}),
          process_id, breakpoint_id, client_thread_id, breakpoint_action)
end

