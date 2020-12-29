library verilog;
use verilog.vl_types.all;
entity MCPU_Registerfile is
    generic(
        WORD_SIZE       : integer := 8;
        OPERAND_SIZE    : integer := 4;
        REGS_NUMBER_WIDTH: integer := 4;
        REGISTERS_NUMBER: vl_notype;
        NORMAL_EX       : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        MOV_INTERNAL    : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        LOAD_FROM_DATA  : vl_logic_vector(1 downto 0) := (Hi1, Hi0);
        DO_NOTHING      : vl_logic_vector(1 downto 0) := (Hi1, Hi1)
    );
    port(
        op1             : in     vl_logic_vector;
        op2             : in     vl_logic_vector;
        op3             : in     vl_logic_vector;
        RegOp1          : out    vl_logic_vector;
        alu1            : out    vl_logic_vector;
        alu2            : out    vl_logic_vector;
        datatoload      : in     vl_logic_vector;
        regsetwb        : in     vl_logic;
        regsetcmd       : in     vl_logic_vector(1 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WORD_SIZE : constant is 1;
    attribute mti_svvh_generic_type of OPERAND_SIZE : constant is 1;
    attribute mti_svvh_generic_type of REGS_NUMBER_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of REGISTERS_NUMBER : constant is 3;
    attribute mti_svvh_generic_type of NORMAL_EX : constant is 2;
    attribute mti_svvh_generic_type of MOV_INTERNAL : constant is 2;
    attribute mti_svvh_generic_type of LOAD_FROM_DATA : constant is 2;
    attribute mti_svvh_generic_type of DO_NOTHING : constant is 2;
end MCPU_Registerfile;
