configuration sqroot_comb_tb_mapped_conf of sqroot_comb_tb is
   for bench
      for all : sqroot
         use entity work.sqroot_comb_nbits8;
      end for;
   end for;
end configuration sqroot_comb_tb_mapped_conf;
