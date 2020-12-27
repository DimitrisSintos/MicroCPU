library verilog;
use verilog.vl_types.all;
entity MCPU_RAMController is
    generic(
        WORD_SIZE       : integer := 8;
        ADDR_WIDTH      : integer := 8;
        RAM_SIZE        : vl_notype
    );
    port(
        we              : in     vl_logic;
        datawr          : in     vl_logic_vector;
        re              : in     vl_logic;
        addr            : in     vl_logic_vector;
        datard          : out    vl_logic_vector;
        instraddr       : in     vl_logic_vector;
        instrrd         : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WORD_SIZE : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of RAM_SIZE : constant is 3;
end MCPU_RAMController;
