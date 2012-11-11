library verilog;
use verilog.vl_types.all;
entity multn_NBITS8 is
    port(
        clk             : in     vl_logic;
        rst_b           : in     vl_logic;
        start           : in     vl_logic;
        a_in            : in     vl_logic_vector(7 downto 0);
        b_in            : in     vl_logic_vector(7 downto 0);
        ready           : out    vl_logic;
        z_out           : out    vl_logic_vector(15 downto 0)
    );
end multn_NBITS8;
