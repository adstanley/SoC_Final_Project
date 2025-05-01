module led_ctl(

	input clk,
	input rst,

	input [1:0] addr,
	input [7:0] write_data,
	output [7:0] read_data,
	input write_en,

	output [7:0] led,
	output [2:0] rgbA,
	output [2:0] rgbB
);

    // LED reg
	reg [7:0] led_data;
	
	// RGB reg
	reg [2:0] rgbA_data;
	reg [2:0] rgbB_data;

    // LED and RGB data
	assign led = led_data;
	assign rgbA = rgbA_data;
	assign rgbB = rgbB_data;
	    
    always @(posedge clk)
	begin
		//write decoding for leds
		if(rst)
			led_data<=8'd0;
		else if(write_en & (addr==2'd0) )
			led_data <= write_data;

		//write decoding for rgbA
		if(rst)
			rgbA_data <= 3'd0;
		else if(write_en & (addr==2'd1) )
			rgbA_data <= write_data[2:0];

		//write decoding for rgbB
		if(rst)
			rgbB_data <= 3'd0;
		else if(write_en & (addr==2'd2) )
			rgbB_data <= write_data[2:0];
	end
	
    // Read logic
	reg [7:0] in_rdata;
	assign read_data = in_rdata;
	
	always @(*)
	begin
		case(addr)
			0:
				in_rdata = led_data;
			1:
				in_rdata = {5'd0, rgbA_data};
			2:
				in_rdata = {5'd0, rgbB_data };
			3:
				in_rdata = 8'd0;
		endcase
	end

endmodule