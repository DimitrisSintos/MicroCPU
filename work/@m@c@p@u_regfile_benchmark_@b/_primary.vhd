library verilog;
use verilog.vl_types.all;
entity MCPU_regfile_benchmark_B is
    generic(
        R0              : vl_logic_vector;
        R1              : vl_logic_vector;
        R2              : vl_logic_vector;
        R3              : vl_logic_vector;
        R4              : vl_logic_vector;
        R5              : vl_logic_vector;
        R6              : vl_logic_vector;
        R7              : vl_logic_vector;
        R8              : vl_logic_vector;
        R9              : vl_logic_vector;
        R10             : vl_logic_vector;
        R11             : vl_logic_vector;
        R12             : vl_logic_vector;
        R13             : vl_logic_vector;
        R14             : vl_logic_vector;
        R15             : vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of R0 : constant is 4;
    attribute mti_svvh_generic_type of R1 : constant is 4;
    attribute mti_svvh_generic_type of R2 : constant is 4;
    attribute mti_svvh_generic_type of R3 : constant is 4;
    attribute mti_svvh_generic_type of R4 : constant is 4;
    attribute mti_svvh_generic_type of R5 : constant is 4;
    attribute mti_svvh_generic_type of R6 : constant is 4;
    attribute mti_svvh_generic_type of R7 : constant is 4;
    attribute mti_svvh_generic_type of R8 : constant is 4;
    attribute mti_svvh_generic_type of R9 : constant is 4;
    attribute mti_svvh_generic_type of R10 : constant is 4;
    attribute mti_svvh_generic_type of R11 : constant is 4;
    attribute mti_svvh_generic_type of R12 : constant is 4;
    attribute mti_svvh_generic_type of R13 : constant is 4;
    attribute mti_svvh_generic_type of R14 : constant is 4;
    attribute mti_svvh_generic_type of R15 : constant is 4;
end MCPU_regfile_benchmark_B;
