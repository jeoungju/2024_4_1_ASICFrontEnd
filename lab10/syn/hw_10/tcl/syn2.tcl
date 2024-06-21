# .tcl file
read_verilog {my_design.v combo.v}
current_design my_design
# 
redirect -tee -file rpt2/pre_compile.rpt {link}
redirect -append -tee -file rpt2/pre_compile.rpt {check_design}   
redirect -append -tee -file rpt2/pre_compile.rpt {source my_design3.con}
redirect -append -tee -file rpt2/pre_compile.rpt {report_port -verbose}
redirect -append -tee -file rpt2/pre_compile.rpt {report_clock}
redirect -append -tee -file rpt2/pre_compile.rpt {report_clock -skew}
redirect -append -tee -file rpt2/pre_compile.rpt {check_timing}


write_file -format ddc -hier -output unmapped/my_design_unmapped.ddc

redirect -tee -file rpt2/compile.rpt {compile_ultra}

redirect -tee -file rpt2/compile.rpt {compile_ultra -incremental}

# netlist optimize

redirect -tee -file rpt2/pre_compile.rpt {source my_design3.con}

set_fix_multiple_port_nets -all -buffer_constants

redirect -tee -file rpt2/compile.rpt {compile_ultra -retime -timing -incremental}

# netlist optimize
set_app_var verilogout_no_tri true

redirect -tee -file rpt2/post_compile4.rpt {report_constraint -all}
redirect -append -tee -file rpt2/post_compile4.rpt {report_timing}

# netlist optimize
change_names -rules verilog -hier

write_file -f verilog -hier -output net/my_design_net.v
write_file -f ddc -hier -output mapped/my_design_mapped.ddc

