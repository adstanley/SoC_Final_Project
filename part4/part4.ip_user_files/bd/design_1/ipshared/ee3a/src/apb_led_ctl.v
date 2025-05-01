
module apb_led_ctl(

    //reset 
	input rst,

	//apb bus
	input clk,
	input [31:0] paddr,
	input psel,
	input penable,
	input pwrite,
	output pready,
	output pslverr,
	input  [31:0] pwdata,
	output [31:0] prdata,

	//led out
	output [7:0] led,
	output [2:0] rgbA,
	output [2:0] rgbB
);

	wire write_en;
    wire [3:0] addr;
    wire [31:0] rsa_cypher;
    wire [7:0] led_read_data;
    reg [31:0] prdata_mux;
    
    assign addr = paddr[5:2];
    assign write_en = (psel & penable & pwrite);
    assign pready = 1'b1;
    assign pslverr = 1'b0;

    reg [31:0] rsa_indata, rsa_inExp, rsa_inMod;
    reg rsa_start;
    wire rsa_ready;

    led_ctl led_inst(
        .clk(clk),
        .rst(rst),
        .addr(addr[1:0]),
        .write_data(pwdata[7:0]),
        .read_data(led_read_data),
        .write_en(write_en),
        .led(led),
        .rgbA(rgbA),
        .rgbB(rgbB)
    );

    // RSA Cypher
    rsacypher #(.KEYSIZE(32)) rsa_inst (
        .indata(rsa_indata),
        .inExp(rsa_inExp),
        .inMod(rsa_inMod),
        .cypher(rsa_cypher),
        .clk(clk),
        .ds(rsa_start),
        .reset(rst),
        .ready(rsa_ready)
    );

    // RSA Write out APB
    always @(posedge clk or posedge rst) begin
        if (rst) begin
            rsa_indata <= 0;
            rsa_inExp <= 0;
            rsa_inMod <= 0;
            rsa_start <= 0;
        end else if (write_en) begin
            case (addr)
                4'h4: rsa_indata <= pwdata;
                4'h5: rsa_inExp   <= pwdata;
                4'h6: rsa_inMod   <= pwdata;
                4'h7: rsa_start   <= pwdata[0];
            endcase
        end else begin
            rsa_start <= 0;
        end
    end

    always @(*) begin
        case (addr)
            4'h4: prdata_mux = rsa_cypher;
            default: prdata_mux = {24'b0, led_read_data};
        endcase
    end

    assign prdata = (psel && penable && !pwrite) ? prdata_mux : 32'b0;

endmodule