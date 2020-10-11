
function var""(__nfds::Cint, __readfds::Ref{fd_set}, __writefds::Ref{fd_set}, __exceptfds::Ref{fd_set}, __timeout::Ref{timeval})
    ccall((:select, Symbol("librocm-dbgapi")), Cint, (Cint, Ref{fd_set}, Ref{fd_set}, Ref{fd_set}, Ref{timeval}), __nfds, __readfds, __writefds, __exceptfds, __timeout)
end

function var""(__nfds::Cint, __readfds::Ref{fd_set}, __writefds::Ref{fd_set}, __exceptfds::Ref{fd_set}, __timeout::Ref{timespec}, __sigmask::Ref{__sigset_t})
    ccall((:pselect, Symbol("librocm-dbgapi")), Cint, (Cint, Ref{fd_set}, Ref{fd_set}, Ref{fd_set}, Ref{timespec}, Ref{__sigset_t}), __nfds, __readfds, __writefds, __exceptfds, __timeout, __sigmask)
end

function get_status_string(status::amd_dbgapi_status_t, status_string::Ref{Cstring})
    ccall((:amd_dbgapi_get_status_string, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_status_t, Ref{Cstring}), status, status_string)
end

function get_version(major::Ref{UInt32}, minor::Ref{UInt32}, patch::Ref{UInt32})
    ccall((:amd_dbgapi_get_version, Symbol("librocm-dbgapi")), Cvoid, (Ref{UInt32}, Ref{UInt32}, Ref{UInt32}), major, minor, patch)
end

function get_build_name()
    ccall((:amd_dbgapi_get_build_name, Symbol("librocm-dbgapi")), Cstring, ())
end

function initialize(callbacks::Ref{amd_dbgapi_callbacks_t})
    ccall((:amd_dbgapi_initialize, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (Ref{amd_dbgapi_callbacks_t},), callbacks)
end

function finalize()
    ccall((:amd_dbgapi_finalize, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, ())
end

function architecture_get_info(architecture_id::amd_dbgapi_architecture_id_t, query::amd_dbgapi_architecture_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_architecture_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_architecture_info_t, Csize_t, Ref{Cvoid}), architecture_id, query, value_size, value)
end

function get_architecture(elf_amdgpu_machine::UInt32, architecture_id::Ref{amd_dbgapi_architecture_id_t})
    ccall((:amd_dbgapi_get_architecture, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (UInt32, Ref{amd_dbgapi_architecture_id_t}), elf_amdgpu_machine, architecture_id)
end

function disassemble_instruction(architecture_id::amd_dbgapi_architecture_id_t, address::amd_dbgapi_global_address_t, size::Ref{amd_dbgapi_size_t}, memory::Ref{Cvoid}, instruction_text::Ref{Cstring}, symbolizer_id::amd_dbgapi_symbolizer_id_t, symbolizer::Ref{Cvoid})
    ccall((:amd_dbgapi_disassemble_instruction, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_global_address_t, Ref{amd_dbgapi_size_t}, Ref{Cvoid}, Ref{Cstring}, amd_dbgapi_symbolizer_id_t, Ref{Cvoid}), architecture_id, address, size, memory, instruction_text, symbolizer_id, symbolizer)
end

function classify_instruction(architecture_id::amd_dbgapi_architecture_id_t, address::amd_dbgapi_global_address_t, size::Ref{amd_dbgapi_size_t}, memory::Ref{Cvoid}, instruction_kind::Ref{amd_dbgapi_instruction_kind_t}, instruction_properties::Ref{Ptr{Cvoid}})
    ccall((:amd_dbgapi_classify_instruction, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_global_address_t, Ref{amd_dbgapi_size_t}, Ref{Cvoid}, Ref{amd_dbgapi_instruction_kind_t}, Ref{Ptr{Cvoid}}), architecture_id, address, size, memory, instruction_kind, instruction_properties)
end

function process_get_info(process_id::amd_dbgapi_process_id_t, query::amd_dbgapi_process_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_process_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_process_info_t, Csize_t, Ref{Cvoid}), process_id, query, value_size, value)
end

function process_attach(client_process_id::amd_dbgapi_client_process_id_t, process_id::Ref{amd_dbgapi_process_id_t})
    ccall((:amd_dbgapi_process_attach, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_client_process_id_t, Ref{amd_dbgapi_process_id_t}), client_process_id, process_id)
end

function process_detach(process_id::amd_dbgapi_process_id_t)
    ccall((:amd_dbgapi_process_detach, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t,), process_id)
end

function process_set_progress(process_id::amd_dbgapi_process_id_t, progress::amd_dbgapi_progress_t)
    ccall((:amd_dbgapi_process_set_progress, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_progress_t), process_id, progress)
end

function process_set_wave_creation(process_id::amd_dbgapi_process_id_t, creation::amd_dbgapi_wave_creation_t)
    ccall((:amd_dbgapi_process_set_wave_creation, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_creation_t), process_id, creation)
end

function code_object_get_info(process_id::amd_dbgapi_process_id_t, code_object_id::amd_dbgapi_code_object_id_t, query::amd_dbgapi_code_object_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_code_object_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_code_object_id_t, amd_dbgapi_code_object_info_t, Csize_t, Ref{Cvoid}), process_id, code_object_id, query, value_size, value)
end

