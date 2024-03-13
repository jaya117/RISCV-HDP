module alu_tb;

   reg  [2:0]inst;
   reg  [3:0]A,B;
   wire [3:0]res;
   
   alu alu_inst(.instruction(inst),.operand_a(A),.operand_b(B),.result(res));
   
   integer i;
   
   initial begin
     $dumpfile("waveforms.vcd");
     $dumpvars(0,alu_tb);
   	   
     $monitor("monitor A:%0b B:%0b inst:%0b res:%0b @ %0t", A, B, inst, res, $time);
     A = 7; B = 8; inst = 0;
   
     for(i = 1; i < 8; i = i+ 1)begin
       #10
       inst = i;
     end
   
     #10
     $finish();
   
   end

endmodule
