# .tcl file
#read_verilog {top.sv mul.sv add.sv}

#analyze -format verilog {top.sv mul.sv add.sv}
#analyze -format sverilog {top.sv mul.sv add.sv}

analyze -format sverilog {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab_fin/fin_rev03/rtl/top.sv}
analyze -format sverilog {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab_fin/fin_rev03/rtl/mul.sv}
analyze -format sverilog {/home1/std6/ASIC/2024_4_1_ASICFrontEnd/lab_fin/fin_rev03/rtl/add.sv}

elaborate top
write_file -format ddc -hier -output unmapped/top_unmapped.ddc
# 
redirect -tee -file rpt/pre_final.rpt {link}
redirect -append -tee -file rpt/pre_final.rpt {check_design}   
redirect -append -tee -file rpt/pre_final.rpt {source top.con}
redirect -append -tee -file rpt/pre_final.rpt {report_port -verbose}
redirect -append -tee -file rpt/pre_final.rpt {report_clock}
redirect -append -tee -file rpt/pre_final.rpt {report_clock -skew}
redirect -append -tee -file rpt/pre_final.rpt {check_timing}

set_svf out/top.svf

set_fix_multiple_port_nets -all -buffer_constants


redirect -tee -file rpt/final.rpt {compile_ultra}

redirect -append -tee -file rpt/final.rpt {compile_ultra -incremental -retime -timing}

set_app_var verilogout_no_tri true

redirect -tee -file rpt/post_final.rpt {report_constraint -all}
redirect -append -tee -file rpt/post_final.rpt {report_timing}

change_names -rules verilog -hier

write_sdc ./out/top.sdc
write_file -f verilog -hier -output ./net/top_net.v
write_file -f ddc -hier -output mapped/top_mapped.ddc
write_sdf ./net/top.pre.sdf

set_svf off

quit
