module fpga(
	input iCLK_50,
	output wire [17:0] oLEDR,
	input wire [17:0] iSW

);

wire [422:0] crom;

cromossomo cromossomo(
	.clock(iCLK_50),
	.address(1'b0),
	.q(crom)
);

fenotipo fenotipo(
	.cromossomo(crom),
	.chromIn(iSW[7:0]),
	.chromOut(oLEDR[7:0])
);

endmodule