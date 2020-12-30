module MCPU_Logical_Shift();


reg reset, clk;


MCPU cpuinst (clk, reset);


initial begin
  reset=1;
  #10  reset=0;
end

always begin
  #5 clk=0; 
  #5 clk=1; 
end


/********OUR ASSEMBLER*****/

integer file, i;
reg[cpuinst.WORD_SIZE-1:0] memi;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R0  = 0; //4'b0000
parameter  [cpuinst.OPERAND_SIZE-1:0]  R1  = 1; //4'b0001
parameter  [cpuinst.OPERAND_SIZE-1:0]  R2  = 2; //4'b0010
parameter  [cpuinst.OPERAND_SIZE-1:0]  R3  = 3; //4'b0011
parameter  [cpuinst.OPERAND_SIZE-1:0]  R4  = 4;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R5  = 5;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R6  = 6;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R7  = 7;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R8  = 8;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R9  = 9;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R10 = 10;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R11 = 11;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R12 = 12;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R13 = 13;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R14 = 14;
parameter  [cpuinst.OPERAND_SIZE-1:0]  R15 = 15;

initial
begin

    for(i=0;i<256;i=i+1)
    begin
      cpuinst.raminst.mem[i]=0;
    end
    
    for(i=0;i<16;i=i+1) begin
      cpuinst.regfileinst.R[i] = 0;
    end     
    

                                                                               //memory address: instruction
    i=0;  cpuinst.raminst.mem[0]={cpuinst.OP_SHORT_TO_REG, R4, 8'b00100000};    //0: R4=32;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R5, 8'b00001100};    //1: R5=12;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R6, 8'b01111101};    //2: R6=125;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R7, 8'b00000101};    //3: R7 = 5
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SUB, R13, R4, R5};                 //4: R13 = R6-R7;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_LSR, R14, R4, R7};                 //5: R14 = R4 >> R7;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_LSL, R8, R6,R7};                   //6: R8 = R6 << R7;    
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_XOR, R15, R8, R5};                 //7: R15 = R8^R5
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_MOV, R10, R15,4'b0000};            //8: R10 = R15
    
    file = $fopen("program.list","w");
    for(i=0;i<cpuinst.raminst.RAM_SIZE;i=i+1)
    begin
      memi=cpuinst.raminst.mem[i];
      
      $fwrite(file, "%b_%b_%b_%b\n", 
        memi[cpuinst.INSTRUCTION_SIZE-1:cpuinst.INSTRUCTION_SIZE-cpuinst.OPCODE_SIZE],
        memi[cpuinst.OPCODE_SIZE*3-1:2*cpuinst.OPCODE_SIZE],
        memi[cpuinst.OPCODE_SIZE*2-1:cpuinst.OPCODE_SIZE],
        memi[cpuinst.OPCODE_SIZE-1:0]);
    end
    $fclose(file);
end

endmodule






