module alu(
input [2:0]opcode,
input [3:0]operand_a,operand_b,
output reg [3:0]result
    );
    
   always @(*)begin
      case(instruction)
        3'b000:
            result = operand_a + operand_b;
        3'b001:
            result = operand_a - operand_b;
        3'b010:
            result = operand_a / operand_b;
        3'b011:
            result = operand_a * operand_b;  
        3'b100:
            result = operand_a & operand_b; 
        3'b101:
            result = operand_a | operand_b;
        3'b110:
            result = ~operand_a;
        3'b111:
        result = operand_a ^ operand_b;
        default:
       result = 0;
    endcase
end