function code_object_list(process_id::amd_dbgapi_process_id_t, code_object_count::Ref{Csize_t}, code_objects::Ref{Ptr{amd_dbgapi_code_object_id_t}}, changed::Ref{amd_dbgapi_changed_t})
    ccall((:amd_dbgapi_code_object_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_code_object_id_t}}, Ref{amd_dbgapi_changed_t}), process_id, code_object_count, code_objects, changed)
end

function agent_get_info(process_id::amd_dbgapi_process_id_t, agent_id::amd_dbgapi_agent_id_t, query::amd_dbgapi_agent_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_agent_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_agent_id_t, amd_dbgapi_agent_info_t, Csize_t, Ref{Cvoid}), process_id, agent_id, query, value_size, value)
end

function agent_list(process_id::amd_dbgapi_process_id_t, agent_count::Ref{Csize_t}, agents::Ref{Ptr{amd_dbgapi_agent_id_t}}, changed::Ref{amd_dbgapi_changed_t})
    ccall((:amd_dbgapi_agent_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_agent_id_t}}, Ref{amd_dbgapi_changed_t}), process_id, agent_count, agents, changed)
end

function queue_get_info(process_id::amd_dbgapi_process_id_t, queue_id::amd_dbgapi_queue_id_t, query::amd_dbgapi_queue_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_queue_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_queue_id_t, amd_dbgapi_queue_info_t, Csize_t, Ref{Cvoid}), process_id, queue_id, query, value_size, value)
end

function queue_list(process_id::amd_dbgapi_process_id_t, queue_count::Ref{Csize_t}, queues::Ref{Ptr{amd_dbgapi_queue_id_t}}, changed::Ref{amd_dbgapi_changed_t})
    ccall((:amd_dbgapi_queue_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_queue_id_t}}, Ref{amd_dbgapi_changed_t}), process_id, queue_count, queues, changed)
end

function queue_packet_list(process_id::amd_dbgapi_process_id_t, queue_id::amd_dbgapi_queue_id_t, first_packet_id::Ref{amd_dbgapi_queue_packet_id_t}, packets_byte_size::Ref{amd_dbgapi_size_t}, packets_bytes::Ref{Ptr{Cvoid}})
    ccall((:amd_dbgapi_queue_packet_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_queue_id_t, Ref{amd_dbgapi_queue_packet_id_t}, Ref{amd_dbgapi_size_t}, Ref{Ptr{Cvoid}}), process_id, queue_id, first_packet_id, packets_byte_size, packets_bytes)
