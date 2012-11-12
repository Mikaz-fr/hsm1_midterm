onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix unsigned /sqroot_comb_tb/arg
add wave -noupdate -radix unsigned /sqroot_comb_tb/z
add wave -noupdate /sqroot_comb_tb/roundup
add wave -noupdate /sqroot_comb_tb/check
add wave -noupdate /sqroot_comb_tb/sqrt_exp
add wave -noupdate /sqroot_comb_tb/NBITS
add wave -noupdate /sqroot_comb_tb/WAIT_TIME
add wave -noupdate -radix unsigned /sqroot_comb_tb/UUT/arg
add wave -noupdate -radix unsigned /sqroot_comb_tb/UUT/sqroot
add wave -noupdate /sqroot_comb_tb/UUT/roundup
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
configure wave -namecolwidth 165
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
WaveRestoreZoom {0 ps} {978 ps}
