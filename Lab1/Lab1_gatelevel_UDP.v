primitive or_and (y, a, b, c);
  output y;
  input a, b, c;
  table
    // a  b   c  :  y
       ?  ?   0   :  0;
       0  0   1   :  0;
       1  ?   1   :  1;
       ?  1   1   :  1;
  endtable
endprimitive

module	Lab1_gatelevel_UDP(F, A, B, C, D);
	output F;
	input A,B,C,D;
	wire w1,w2,w3,w4,w5,w6,w7,w8;

	not G1(w1, B);//G1 is "not B"
	or_and(w3, A, w1, C);
	and G4(w4,B,C);
	not G5(w5,D);
	or_and(w7, w4, w5, A);
	or G8(F, w7, w3);
endmodule