end

function dispatch_get_info(process_id::amd_dbgapi_process_id_t, dispatch_id::amd_dbgapi_dispatch_id_t, query::amd_dbgapi_dispatch_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_dispatch_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_dispatch_id_t, amd_dbgapi_dispatch_info_t, Csize_t, Ref{Cvoid}), process_id, dispatch_id, query, value_size, value)
end

function dispatch_list(process_id::amd_dbgapi_process_id_t, dispatch_count::Ref{Csize_t}, dispatches::Ref{Ptr{amd_dbgapi_dispatch_id_t}}, changed::Ref{amd_dbgapi_changed_t})
    ccall((:amd_dbgapi_dispatch_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_dispatch_id_t}}, Ref{amd_dbgapi_changed_t}), process_id, dispatch_count, dispatches, changed)
end

function wave_get_info(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, query::amd_dbgapi_wave_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_wave_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_wave_info_t, Csize_t, Ref{Cvoid}), process_id, wave_id, query, value_size, value)
end

function wave_list(process_id::amd_dbgapi_process_id_t, wave_count::Ref{Csize_t}, waves::Ref{Ptr{amd_dbgapi_wave_id_t}}, changed::Ref{amd_dbgapi_changed_t})
    ccall((:amd_dbgapi_wave_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_wave_id_t}}, Ref{amd_dbgapi_changed_t}), process_id, wave_count, waves, changed)
end

function wave_stop(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t)
    ccall((:amd_dbgapi_wave_stop, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t), process_id, wave_id)
end

function wave_resume(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, resume_mode::amd_dbgapi_resume_mode_t)
    ccall((:amd_dbgapi_wave_resume, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_resume_mode_t), process_id, wave_id, resume_mode)
end

function displaced_stepping_start(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, saved_instruction_bytes::Ref{Cvoid}, displaced_stepping::Ref{amd_dbgapi_displaced_stepping_id_t})
    ccall((:amd_dbgapi_displaced_stepping_start, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, Ref{Cvoid}, Ref{amd_dbgapi_displaced_stepping_id_t}), process_id, wave_id, saved_instruction_bytes, displaced_stepping)
end

function displaced_stepping_complete(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, displaced_stepping::amd_dbgapi_displaced_stepping_id_t)
    ccall((:amd_dbgapi_displaced_stepping_complete, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_displaced_stepping_id_t), process_id, wave_id, displaced_stepping)
end

function set_watchpoint(process_id::amd_dbgapi_process_id_t, address::amd_dbgapi_global_address_t, size::amd_dbgapi_size_t, kind::amd_dbgapi_watchpoint_kind_t, watchpoint_id::Ref{amd_dbgapi_watchpoint_id_t}, watchpoint_address::Ref{amd_dbgapi_global_address_t}, watchpoint_size::Ref{amd_dbgapi_size_t})
    ccall((:amd_dbgapi_set_watchpoint, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_global_address_t, amd_dbgapi_size_t, amd_dbgapi_watchpoint_kind_t, Ref{amd_dbgapi_watchpoint_id_t}, Ref{amd_dbgapi_global_address_t}, Ref{amd_dbgapi_size_t}), process_id, address, size, kind, watchpoint_id, watchpoint_address, watchpoint_size)
end

function remove_watchpoint(process_id::amd_dbgapi_process_id_t, watchpoint_id::amd_dbgapi_watchpoint_id_t)
    ccall((:amd_dbgapi_remove_watchpoint, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_watchpoint_id_t), process_id, watchpoint_id)
end

function architecture_register_class_get_info(architecture_id::amd_dbgapi_architecture_id_t, register_class_id::amd_dbgapi_register_class_id_t, query::amd_dbgapi_register_class_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_architecture_register_class_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_register_class_id_t, amd_dbgapi_register_class_info_t, Csize_t, Ref{Cvoid}), architecture_id, register_class_id, query, value_size, value)
end

