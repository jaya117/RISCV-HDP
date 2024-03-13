
module alu_tb;

   reg  [2:0]inst;
   reg  [3:0]A,B;
   wire [3:0]res;
   wire ovflw;
   
  alu alu_inst(.opcode(inst),.operand_a(A),.operand_b(B),.result(res),.overflow(ovflw));
   
   integer i;
   
   initial begin
     $dumpfile("waveforms.vcd");
     $dumpvars(0,alu_tb);
   	   
     $monitor("monitor A:%0b B:%0b inst:%0b overflow:%0b result:%0b @ %0t", A, B, inst, ovflw, res, $time);
     A = 8; B = 7; inst = 0;
   
     for(i = 1; i < 8; i = i+ 1)begin
       #10
       inst = i;
     end
   
     #10
     $finish();
   
   end

endmodule
