module MCPU_HailStone();


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
    
  /*
    //HAILSTONE FOR R3=N=1                                            memory address: instruction
    i=0;  cpuinst.raminst.mem[0]={cpuinst.OP_SHORT_TO_REG, R1, 8'b11111110};    //0 : R1=254;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R2, 8'b00000001};    //1 : R2=1;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R3, 8'b00000001};    //2 : R3=N;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_XOR, R4, R3, R2};                  //3 : R4=R3^R2;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R4, 8'b00000110};             //4 : GO TO LINE 6 IF R4 NOT ZERO
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R1, 8'b00001110};             //5 : GO TO LINE 14
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_AND, R4, R3, R2};                  //6 : R4 = R3 & R2;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R4, 8'b00001010};             //7 : GO TO LINE 10 IF R4 NOT ZERO
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_LSR, R3, R3, R2};                  //8 : R3 = R3/2;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R2, 8'b00000011};             //9 : GO TO LINE 3
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_ADD, R5, R3, R3};                  //10: R5 = R3 + R3;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_ADD, R3, R3, R5};                  //11: R3 = R3 + R5;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_ADD, R3, R3, R2};                  //12: R3 = R3 + 1;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R2, 8'b00000011};             //13: GO TO LINE 3
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R15, 8'b11111111};   //14: JUST TO CHECK IF R3=1
    
   */ 
    
    //HAILSTONE FOR R3=N=4012
    i=0;  cpuinst.raminst.mem[0]={cpuinst.OP_SHORT_TO_REG, R0, 8'b00001100};    //0 : R0=12;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R1, 8'b01111101};    //1 : R1=125;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R2, 8'b00000001};    //2 : R2=1; 
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R3, 8'b00000101};    //3 : R3=5;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_LSL, R1, R1,R3};                   //4 : R1=R1<<R3;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_XOR, R3, R1, R0};                  //5 : R3=R1^R0;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_XOR, R4, R3, R2};                  //6 : R4=R3^R2;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R4, 8'b00001001};             //7 : GO TO LINE 9 IF R4 NOT ZERO
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R2, 8'b00010001};             //8 : GO TO LINE 17
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_AND, R4, R3, R2};                  //9 : R4 = R3 & R2;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R4, 8'b00001101};             //10: GO TO LINE 13 IF R4 NOT ZERO
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_LSR, R3, R3, R2};                  //11: R3 = R3/2;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R2, 8'b00000110};             //12: GO TO LINE 6
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_ADD, R5, R3, R3};                  //13: R5 = R3 + R3;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_ADD, R3, R3, R5};                  //14: R3 = R3 + R5;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_ADD, R3, R3, R2};                  //15: R3 = R3 + 1;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R2, 8'b00000110};             //16: GO TO LINE 6
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R15, 8'b11111111};   //17: JUST TO CHECK IF R3=1
    
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