function architecture_register_class_list(architecture_id::amd_dbgapi_architecture_id_t, register_class_count::Ref{Csize_t}, register_classes::Ref{Ptr{amd_dbgapi_register_class_id_t}})
    ccall((:amd_dbgapi_architecture_register_class_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_register_class_id_t}}), architecture_id, register_class_count, register_classes)
end

function architecture_register_get_info(architecture_id::amd_dbgapi_architecture_id_t, register_id::amd_dbgapi_register_id_t, query::amd_dbgapi_register_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_architecture_register_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_register_id_t, amd_dbgapi_register_info_t, Csize_t, Ref{Cvoid}), architecture_id, register_id, query, value_size, value)
end

function wave_register_get_info(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, register_id::amd_dbgapi_register_id_t, query::amd_dbgapi_register_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_wave_register_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_register_id_t, amd_dbgapi_register_info_t, Csize_t, Ref{Cvoid}), process_id, wave_id, register_id, query, value_size, value)
end

function architecture_register_list(architecture_id::amd_dbgapi_architecture_id_t, register_count::Ref{Csize_t}, registers::Ref{Ptr{amd_dbgapi_register_id_t}})
    ccall((:amd_dbgapi_architecture_register_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_register_id_t}}), architecture_id, register_count, registers)
end

function wave_register_list(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, register_count::Ref{Csize_t}, registers::Ref{Ptr{amd_dbgapi_register_id_t}})
    ccall((:amd_dbgapi_wave_register_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_register_id_t}}), process_id, wave_id, register_count, registers)
end

function dwarf_register_to_register(architecture_id::amd_dbgapi_architecture_id_t, dwarf_register::UInt64, register_id::Ref{amd_dbgapi_register_id_t})
    ccall((:amd_dbgapi_dwarf_register_to_register, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, UInt64, Ref{amd_dbgapi_register_id_t}), architecture_id, dwarf_register, register_id)
end

function register_is_in_register_class(architecture_id::amd_dbgapi_architecture_id_t, register_id::amd_dbgapi_register_id_t, register_class_id::amd_dbgapi_register_class_id_t, register_class_state::Ref{amd_dbgapi_register_class_state_t})
    ccall((:amd_dbgapi_register_is_in_register_class, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_register_id_t, amd_dbgapi_register_class_id_t, Ref{amd_dbgapi_register_class_state_t}), architecture_id, register_id, register_class_id, register_class_state)
end

function read_register(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, register_id::amd_dbgapi_register_id_t, offset::amd_dbgapi_size_t, value_size::amd_dbgapi_size_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_read_register, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_register_id_t, amd_dbgapi_size_t, amd_dbgapi_size_t, Ref{Cvoid}), process_id, wave_id, register_id, offset, value_size, value)
end

function write_register(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, register_id::amd_dbgapi_register_id_t, offset::amd_dbgapi_size_t, value_size::amd_dbgapi_size_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_write_register, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_register_id_t, amd_dbgapi_size_t, amd_dbgapi_size_t, Ref{Cvoid}), process_id, wave_id, register_id, offset, value_size, value)
end

function prefetch_register(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, register_id::amd_dbgapi_register_id_t, register_count::amd_dbgapi_size_t)
    ccall((:amd_dbgapi_prefetch_register, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_register_id_t, amd_dbgapi_size_t), process_id, wave_id, register_id, register_count)
end

function architecture_address_class_get_info(architecture_id::amd_dbgapi_architecture_id_t, address_class_id::amd_dbgapi_address_class_id_t, query::amd_dbgapi_address_class_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_architecture_address_class_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_address_class_id_t, amd_dbgapi_address_class_info_t, Csize_t, Ref{Cvoid}), architecture_id, address_class_id, query, value_size, value)
end

