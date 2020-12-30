library verilog;
use verilog.vl_types.all;
entity MCPU is
    generic(
        WORD_SIZE       : integer := 16;
        ADDR_WIDTH      : integer := 8;
        OPCODE_SIZE     : integer := 4;
        ALU_CMD_SIZE    : integer := 3;
        OPERAND_SIZE    : integer := 4;
        INSTRUCTION_SIZE: vl_notype;
        OP_AND          : vl_logic_vector;
        OP_OR           : vl_logic_vector;
        OP_XOR          : vl_logic_vector;
        OP_ADD          : vl_logic_vector;
        OP_LSL          : vl_logic_vector;
        OP_LSR          : vl_logic_vector;
        OP_MOV          : vl_logic_vector;
        OP_LOAD_FROM_MEM: vl_logic_vector;
        OP_STORE_TO_MEM : vl_logic_vector;
        OP_SHORT_TO_REG : vl_logic_vector;
        OP_BNZ          : vl_logic_vector;
        IF_STATE        : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        EX_STATE        : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        WB_STATE        : vl_logic_vector(1 downto 0) := (Hi1, Hi0);
        HLT_STATE       : vl_logic_vector(1 downto 0) := (Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WORD_SIZE : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OPCODE_SIZE : constant is 1;
    attribute mti_svvh_generic_type of ALU_CMD_SIZE : constant is 1;
    attribute mti_svvh_generic_type of OPERAND_SIZE : constant is 1;
    attribute mti_svvh_generic_type of INSTRUCTION_SIZE : constant is 3;
    attribute mti_svvh_generic_type of OP_AND : constant is 4;
    attribute mti_svvh_generic_type of OP_OR : constant is 4;
    attribute mti_svvh_generic_type of OP_XOR : constant is 4;
    attribute mti_svvh_generic_type of OP_ADD : constant is 4;
    attribute mti_svvh_generic_type of OP_LSL : constant is 4;
    attribute mti_svvh_generic_type of OP_LSR : constant is 4;
    attribute mti_svvh_generic_type of OP_MOV : constant is 4;
    attribute mti_svvh_generic_type of OP_LOAD_FROM_MEM : constant is 4;
    attribute mti_svvh_generic_type of OP_STORE_TO_MEM : constant is 4;
    attribute mti_svvh_generic_type of OP_SHORT_TO_REG : constant is 4;
    attribute mti_svvh_generic_type of OP_BNZ : constant is 4;
    attribute mti_svvh_generic_type of IF_STATE : constant is 2;
    attribute mti_svvh_generic_type of EX_STATE : constant is 2;
    attribute mti_svvh_generic_type of WB_STATE : constant is 2;
    attribute mti_svvh_generic_type of HLT_STATE : constant is 2;
end MCPU;
