# .tcl file
read_verilog {my_design.v combo.v}
current_design my_design
link
check_design
write_file -format ddc -hier -output unmapped/my_design_unmapped.ddc
# 
source my_design.con

compile
write_file -f verilog -hier -output net/my_design_net.v
write_file -f ddc -hier -output mapped/my_design_mapped.ddc

