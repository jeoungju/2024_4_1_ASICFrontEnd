# .tcl file
read_verilog {my_design.v combo.v}
current_design my_design
link
#check_design
#write_file -format ddc -hier -output unmapped/my_design_unmapped.ddc
#source my_design.con

redirect -tee -file precompile.rpt {link}

redirect -append -tee -file precompile.rpt { check_design
				    source -ver my_design.con
				    report_port -verbose
				    report_clock
				    report_clock -skew
				    check_timin }

check_design
write_file -format ddc -hier -output unmapped/my_design_unmapped.ddc
source my_design.con

# 
#source my_design.con

compile

redirect -tee -file compile.rpt {compile_ultra}

write_file -f verilog -hier -output net/my_design_net.v
write_file -f ddc -hier -output mapped/my_design_mapped.ddc

