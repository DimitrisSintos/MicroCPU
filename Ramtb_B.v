module MPCPU_Ramtb_B();

parameter WORD_SIZE = 16;
parameter ADDR_WIDTH  = 8;
parameter RAM_SIZE=1<<ADDR_WIDTH;

reg we, re;


reg [WORD_SIZE-1:0] datawr;

reg [ADDR_WIDTH-1:0] addr;
reg [ADDR_WIDTH-1:0] instraddr;

wire [WORD_SIZE-1:0] datard;
wire [WORD_SIZE-1:0] instrrd;

reg [WORD_SIZE-1:0] memcopy[RAM_SIZE-1:0];

reg datacorrect , instrcorrect;

integer i;

MCPU_RAMController #(.ADDR_WIDTH(ADDR_WIDTH), .WORD_SIZE(WORD_SIZE), .RAM_SIZE(RAM_SIZE)) ramcontrollerinst (we,datawr,re,addr,datard,instraddr,instrrd);

initial
 #10
 begin
    // WRITE
     addr = 8'b00000000;
     we = 1;
    repeat (256) begin 
      datawr <= 16'b0000111110101100;
      #3
      addr = addr + 8'b00000001;
    end
    we =0 ;
    
    for(i=0;i<256;i=i+1)
    begin
      memcopy[i] = ramcontrollerinst.mem[i];
    end
    
    #10 re = 1'b1;
    
    addr = 8'b00000000;
    instraddr = 8'b00000000;
    repeat(256) begin
      #3
      if(re==1'b1 && datard==memcopy[addr]) begin 
          datacorrect <= 1;
      end else begin
          datacorrect <= 0; 
          end 
          
      if (instrrd ==  memcopy[instraddr]) begin
         #3 instrcorrect <=1;
      end else begin
        #3 instrcorrect <= 0; 
          end 
      #3
      addr = addr + 8'b00000001;
      instraddr = instraddr + 8'b00000001;
    end 
    re = 0;  
end

endmodule


