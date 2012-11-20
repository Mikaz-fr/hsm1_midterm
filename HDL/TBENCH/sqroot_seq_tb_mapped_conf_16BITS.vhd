configuration sqroot_seq_tb_mapped_conf of sqroot_seq_tb is
   for bench
      for all : sqroot
         use entity work.sqroot_seq_nbits16;
      end for;
   end for;
end configuration sqroot_seq_tb_mapped_conf;
