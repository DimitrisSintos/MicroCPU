module MCPU_Alutb_B();

parameter CMD_SIZE=2;
parameter WORD_SIZE=4;

reg [CMD_SIZE-1:0] opcode;
reg [WORD_SIZE-1:0] r1;
reg [WORD_SIZE-1:0] r2;

reg iscorrect;
reg [WORD_SIZE-1:0] result;
reg carry;

wire [WORD_SIZE-1:0] out;
wire OVERFLOW;

MCPU_Alu #(.CMD_SIZE(CMD_SIZE), .WORD_SIZE(WORD_SIZE)) aluinst (opcode, r1, r2, out, OVERFLOW);

// Testbench code goes here
always
 begin
  #3 r1 = 4'b0100; #3 r1 = 4'b0000; #3 r1 = 4'b0001; #3 r1 = 4'b0010;
 end
always
 begin
  #3 r2 = 4'b0100; #3 r2 = 4'b0000; #3 r2 = 4'b0001; #3 r2 = 4'b0010;
 end

always #3 opcode[0] = $random;
always #3 opcode[1] = $random;

always @ (out)
begin
    case(opcode)
      0: begin
          result = r1&r2;
          if(result == out)
           begin
            iscorrect = 1;
           end else
            begin
              iscorrect= 0;
            end
         end
         
      1: begin
          result = r1|r2;
          if(result == out)
           begin
            iscorrect = 1;
           end else
            begin
              iscorrect= 0;
            end
         end
        
      2: begin
          result = r1^r2;
          if(result == out)
           begin
            iscorrect = 1;
           end else
            begin
              iscorrect= 0;
            end
         end
         
      default: begin
          {carry,result} = r1+r2;
          if({OVERFLOW,out} == {carry,result} )
           begin
            iscorrect = 1;
           end else
            begin
              iscorrect = 0;
            end
         end
         
    endcase
    
        
 
end
initial begin
  $monitor("@%0dns default is selected, opcode %b",$time,opcode);
end


endmodule



