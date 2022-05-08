`default_nettype none

module simulation #(
	parameter TICKS_PER_BAUD = 4
) (
	// system
	input wire clk,

	// charlie7x5
	output wire [6:0] charlie7x5_o,
	output wire [6:0] charlie7x5_oe
);
	wire [6:0] charlie7x5_oe;
	wire [6:0] charlie7x5_o;
	wire unused = &{ charlie7x5_o , charlie7x5_oe };

	// top //

	top #(
		.TICKS_PER_BAUD(4)
	) top (
		.clk(clk),
		.charlie7x5_oe(charlie7x5_oe),
		.charlie7x5_o(charlie7x5_o)
	);

endmodule
