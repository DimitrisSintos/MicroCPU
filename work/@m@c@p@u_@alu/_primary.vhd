library verilog;
use verilog.vl_types.all;
entity MCPU_Alu is
    generic(
        CMD_SIZE        : integer := 2;
        WORD_SIZE       : integer := 16;
        CMD_AND         : vl_logic_vector;
        CMD_OR          : vl_logic_vector;
        CMD_XOR         : vl_logic_vector;
        CMD_ADD         : vl_logic_vector
    );
    port(
        cmd             : in     vl_logic_vector;
        in1             : in     vl_logic_vector;
        in2             : in     vl_logic_vector;
        \out\           : out    vl_logic_vector;
        CF              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CMD_SIZE : constant is 1;
    attribute mti_svvh_generic_type of WORD_SIZE : constant is 1;
    attribute mti_svvh_generic_type of CMD_AND : constant is 4;
    attribute mti_svvh_generic_type of CMD_OR : constant is 4;
    attribute mti_svvh_generic_type of CMD_XOR : constant is 4;
    attribute mti_svvh_generic_type of CMD_ADD : constant is 4;
end MCPU_Alu;
