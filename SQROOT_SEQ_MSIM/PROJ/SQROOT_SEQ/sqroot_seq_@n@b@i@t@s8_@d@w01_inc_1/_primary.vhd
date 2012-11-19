library verilog;
use verilog.vl_types.all;
entity sqroot_seq_NBITS8_DW01_inc_1 is
    port(
        A               : in     vl_logic_vector(7 downto 0);
        SUM             : out    vl_logic_vector(7 downto 0)
    );
end sqroot_seq_NBITS8_DW01_inc_1;
