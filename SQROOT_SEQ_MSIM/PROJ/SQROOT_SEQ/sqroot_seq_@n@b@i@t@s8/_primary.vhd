library verilog;
use verilog.vl_types.all;
entity sqroot_seq_NBITS8 is
    port(
        arg             : in     vl_logic_vector(7 downto 0);
        roundup         : in     vl_logic;
        clk             : in     vl_logic;
        nRst            : in     vl_logic;
        start           : in     vl_logic;
        sqroot          : out    vl_logic_vector(4 downto 0);
        ready           : out    vl_logic
    );
end sqroot_seq_NBITS8;
