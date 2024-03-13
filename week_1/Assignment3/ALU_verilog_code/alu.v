module alu(
input [2:0]opcode,
input [3:0]operand_a,operand_b,
  output reg [3:0]result,
  output reg overflow
    );
    
   always @(*)begin
     case(opcode)
        3'b000:
        {overflow, result} = operand_a + operand_b;
        3'b001:
        {overflow,result} = operand_a - operand_b;
        3'b010:
        {overflow,result} = operand_a / operand_b;
        3'b011:
        {overflow,result} = operand_a * operand_b;  
        3'b100:
        {overflow,result} = operand_a & operand_b; 
        3'b101:
        {overflow,result} = operand_a | operand_b;
        3'b110:
        {overflow,result} = ~operand_a;
        3'b111:
        {overflow,result} = operand_a ^ operand_b;
        default:
        {overflow,result}='h0;
    endcase
end

endmodule
