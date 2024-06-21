# .tcl file
read_verilog {top.v full_adder_16bit.v F_A.v}
current_design top
set_svf out/top.svf

write_file -format ddc -hier -output unmapped/top_unmapped.ddc
# 
redirect -tee -file rpt/pre_compile_11.rpt {link}
redirect -append -tee -file rpt/pre_compile_11.rpt {check_design}   
redirect -append -tee -file rpt/pre_compile_11.rpt {source top.con}
redirect -append -tee -file rpt/pre_compile_11.rpt {report_port -verbose}
redirect -append -tee -file rpt/pre_compile_11.rpt {report_clock}
redirect -append -tee -file rpt/pre_compile_11.rpt {report_clock -skew}
redirect -append -tee -file rpt/pre_compile_11.rpt {check_timing}

set_svf out/top.svf

set_fix_multiple_port_nets -all -buffer_constants


redirect -tee -file rpt/compile_11.rpt {compile_ultra}

redirect -append -tee -file rpt/compile_11.rpt {compile_ultra -incremental -retime -timing}

set_app_var verilogout_no_tri true

redirect -tee -file rpt/post_compile_11.rpt {report_constraint -all}
redirect -append -tee -file rpt/post_compile_11.rpt {report_timing}

change_names -rules verilog -hier

write_sdc out/top.sdc
write_file -f verilog -hier -output net/top_net.v
write_file -f ddc -hier -output mapped/top_mapped.ddc
write_sdf net/top.pre.sdf

set_svf -off
quit
