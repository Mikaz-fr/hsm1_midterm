library verilog;
use verilog.vl_types.all;
entity sqroot_comb_NBITS8 is
    port(
        arg             : in     vl_logic_vector(7 downto 0);
        roundup         : in     vl_logic;
        sqroot          : out    vl_logic_vector(4 downto 0)
    );
end sqroot_comb_NBITS8;