function architecture_address_class_list(architecture_id::amd_dbgapi_architecture_id_t, address_class_count::Ref{Csize_t}, address_classes::Ref{Ptr{amd_dbgapi_address_class_id_t}})
    ccall((:amd_dbgapi_architecture_address_class_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_address_class_id_t}}), architecture_id, address_class_count, address_classes)
end

function dwarf_address_class_to_address_class(architecture_id::amd_dbgapi_architecture_id_t, dwarf_address_class::UInt64, address_class_id::Ref{amd_dbgapi_address_class_id_t})
    ccall((:amd_dbgapi_dwarf_address_class_to_address_class, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, UInt64, Ref{amd_dbgapi_address_class_id_t}), architecture_id, dwarf_address_class, address_class_id)
end

function address_space_get_info(architecture_id::amd_dbgapi_architecture_id_t, address_space_id::amd_dbgapi_address_space_id_t, query::amd_dbgapi_address_space_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_address_space_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_address_space_id_t, amd_dbgapi_address_space_info_t, Csize_t, Ref{Cvoid}), architecture_id, address_space_id, query, value_size, value)
end

function architecture_address_space_list(architecture_id::amd_dbgapi_architecture_id_t, address_space_count::Ref{Csize_t}, address_spaces::Ref{Ptr{amd_dbgapi_address_space_id_t}})
    ccall((:amd_dbgapi_architecture_address_space_list, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, Ref{Csize_t}, Ref{Ptr{amd_dbgapi_address_space_id_t}}), architecture_id, address_space_count, address_spaces)
end

function dwarf_address_space_to_address_space(architecture_id::amd_dbgapi_architecture_id_t, dwarf_address_space::UInt64, address_space_id::Ref{amd_dbgapi_address_space_id_t})
    ccall((:amd_dbgapi_dwarf_address_space_to_address_space, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, UInt64, Ref{amd_dbgapi_address_space_id_t}), architecture_id, dwarf_address_space, address_space_id)
end

function address_spaces_may_alias(architecture_id::amd_dbgapi_architecture_id_t, address_space_id1::amd_dbgapi_address_space_id_t, address_space_id2::amd_dbgapi_address_space_id_t, address_space_alias::Ref{amd_dbgapi_address_space_alias_t})
    ccall((:amd_dbgapi_address_spaces_may_alias, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_architecture_id_t, amd_dbgapi_address_space_id_t, amd_dbgapi_address_space_id_t, Ref{amd_dbgapi_address_space_alias_t}), architecture_id, address_space_id1, address_space_id2, address_space_alias)
end

function convert_address_space(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, lane_id::amd_dbgapi_lane_id_t, source_address_space_id::amd_dbgapi_address_space_id_t, source_segment_address::amd_dbgapi_segment_address_t, destination_address_space_id::amd_dbgapi_address_space_id_t, destination_segment_address::Ref{amd_dbgapi_segment_address_t})
    ccall((:amd_dbgapi_convert_address_space, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_lane_id_t, amd_dbgapi_address_space_id_t, amd_dbgapi_segment_address_t, amd_dbgapi_address_space_id_t, Ref{amd_dbgapi_segment_address_t}), process_id, wave_id, lane_id, source_address_space_id, source_segment_address, destination_address_space_id, destination_segment_address)
end

function address_is_in_address_class(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, lane_id::amd_dbgapi_lane_id_t, address_space_id::amd_dbgapi_address_space_id_t, segment_address::amd_dbgapi_segment_address_t, address_class_id::amd_dbgapi_address_class_id_t, address_class_state::Ref{amd_dbgapi_address_class_state_t})
    ccall((:amd_dbgapi_address_is_in_address_class, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_lane_id_t, amd_dbgapi_address_space_id_t, amd_dbgapi_segment_address_t, amd_dbgapi_address_class_id_t, Ref{amd_dbgapi_address_class_state_t}), process_id, wave_id, lane_id, address_space_id, segment_address, address_class_id, address_class_state)
