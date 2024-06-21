###################################################################

# Created by write_sdc on Mon Jun 17 22:19:30 2024

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_max_area 0
create_clock [get_ports clk]  -period 9  -waveform {0 4.5}
set_clock_latency -max 0.3  [get_clocks clk]
set_clock_latency -source -max 0.7  [get_clocks clk]
set_clock_uncertainty -setup 0.15  [get_clocks clk]
set_input_delay -clock clk  -max 4  [get_ports {xn_data[7]}]
set_input_delay -clock clk  -max 4  [get_ports {xn_data[6]}]
set_input_delay -clock clk  -max 4  [get_ports {xn_data[5]}]
set_input_delay -clock clk  -max 4  [get_ports {xn_data[4]}]
set_input_delay -clock clk  -max 4  [get_ports {xn_data[3]}]
set_input_delay -clock clk  -max 4  [get_ports {xn_data[2]}]
set_input_delay -clock clk  -max 4  [get_ports {xn_data[1]}]
set_input_delay -clock clk  -max 4  [get_ports {xn_data[0]}]
set_output_delay -clock clk  -max 2  [get_ports {yn_data[7]}]
set_output_delay -clock clk  -max 2  [get_ports {yn_data[6]}]
set_output_delay -clock clk  -max 2  [get_ports {yn_data[5]}]
set_output_delay -clock clk  -max 2  [get_ports {yn_data[4]}]
set_output_delay -clock clk  -max 2  [get_ports {yn_data[3]}]
set_output_delay -clock clk  -max 2  [get_ports {yn_data[2]}]
set_output_delay -clock clk  -max 2  [get_ports {yn_data[1]}]
set_output_delay -clock clk  -max 2  [get_ports {yn_data[0]}]
