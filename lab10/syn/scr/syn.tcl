# .tcl file
read_verilog {my_design.v combo.v}
current_design my_design
write_file -format ddc -hier -output unmapped/my_design_unmapped.ddc
# 
redirect -tee -file rpt/pre_compile.rpt {link}
redirect -append -tee -file rpt/pre_compile.rpt {check_design}   
redirect -append -tee -file rpt/pre_compile.rpt {source my_design.con}
redirect -append -tee -file rpt/pre_compile.rpt {report_port -verbose}
redirect -append -tee -file rpt/pre_compile.rpt {report_clock}
redirect -append -tee -file rpt/pre_compile.rpt {report_clock -skew}
redirect -append -tee -file rpt/pre_compile.rpt {check_timing}


redirect -tee -file rpt/compile.rpt {compile_ultra}

redirect -tee -file rpt/post_compile1.rpt {report_constraint -all}
redirect -append -tee -file rpt/post_compile1.rpt {report_timing}

redirect -tee -file rpt/compile.rpt {compile_ultra -incremental}

redirect -tee -file rpt/post_compile2.rpt {report_constraint -all}
redirect -append -tee -file rpt/post_compile2.rpt {report_timing}

redirect -tee -file rpt/pre_compile.rpt {source my_design2.con}

redirect -tee -file rpt/compile.rpt {compile_ultra -retime -timing -incremental}

redirect -tee -file rpt/post_compile3.rpt {report_constraint -all}
redirect -append -tee -file rpt/post_compile3.rpt {report_timing}

write_file -f verilog -hier -output net/my_design_net.v
write_file -f ddc -hier -output mapped/my_design_mapped.ddc

