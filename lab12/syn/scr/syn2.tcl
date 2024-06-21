# .tcl file
read_verilog {my_design.v combo.v}
current_design my_design

set top_design my_design
set_svf ./out/my_design.svf
# 
redirect -tee -file rpt2/pre_compile.rpt {link}
redirect -append -tee -file rpt2/pre_compile.rpt {check_design}   
redirect -append -tee -file rpt2/pre_compile.rpt {source -verbose scr/my_design.con}
redirect -append -tee -file rpt2/pre_compile.rpt {report_port -verbose}
redirect -append -tee -file rpt2/pre_compile.rpt {report_clock}
redirect -append -tee -file rpt2/pre_compile.rpt {report_clock -skew}
redirect -append -tee -file rpt2/pre_compile.rpt {check_timing}


write_file -format ddc -hier -output unmapped/my_design_unmapped.ddc



# netlist optimize


set_fix_multiple_port_nets -all -buffer_constants

redirect -tee -file rpt2/compile.rpt {compile_ultra -retime -timing}

# netlist optimize
set_app_var verilogout_no_tri true

redirect -tee -file rpt2/post_compile4.rpt {report_constraint -all}
redirect -append -tee -file rpt2/post_compile4.rpt {report_timing}

# netlist optimize
change_names -rules verilog -hier

write_sdc ./out/my_design.sdc
write_file -f verilog -hier -output ./net/my_design_net.v
write_file -f ddc -hier -output mapped/my_design_mapped.ddc
write_sdf ./net/my_design_pre.sdf

set_svf -off
quit
