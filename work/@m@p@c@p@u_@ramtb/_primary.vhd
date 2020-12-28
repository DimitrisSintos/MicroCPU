library verilog;
use verilog.vl_types.all;
entity MPCPU_Ramtb is
    generic(
        WORD_SIZE       : integer := 8;
        ADDR_WIDTH      : integer := 8;
        RAM_SIZE        : vl_notype
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WORD_SIZE : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of RAM_SIZE : constant is 3;
end MPCPU_Ramtb;
