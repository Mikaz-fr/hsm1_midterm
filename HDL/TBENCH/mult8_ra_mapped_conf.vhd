configuration mult8_ra_mapped_conf of multn_tb is
   for bench
      for all : multn
         use entity work.multn_nbits8;
      end for;
   end for;
end configuration mult8_ra_mapped_conf;