onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /sqroot_seq/NBITS
add wave -noupdate -radix unsigned /sqroot_seq/arg
add wave -noupdate /sqroot_seq/roundup
add wave -noupdate /sqroot_seq/clk
add wave -noupdate /sqroot_seq/nRst
add wave -noupdate /sqroot_seq/start
add wave -noupdate -radix unsigned /sqroot_seq/sqroot
add wave -noupdate /sqroot_seq/ready
add wave -noupdate /sqroot_seq/state_reg
add wave -noupdate /sqroot_seq/state_next
add wave -noupdate -radix unsigned /sqroot_seq/delta_reg
add wave -noupdate -radix unsigned /sqroot_seq/delta_next
add wave -noupdate -radix unsigned /sqroot_seq/root_reg
add wave -noupdate -radix unsigned /sqroot_seq/root_next
add wave -noupdate -radix unsigned /sqroot_seq/res_reg
add wave -noupdate -radix unsigned /sqroot_seq/res_next
add wave -noupdate /sqroot_seq/iss_start
add wave -noupdate /sqroot_seq/iss_looping
add wave -noupdate /sqroot_seq/iss_round
add wave -noupdate /sqroot_seq/iss_if
add wave -noupdate -radix unsigned /sqroot_seq/fuo_if_res
add wave -noupdate -radix unsigned /sqroot_seq/fuo_if_root
add wave -noupdate -radix unsigned /sqroot_seq/fuo_comp_root
add wave -noupdate -radix unsigned /sqroot_seq/fuo_comp_delta
add wave -noupdate -radix unsigned /sqroot_seq/fuo_round
add wave -noupdate /sqroot_seq/RST_STATE
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {300 ns} 0}
configure wave -namecolwidth 215
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
WaveRestoreZoom {0 ns} {924 ns}
