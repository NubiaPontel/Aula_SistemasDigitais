#braile

module br(
	input CLOCK_50,
	input [5:0] letra,
	output [6:0] hex);

	reg [6:0] h;
	assign hex = (h);

	always @(posedge CLOCK_50) begin
		if (letra == 6'b000001) begin
			h = 7'b1110111; 
		end
		else if (letra == 6'b000011) begin
			h = 7'b0011111; 
		end
		else if (letra == 6'b100001) begin
			h = 7'b1001110; 
 		end
		else if (letra == 6'b110001) begin
			h = 7'b0111101; 
		end
		else if (letra == 6'b010001) begin
			h = 7'b1001111; 
		end
		else if (letra == 6'b100011) begin
			h = 7'b1000111; 
		end
		else if (letra == 6'b110011) begin
			h = 7'b1111011; 
		end
		else if (letra == 6'b010011) begin
			h = 7'b0110111; 
		end
		else if (letra == 6'b100010) begin
			h = 7'b0000110; 
		end
		else if (letra == 6'b110010) begin
			h = 7'b0111100; 
		end
		else if (letra == 6'b000101) begin
			h = 7'b0101111; 
		end
		else if (letra == 6'b000111) begin
			h = 7'b0001110; 
		end
		else if (letra == 6'b100101) begin
			h = 7'b1110110; 
		end
		else if (letra == 6'b110101) begin
			h = 7'b0010101; 
		end
		else if (letra == 6'b010101) begin
			h = 7'b1111110; 
		end
		else if (letra == 6'b100111) begin
			h = 7'b1100111; 
		end
		else if (letra == 6'b110111) begin
			h = 7'b1110011; 
		end
		else if (letra == 6'b010111) begin
			h = 7'b0000101; 
		end
		else if (letra == 6'b100110) begin
			h = 7'b1011011; 
		end
		else if (letra == 6'b110110) begin
			h = 7'b0001111; 
		end
		else if (letra == 6'b001101) begin
			h = 7'b0011100; 
		end
		else if (letra == 6'b001111) begin
			h = 7'b0111110; 
		end
		else if (letra == 'b111010) begin
			h = 7'b1011100; 
		end
		else if (letra == 'b101101) begin
			h = 7'b0000111; 
		end
		else if (letra == 6'b111101) begin
			h = 7'b0111011; 
		end
		else if (letra == 6'b011101) begin
			h = 7'b1001001; 
		end
		else begin
			h = 7'b0000000; 
		end
	end

endmodule

module trad(
	input CLOCK_50,
	input [10:4] SW,
	output [0:6] HEX0);

	wire[6:0] b;

	reg [5:0] letra = 6'b000000;
	assign HEX0 = ~b;

	alfabeto B(CLOCK_50, SW, b);

endmodule