end

function read_memory(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, lane_id::amd_dbgapi_lane_id_t, address_space_id::amd_dbgapi_address_space_id_t, segment_address::amd_dbgapi_segment_address_t, value_size::Ref{amd_dbgapi_size_t}, value::Ref{Cvoid})
    ccall((:amd_dbgapi_read_memory, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_lane_id_t, amd_dbgapi_address_space_id_t, amd_dbgapi_segment_address_t, Ref{amd_dbgapi_size_t}, Ref{Cvoid}), process_id, wave_id, lane_id, address_space_id, segment_address, value_size, value)
end

function write_memory(process_id::amd_dbgapi_process_id_t, wave_id::amd_dbgapi_wave_id_t, lane_id::amd_dbgapi_lane_id_t, address_space_id::amd_dbgapi_address_space_id_t, segment_address::amd_dbgapi_segment_address_t, value_size::Ref{amd_dbgapi_size_t}, value::Ref{Cvoid})
    ccall((:amd_dbgapi_write_memory, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_wave_id_t, amd_dbgapi_lane_id_t, amd_dbgapi_address_space_id_t, amd_dbgapi_segment_address_t, Ref{amd_dbgapi_size_t}, Ref{Cvoid}), process_id, wave_id, lane_id, address_space_id, segment_address, value_size, value)
end

function set_memory_precision(process_id::amd_dbgapi_process_id_t, memory_precision::amd_dbgapi_memory_precision_t)
    ccall((:amd_dbgapi_set_memory_precision, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_memory_precision_t), process_id, memory_precision)
end

function next_pending_event(process_id::amd_dbgapi_process_id_t, event_id::Ref{amd_dbgapi_event_id_t}, kind::Ref{amd_dbgapi_event_kind_t})
    ccall((:amd_dbgapi_next_pending_event, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, Ref{amd_dbgapi_event_id_t}, Ref{amd_dbgapi_event_kind_t}), process_id, event_id, kind)
end

function event_get_info(process_id::amd_dbgapi_process_id_t, event_id::amd_dbgapi_event_id_t, query::amd_dbgapi_event_info_t, value_size::Csize_t, value::Ref{Cvoid})
    ccall((:amd_dbgapi_event_get_info, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_event_id_t, amd_dbgapi_event_info_t, Csize_t, Ref{Cvoid}), process_id, event_id, query, value_size, value)
end

function event_processed(process_id::amd_dbgapi_process_id_t, event_id::amd_dbgapi_event_id_t)
    ccall((:amd_dbgapi_event_processed, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_event_id_t), process_id, event_id)
end

function set_log_level(level::amd_dbgapi_log_level_t)
    ccall((:amd_dbgapi_set_log_level, Symbol("librocm-dbgapi")), Cvoid, (amd_dbgapi_log_level_t,), level)
end

function report_shared_library(process_id::amd_dbgapi_process_id_t, shared_library_id::amd_dbgapi_shared_library_id_t, shared_library_state::amd_dbgapi_shared_library_state_t)
    ccall((:amd_dbgapi_report_shared_library, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_shared_library_id_t, amd_dbgapi_shared_library_state_t), process_id, shared_library_id, shared_library_state)
end

function report_breakpoint_hit(process_id::amd_dbgapi_process_id_t, breakpoint_id::amd_dbgapi_breakpoint_id_t, client_thread_id::amd_dbgapi_client_thread_id_t, breakpoint_action::Ref{amd_dbgapi_breakpoint_action_t})
    ccall((:amd_dbgapi_report_breakpoint_hit, Symbol("librocm-dbgapi")), amd_dbgapi_status_t, (amd_dbgapi_process_id_t, amd_dbgapi_breakpoint_id_t, amd_dbgapi_client_thread_id_t, Ref{amd_dbgapi_breakpoint_action_t}), process_id, breakpoint_id, client_thread_id, breakpoint_action)
end
