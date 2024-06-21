###################################################################

# Created by write_sdc on Wed Jun 19 00:38:53 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
create_clock [get_ports clk]  -period 8  -waveform {0 4}
set_clock_latency -max 0  [get_clocks clk]
set_clock_latency -source -max 0  [get_clocks clk]
set_clock_uncertainty -setup 0  [get_clocks clk]
group_path -name INPUTS  -from [list [get_ports clk] [get_ports n_rst] [get_ports {xn_data[7]}]        \
[get_ports {xn_data[6]}] [get_ports {xn_data[5]}] [get_ports {xn_data[4]}]     \
[get_ports {xn_data[3]}] [get_ports {xn_data[2]}] [get_ports {xn_data[1]}]     \
[get_ports {xn_data[0]}]]
group_path -name OUTPUTS  -to [list [get_ports {yn_data[7]}] [get_ports {yn_data[6]}] [get_ports        \
{yn_data[5]}] [get_ports {yn_data[4]}] [get_ports {yn_data[3]}] [get_ports     \
{yn_data[2]}] [get_ports {yn_data[1]}] [get_ports {yn_data[0]}]]
set_input_delay -clock clk  -max 3  [get_ports {xn_data[7]}]
set_input_delay -clock clk  -max 3  [get_ports {xn_data[6]}]
set_input_delay -clock clk  -max 3  [get_ports {xn_data[5]}]
set_input_delay -clock clk  -max 3  [get_ports {xn_data[4]}]
set_input_delay -clock clk  -max 3  [get_ports {xn_data[3]}]
set_input_delay -clock clk  -max 3  [get_ports {xn_data[2]}]
set_input_delay -clock clk  -max 3  [get_ports {xn_data[1]}]
set_input_delay -clock clk  -max 3  [get_ports {xn_data[0]}]
set_output_delay -clock clk  -max 3  [get_ports {yn_data[7]}]
set_output_delay -clock clk  -max 3  [get_ports {yn_data[6]}]
set_output_delay -clock clk  -max 3  [get_ports {yn_data[5]}]
set_output_delay -clock clk  -max 3  [get_ports {yn_data[4]}]
set_output_delay -clock clk  -max 3  [get_ports {yn_data[3]}]
set_output_delay -clock clk  -max 3  [get_ports {yn_data[2]}]
set_output_delay -clock clk  -max 3  [get_ports {yn_data[1]}]
set_output_delay -clock clk  -max 3  [get_ports {yn_data[0]}]
