onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /multn_tb/clk
add wave -noupdate /multn_tb/rst_b
add wave -noupdate /multn_tb/start
add wave -noupdate /multn_tb/ready
add wave -noupdate /multn_tb/a_in
add wave -noupdate /multn_tb/b_in
add wave -noupdate /multn_tb/z_out
add wave -noupdate /multn_tb/stop
add wave -noupdate /multn_tb/UUT/state_reg
add wave -noupdate /multn_tb/UUT/state_next
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ns} 0}
configure wave -namecolwidth 150
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {1 us}
