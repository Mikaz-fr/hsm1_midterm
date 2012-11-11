configuration mult8_ra_rtl_conf of multn_tb is
   for bench
      for all : multn
         use entity work.multn(ra)
            generic map (NBITS => 8);
      end for;
   end for;
end configuration mult8_ra_rtl_conf;