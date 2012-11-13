configuration sqroot_seq_tb_rtl_conf of sqroot_seq_tb is
   for bench
      for all : sqroot
         use entity work.sqroot_seq(rtl);
      end for;
   end for;
end configuration sqroot_seq_tb_rtl_conf;
