restart

force -freeze sim:/sqroot_seq/clk 1 0, 0 {25 ns} -r 50
force -freeze sim:/sqroot_seq/nRst 0 0 
force -freeze sim:/sqroot_seq/roundup 0 0
force -freeze sim:/sqroot_seq/start 0 0
force -freeze sim:/sqroot_seq/arg 00010000 0

force -freeze sim:/sqroot_seq/nRst 1 100

force -freeze sim:/sqroot_seq/start 1 200
force -freeze sim:/sqroot_seq/start 0 250

run 1000