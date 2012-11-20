library verilog;
use verilog.vl_types.all;
entity sqroot_seq_NBITS16_DW01_sub_5 is
    port(
        A               : in     vl_logic_vector(15 downto 0);
        B               : in     vl_logic_vector(15 downto 0);
        CI              : in     vl_logic;
        DIFF            : out    vl_logic_vector(15 downto 0);
        CO              : out    vl_logic
    );
end sqroot_seq_NBITS16_DW01_sub_5;
