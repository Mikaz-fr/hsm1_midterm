force -freeze sim:/sqroot_comb_tb/UUT/arg 00010000 0
force -freeze sim:/sqroot_comb_tb/UUT/roundup 0 0
force -freeze sim:/sqroot_comb_tb/UUT/arg 00110111 100
force -freeze sim:/sqroot_comb_tb/UUT/arg 00111001 200
force -freeze sim:/sqroot_comb_tb/UUT/arg 11111111 300
force -freeze sim:/sqroot_comb_tb/UUT/roundup 1 400
force -freeze sim:/sqroot_comb_tb/UUT/arg 00110111 400
force -freeze sim:/sqroot_comb_tb/UUT/arg 00111001 500
force -freeze sim:/sqroot_comb_tb/UUT/arg 11111111 600
run 700
