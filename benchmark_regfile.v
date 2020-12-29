module MCPU_regfile_benchmark();


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
    


    //Fibonacci but instade of the registers used in cputb I use the new registers
    //Also before fibonacci I make sure ADD,OR,XOR and STORE_TO_MEM works properly with the new registers
    
                                                                                //memory address: instruction
    i=0;  cpuinst.raminst.mem[0]={cpuinst.OP_SHORT_TO_REG, R4, 8'b00001010};    //0: R4=10;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R5, 8'b00001101};    //1: R5=13;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_AND, R6, R4, R5};                  //2: R6 = R4&&R5; (8)
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_STORE_TO_MEM, R6, 8'b11111111};    //3: mem[255] = R6;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_OR, R7, R4, R5};                   //4: R7 = R4|R5;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_XOR, R8, R4, R5};                  //5: R8 = R4^R5;
    //Fibonacci
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R10, 8'b00000000};   //6: R10=0;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R11, 8'b00000001};   //7: R11=1;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_SHORT_TO_REG, R12, 8'b00000010};   //8: R12=2;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_MOV, R10, R11, 4'b0000};           //9:do{ R10=R11;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_MOV, R11, R12, 4'b0000};           //10: R11=R12;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_ADD, R12, R10, R11};               //11: R12=R10+R11;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_STORE_TO_MEM, R12, 8'b00010100};   //12:mem[20]=R12;
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_LOAD_FROM_MEM, R13, 8'b00010100};  //13:R13=mem[20];
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_ADD, R10, R10, R10};               //14:R10=R10+R10}   
    i=i+1;cpuinst.raminst.mem[i]={cpuinst.OP_BNZ, R12, 8'b00001001};            //15: while(R12!=0)
                                                                                //16:
    
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



