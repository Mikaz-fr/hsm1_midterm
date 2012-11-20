onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /sqroot_seq_tb/arg
add wave -noupdate -radix unsigned /sqroot_seq_tb/z
add wave -noupdate /sqroot_seq_tb/roundup
add wave -noupdate /sqroot_seq_tb/check
add wave -noupdate /sqroot_seq_tb/sqrt_exp
add wave -noupdate /sqroot_seq_tb/CLK
add wave -noupdate /sqroot_seq_tb/nRst
add wave -noupdate /sqroot_seq_tb/start
add wave -noupdate /sqroot_seq_tb/ready
add wave -noupdate /sqroot_seq_tb/sim_done
add wave -noupdate /sqroot_seq_tb/NBITS
add wave -noupdate /sqroot_seq_tb/CLK_PERIODE
add wave -noupdate -radix unsigned /sqroot_seq_tb/UUT/arg
add wave -noupdate -radix unsigned /sqroot_seq_tb/UUT/sqroot
add wave -noupdate /sqroot_seq_tb/UUT/roundup
add wave -noupdate /sqroot_seq_tb/UUT/clk
add wave -noupdate /sqroot_seq_tb/UUT/nRst
add wave -noupdate /sqroot_seq_tb/UUT/start
add wave -noupdate /sqroot_seq_tb/UUT/ready
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {134 ps} 0}
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
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {1 ns}
