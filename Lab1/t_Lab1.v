module	t_Lab1();
	wire	F1,F2,F3;
	reg		A, B, C, D;
	
	localparam period = 20;  

	Lab1_gatelevel	Gatelevel(F1, A, B, C, D);
	Lab1_dataflow Dataflow(F2, A, B, C, D);
	Lab1_gatelevel_UDP UDP(F3, A, B, C, D);
	//apply inputs one at a time
	initial	begin
		A=0;
		B=0;
		C=0;
		D=0;
		#period;

		A=0;
		B=0;
		C=0;
		D=1;
		#period;

		A=0;
		B=0;
		C=1;
		D=0;
		#period;

		A=0;
		B=0;
		C=1;
		D=1;
		#period;

		A=0;
		B=1;
		C=0;
		D=0;
		#period;

		A=0;
		B=1;
		C=0;
		D=1;
		#period;

		A=0;
		B=1;
		C=1;
		D=0;
		#period;

		A=0;
		B=1;
		C=1;
		D=1;
		#period;

		A=1;
		B=0;
		C=0;
		D=0;
		#period;

		A=1;
		B=0;
		C=0;
		D=1;
		#period;

		A=1;
		B=0;
		C=1;
		D=0;
		#period;

		A=1;
		B=0;
		C=1;
		D=1;
		#period;

		A=1;
		B=1;
		C=0;
		D=0;
		#period;

		A=1;
		B=1;
		C=0;
		D=1;
		#period;

		A=1;
		B=1;
		C=1;
		D=0;
		#period;

		A=1;
		B=1;
		C=1;
		D=1;
		#period;
	end
	initial #300 $finish;
	//dump the result of simulation
	initial begin
		$dumpfile("Lab1.vcd");
		$dumpvars;
	end
endmodule