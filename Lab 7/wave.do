onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label rst /MIPSzy_TB/MIPSzy_0/rst
add wave -noupdate -label clk /MIPSzy_TB/MIPSzy_0/clk
add wave -noupdate -divider {Program Counter}
add wave -noupdate -label pc_out -radix unsigned /MIPSzy_TB/MIPSzy_0/pc_out
add wave -noupdate -label ir -radix hexadecimal /MIPSzy_TB/MIPSzy_0/ir
add wave -noupdate -divider {Register File}
add wave -noupdate -label write_adr -radix unsigned /MIPSzy_TB/MIPSzy_0/rf_wa
add wave -noupdate -label write_enb -radix unsigned /MIPSzy_TB/MIPSzy_0/rf_we
add wave -noupdate -label write_data -radix unsigned /MIPSzy_TB/MIPSzy_0/rf_wd
add wave -noupdate -label read_enb1 -radix unsigned /MIPSzy_TB/MIPSzy_0/rf_r1e
add wave -noupdate -label data_out1 -radix unsigned /MIPSzy_TB/MIPSzy_0/rf_r1d
add wave -noupdate -label read_enb2 -radix unsigned /MIPSzy_TB/MIPSzy_0/rf_r2e
add wave -noupdate -label data_out2 -radix unsigned /MIPSzy_TB/MIPSzy_0/rf_r2d
add wave -noupdate -label {$t0} -radix unsigned {/MIPSzy_TB/MIPSzy_0/RF/registers[8]}
add wave -noupdate -label {$t1} -radix unsigned {/MIPSzy_TB/MIPSzy_0/RF/registers[9]}
add wave -noupdate -label {$t2} -radix unsigned {/MIPSzy_TB/MIPSzy_0/RF/registers[10]}
add wave -noupdate -label {$t3} -radix unsigned {/MIPSzy_TB/MIPSzy_0/RF/registers[11]}
add wave -noupdate -label {$t4} -radix unsigned {/MIPSzy_TB/MIPSzy_0/RF/registers[12]}
add wave -noupdate -label {$t5} -radix unsigned {/MIPSzy_TB/MIPSzy_0/RF/registers[13]}
add wave -noupdate -label {$t6} -radix unsigned {/MIPSzy_TB/MIPSzy_0/RF/registers[14]}
add wave -noupdate -label {$t7} -radix unsigned {/MIPSzy_TB/MIPSzy_0/RF/registers[15]}
add wave -noupdate -divider {Data Memory}
add wave -noupdate -label addr -radix unsigned /MIPSzy_TB/MIPSzy_0/dm_a
add wave -noupdate -label write_enb /MIPSzy_TB/MIPSzy_0/dm_we
add wave -noupdate -label inp -radix unsigned /MIPSzy_TB/MIPSzy_0/dm_wd
add wave -noupdate -label read_enb /MIPSzy_TB/MIPSzy_0/dm_re
add wave -noupdate -label out -radix unsigned /MIPSzy_TB/MIPSzy_0/dm_rd
add wave -noupdate -label {mem[4096]} -radix unsigned {/MIPSzy_TB/MIPSzy_0/DM/memory[0]}
add wave -noupdate -label {mem[4100]} -radix unsigned {/MIPSzy_TB/MIPSzy_0/DM/memory[1]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {121 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 134
configure wave -valuecolwidth 59
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {126 ns}
