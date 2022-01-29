module BCD_Adder (
     	output [3:0] Sum,
     	output Carry_out,
     	input [3:0] Augend, Addend,
     	input Carry_in
     	);
     	wire [3:0]Z;
     	wire [3:0]D;
     	wire TempCarry;
    	wire carry2;
    		assign {TempCarry, Z} = Addend + Augend + Carry_in;
    		assign Carry_out = (Z[3] && Z[2]) || (Z[3] && Z[1]) || TempCarry;
    		assign D = {1'b0, Carry_out, Carry_out, 1'b0};
    		assign {carry2, Sum} = D + Z;
    	endmodule
