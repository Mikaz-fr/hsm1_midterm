onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /multn_tb/clk
add wave -noupdate /multn_tb/rst_b
add wave -noupdate /multn_tb/start
add wave -noupdate /multn_tb/ready
add wave -noupdate /multn_tb/a_in
add wave -noupdate /multn_tb/b_in
add wave -noupdate -expand /multn_tb/z_out
add wave -noupdate /multn_tb/stop
add wave -noupdate /multn_tb/UUT/state_reg_reg_0_/Q
add wave -noupdate /multn_tb/UUT/state_reg_reg_0_/QN
add wave -noupdate /multn_tb/UUT/state_reg_reg_0_/C
add wave -noupdate /multn_tb/UUT/state_reg_reg_0_/D
add wave -noupdate /multn_tb/UUT/state_reg_reg_0_/RN
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 242
configure wave -valuecolwidth 100
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {905 ps}
