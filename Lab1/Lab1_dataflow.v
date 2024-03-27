module	Lab1_dataflow(F, A, B, C, D);
	output F;
	input A,B,C,D;
	wire w1,w2,w3,w4,w5,w6,w7,w8;

	assign w1 = ~B;
	assign w2 = A | w1;
	assign w3 = C & w2;
	assign w4 = B & C;
	assign w5 = ~D;
	assign w6 = w4 | w5;
	assign w7 = A & w6;
	assign F = w3 | w7;
endmodule