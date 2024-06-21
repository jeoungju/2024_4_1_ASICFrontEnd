
##################################################################
# Created by :	Design Compiler
# Version    :	O-2018.06-SP5-5 Sep 04, 2019
# Date       :	Thu Mar 28 13:28:29 2024
# Command    :	write_icc2_files -environment_only	\
#		-o mapped/my_design_icc2/my_design.settings.tcl 
##################################################################

##################################################################
# Set application variables for app 
##################################################################
set_app_var search_path "$search_path                                          \
/tools/synopsys/syn/O-2018.06-SP5-5/libraries/syn    ../rtl/  "

##################################################################
# Set application variables for design 
##################################################################
set_app_options -name design.bus_delimiters -value {[]}

##################################################################
# Set application variables for mv 
##################################################################
set_app_options -name mv.cells.no_main_power_violations -value true 

##################################################################
# Set application variables for power 
##################################################################
set_app_options -name power.default_static_probability -value 0.5 
set_app_options -name power.default_toggle_rate -value 0.1 
set_app_options -name power.default_toggle_rate_reference_clock -value fastest
set_app_options -name mv.upf.enable_golden_upf -value false 

##################################################################
# Set application variables for time 
##################################################################
set_app_options -name time.enable_clock_to_data_analysis -value false 
set_app_options -name time.high_fanout_net_pin_capacitance -value 1.000000pF
set_app_options -name time.high_fanout_net_threshold -value 1000 
set_app_options -name time.use_special_default_path_groups -value false 
set_app_options -name time.remove_clock_reconvergence_pessimism -value false 
set_app_options -name time.gclock_source_network_num_master_registers -value   \
10000000 
set_app_options -name time.disable_cond_default_arcs -value false 
set_app_options -name time.crpr_remove_clock_to_data_crp -value false 
set_app_options -name time.clock_reconvergence_pessimism -value normal 
set_app_options -name time.case_analysis_sequential_propagation -value never 

##################################################################
# Set attributes 
##################################################################

##################################################################
# Commands 
##################################################################

current_design my_design

##################################################################
