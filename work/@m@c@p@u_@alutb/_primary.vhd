library verilog;
use verilog.vl_types.all;
entity MCPU_Alutb is
    generic(
        CMD_SIZE        : integer := 2;
        WORD_SIZE       : integer := 2
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CMD_SIZE : constant is 1;
    attribute mti_svvh_generic_type of WORD_SIZE : constant is 1;
end MCPU_Alutb;
