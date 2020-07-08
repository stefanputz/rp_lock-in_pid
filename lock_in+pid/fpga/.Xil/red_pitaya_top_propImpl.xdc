set_property SRC_FILE_INFO {cfile:{c:/Users/Stefan Putz/Documents/fpga/rp_lock-in_pid/lock_in+pid/fpga/.srcs/sources_1/bd/system/ip/system_processing_system7_0/system_processing_system7_0.xdc} rfile:../.srcs/sources_1/bd/system/ip/system_processing_system7_0/system_processing_system7_0.xdc id:1 order:EARLY scoped_inst:i_ps/system_i/system_i/processing_system7/inst} [current_design]
set_property SRC_FILE_INFO {cfile:{c:/Users/Stefan Putz/Documents/fpga/rp_lock-in_pid/lock_in+pid/fpga/sdc/red_pitaya.xdc} rfile:../sdc/red_pitaya.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_2 0.6
set_property src_info {type:SCOPED_XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_3 0.15
set_property src_info {type:SCOPED_XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_0 0.24
set_property src_info {type:SCOPED_XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter clk_fpga_1 0.12
set_property src_info {type:XDC file:2 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property IOB        TRUE     [get_ports {adc_dat_a_i[*]}]
set_property src_info {type:XDC file:2 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property IOB        TRUE     [get_ports {adc_dat_b_i[*]}]
set_property src_info {type:XDC file:2 line:115 export:INPUT save:INPUT read:READ} [current_design]
set_property IOB TRUE            [get_ports {dac_pwm_o[*]}]
set_property src_info {type:XDC file:2 line:125 export:INPUT save:INPUT read:READ} [current_design]
set_property LOC XADC_X0Y0 [get_cells i_ams/XADC_inst]
set_property src_info {type:XDC file:2 line:215 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks adc_clk]     -to [get_clocks dac_clk_out]
set_property src_info {type:XDC file:2 line:216 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks ser_clk_out]
set_property src_info {type:XDC file:2 line:217 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks dac_2clk_out]
set_property src_info {type:XDC file:2 line:219 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks clk_fpga_0]  -to [get_clocks par_clk]
set_property src_info {type:XDC file:2 line:220 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks dac_clk_out] -to [get_clocks dac_2clk_out]
set_property src_info {type:XDC file:2 line:221 export:INPUT save:INPUT read:READ} [current_design]
set_false_path -from [get_clocks dac_clk_out] -to [get_clocks dac_2ph_out]
