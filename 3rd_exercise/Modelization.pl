% find specific component in an object and all its sub-components
show_component(ComponentName) :- 
	object(_, InitialComponent),  
	search_for_component(InitialComponent, ComponentName, X), 
	show_components(X).

search_for_component([component(ComponentName, Subcomponents) | _], ComponentName, [component(ComponentName, Subcomponents) | _]).
search_for_component([component(_, Subcomponents) | Tail], ComponentName, X) :- 
	search_for_component(Subcomponents, ComponentName, X), !; 
	search_for_component(Tail, ComponentName, X), !.

show_components([]).
show_components([component(Name, Subcomponents) | Tail]) :- 
	write(Name), 
	writeln(''), 
	show_components(Subcomponents), 
	show_components(Tail).

% find all the components made of a specific material
material(Material) :- 
	made_of(Component, Material), 
	format("~w is made of ~w~n", [Component, Material]), 
	fail.

% find all the components and sub-components of a specific object
show_object(ObjectName) :- 
	write(ObjectName), 
	writeln(''), 
	object(ObjectName, Components), 
	show_components(Components).
	
% analysis of main object into components and sub-components
object(personal_computer, [component(monitor, [component(screen, []), component(ports, []), component(control_buttons, []), component(internal_functional_components, [component(circuit_board, []), component(backlighting_monitor, []), component(power_supply_unit, [])]), component(webcam, [])]), 
component(keyboard, [component(keys, [component(keycaps, []), component(switches, []), component(circuitry, [])]), component(processor, []), component(interface_connector, [component(cable_and_port, []), component(wireless_bluetooth_dongle, [])])]), 
component(mouse, [component(buttons, []), component(sensor, []), component(internal_microcontrollers, [component(movement_sensors, []), component(signal_processor, [])])]), 
component(speakers, [component(driver, []), component(cabinet, []), component(controls_and_ports, []), component(wires_and_connectors, [])]), 
component(hard_disk, [component(spindle, []), component(disk_platter, []), component(actuator, [component(actuator_axis, []), component(actuator_arm, [])]), component(head, [])]), 
component(dvd, [component(circuit_board, []), component(disk_drive, []), component(optical_assembly_system, [])]), 
component(power_supply, [component(transformer, []), component(rectifier, []), component(filter, []), component(regulator_circuits, [])]), 
component(motherboard, [component(slots, [component(cpu_slot, []), component(ram_slots, []), component(expansion_slots, [])]), component(chipset, [component(northbridge, []), component(southbridge, [])]), component(bios_chip, []), component(sata_ports, []), component(usb_headers, []), component(front_panel_connectors, []), component(heat_sinks_and_vrms, []), component(cmos_battery, []), component(power_connectors, [component(main_power_supply, []), component(various_power_connectors, [component(sata_power_connectors, [])])])]), 
component(cpu, [component(arithmetic_logic_unit, []), component(control_unit, []), component(memory_unit, [])]), 
component(memory, [component(ram, []), component(rom, []), component(cache, []), component(virtual_memory, []), component(cmos, []), component(registers, [])]), 
component(cards, [component(graphics_card, []), component(sound_card, []), component(network_interface_card, []), component(expansion_usb_card, []), component(storage_controller_card, []), component(tv_tuner_card, []), component(modem_card, []), component(specialized_interface_card, [])])]).

% material of each component and sub-component
made_of(monitor, plastic).
made_of(screen, crystal).
made_of(ports, metal).
made_of(control_buttons, plastic).
made_of(internal_functional_components, metal).
made_of(circuit_board, plastic).
made_of(backlighting_monitor, crystal).
made_of(power_supply_unit, metal).
made_of(webcam, plastic).
made_of(keyboard, plastic).
made_of(keys, plastic).
made_of(keycaps, plastic).
made_of(switches, plastic).
made_of(circuitry, metal).
made_of(processor, plastic).
made_of(interface_connector, metal).
made_of(cable_and_port, metal).
made_of(wireless_bluetooth_dongle, plastic).
made_of(mouse, plastic).
made_of(buttons, plastic).
made_of(sensor, plastic).
made_of(internal_microcontrollers, plastic).
made_of(movement_sensors, plastic).
made_of(signal_sensor, plastic).
made_of(speakers, plastic).
made_of(driver, metal).
made_of(cabinet, plastic).
made_of(controls_and_ports, metal).
made_of(wires_and_connectors, metal).
made_of(hard_disk, metal).
made_of(spindle, metal).
made_of(disk_platter, metal).
made_of(actuator, metal).
made_of(actuator_axis, metal).
made_of(actuator_arm, metal).
made_of(head, metal).
made_of(dvd, plastic).
made_of(circuit_board, plastic).
made_of(disk_drive, metal).
made_of(optical_assembly_system, plastic).
made_of(power_supply, metal).
made_of(transformer, metal).
made_of(rectifier, metal).
made_of(filter, metal).
made_of(regulator_circuits, metal).
made_of(motherboard, metal).
made_of(slots, metal).
made_of(cpu_slot, metal).
made_of(ram_slots, metal).
made_of(expansion_slots, metal).
made_of(chipset, plastic).
made_of(northbridge, plastic).
made_of(southbridge, plastic).
made_of(bios_chip, plastic).
made_of(sata_ports, metal).
made_of(usb_headers, plastic).
made_of(front_panel_connectors, plastic).
made_of(heat_sinks_and_vrms, metal).
made_of(cmos_battery, metal).
made_of(power_connectors, metal).
made_of(main_power_supply, metal).
made_of(various_power_connectors, metal).
made_of(sata_power_connectors, metal).
made_of(cpu, plastic).
made_of(arithmetic_logic_unit, plastic).
made_of(control_unit, plastic).
made_of(memory_unit, plastic).
made_of(memory, plastic).
made_of(ram, plastic).
made_of(rom, plastic).
made_of(cache, plastic).
made_of(virtual_memory, plastic).
made_of(cmos, plastic).
made_of(registers, plastic).
made_of(cards, metal).
made_of(graphics_card, metal).
made_of(sound_card, metal).
made_of(network_interface_card, metal).
made_of(expansion_usb_card, metal).
made_of(storage_controller_card, metal).
made_of(tv_tuner_card, metal).
made_of(modem_card, metal).
made_of(specialized_interface_card, metal).