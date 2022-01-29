module AdderSub (
     	output [3:0] sum_diff,
     	output carry,
     	input [3:0]A, B,
     	input select
     	);
     		assign {carry, sum_diff} = (select) ? A + {~B} + select : A + B;
     	endmodule
