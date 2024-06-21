`timescale 1ps/1ps
// ----------------------------
//      ASIC FINAL PROJECT
//      TOP MODULE
//      rev01 hex file verification
// ----------------------------
module top (
    clk,
    n_rst,
    start,
    xn_data,
    yn_data
);
    parameter D_WIDTH = 8;

    parameter IDLE = 2'h0;
    parameter START = 2'h1;

    parameter hn_0 = 8'h0a; // hn_18
    parameter hn_1 = 8'h00; // hn_17
    parameter hn_2 = 8'hf2; // hn_16
    parameter hn_3 = 8'he8; // hn_15
    parameter hn_4 = 8'heb; // hn_14
    parameter hn_5 = 8'h00; // hn_13
    parameter hn_6 = 8'h25; // hn_12
    parameter hn_7 = 8'h50; // hn_11
    parameter hn_8 = 8'h72; // hn_10
    parameter hn_9 = 8'h7f;

    input clk;
    input n_rst;
    input start;
    input [D_WIDTH-1:0] xn_data;

    //output [7:0] yn_data;
    output [7:0] yn_data;
/*
    reg [1:0] state, n_state;
    reg [12:0] cnt;

    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            state <= IDLE;
        end
        else begin
            state <= n_state;
        end
    end

    always @(*)
    case(n_state)
        IDLE : n_state = (start == 1'b1) ? START : state;
        START : n_state = (cnt == 13'h1388) ? IDLE : state; // cnt 13'h1388 = 5000, cnt 13'h05dc = 1500
        default : n_state = IDLE;
    endcase

    
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            cnt <= 13'h000;
        end
        else begin
            if (state == START) begin
                cnt <= cnt + 13'h1;
            end
            else begin
                cnt <= cnt;
            end
        end
    end
*/
reg start_d;

always @(posedge clk or negedge n_rst) begin
	if (!n_rst) begin
		start_d <= 1'b0;
	end
	else begin
		start_d <= start;
	end
end


reg [12:0] cnt;

always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            cnt <= 13'h000;
        end
        else begin
		if (start_d == 1'b1) begin
			cnt <= cnt + 13'h1;
		end
		else begin
			cnt <= (cnt != 13'h0) ? cnt + 13'h1 : (cnt == 13'h1388) ? 13'h0 : cnt; // hex 1388 = 5000 
		end
                //cnt <= (cnt == 13'h1388) ? 13'h0 : cnt + 13'h1;
        end
    end

//----------------------------
/*
    rom #(
    .D_WIDTH(8),
    .A_WIDTH(13)
    ) u_rom_xn (
	.clk(clk),
    .n_rst(n_rst),
	.raddr(cnt),
	.data_out(xn_data)
);
*/
//----------------------------
    reg [7:0] xn_data_0;
    reg [7:0] xn_data_1;
    reg [7:0] xn_data_2;
    reg [7:0] xn_data_3;
    reg [7:0] xn_data_4;
    reg [7:0] xn_data_5;
    reg [7:0] xn_data_6;
    reg [7:0] xn_data_7;
    reg [7:0] xn_data_8;
    reg [7:0] xn_data_9;
    reg [7:0] xn_data_10;
    reg [7:0] xn_data_11;
    reg [7:0] xn_data_12;
    reg [7:0] xn_data_13;
    reg [7:0] xn_data_14;
    reg [7:0] xn_data_15;
    reg [7:0] xn_data_16;
    reg [7:0] xn_data_17;
    reg [7:0] xn_data_18;

// xn_data_0 = xn_data
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_0 <= 8'h00;
        end
        else begin
            xn_data_0 <= xn_data;
        end
    end
// xn_data_1 = xn_data_0
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_1 <= 8'h00;
        end
        else begin
            xn_data_1 <= xn_data_0;
        end
    end
// xn_data_2 = xn_data_1
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_2 <= 8'h00;
        end
        else begin
            xn_data_2 <= xn_data_1;
        end
    end
// xn_data_3 = xn_data_2
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_3 <= 8'h00;
        end
        else begin
            xn_data_3 <= xn_data_2;
        end
    end
// xn_data_4 = xn_data_3
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_4 <= 8'h00;
        end
        else begin
            xn_data_4 <= xn_data_3;
        end
    end
// xn_data_5 = xn_data_4
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_5 <= 8'h00;
        end
        else begin
            xn_data_5 <= xn_data_4;
        end
    end
// xn_data_6 = xn_data_5
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_6 <= 8'h00;
        end
        else begin
            xn_data_6 <= xn_data_5;
        end
    end
// xn_data_7 = xn_data_6
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_7 <= 8'h00;
        end
        else begin
            xn_data_7 <= xn_data_6;
        end
    end
// xn_data_8 = xn_data_7
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_8 <= 8'h00;
        end
        else begin
            xn_data_8 <= xn_data_7;
        end
    end
// xn_data_9 = xn_data_8
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_9 <= 8'h00;
        end
        else begin
            xn_data_9 <= xn_data_8;
        end
    end
// xn_data_10 = xn_data_9
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_10 <= 8'h00;
        end
        else begin
            xn_data_10 <= xn_data_9;
        end
    end
// xn_data_11 = xn_data_10
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_11 <= 8'h00;
        end
        else begin
            xn_data_11 <= xn_data_10;
        end
    end
// xn_data_12 = xn_data_11
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_12 <= 8'h00;
        end
        else begin
            xn_data_12 <= xn_data_11;
        end
    end
// xn_data_13 = xn_data_12
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_13 <= 8'h00;
        end
        else begin
            xn_data_13 <= xn_data_12;
        end
    end
// xn_data_14 = xn_data_13
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_14 <= 8'h00;
        end
        else begin
            xn_data_14 <= xn_data_13;
        end
    end
// xn_data_15 = xn_data_14
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_15 <= 8'h00;
        end
        else begin
            xn_data_15 <= xn_data_14;
        end
    end
// xn_data_16 = xn_data_15
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_16 <= 8'h00;
        end
        else begin
            xn_data_16 <= xn_data_15;
        end
    end
// xn_data_17 = xn_data_16
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_17 <= 8'h00;
        end
        else begin
            xn_data_17 <= xn_data_16;
        end
    end
// xn_data_18 = xn_data_17
    always @(posedge clk or negedge n_rst) begin
        if (!n_rst) begin
            xn_data_18 <= 8'h00;
        end
        else begin
            xn_data_18 <= xn_data_17;
        end
    end

// add tesult
wire [D_WIDTH:0] xn_data_0_18;
wire [D_WIDTH:0] xn_data_1_17;
wire [D_WIDTH:0] xn_data_2_16;
wire [D_WIDTH:0] xn_data_3_15;
wire [D_WIDTH:0] xn_data_4_14;
wire [D_WIDTH:0] xn_data_5_13;
wire [D_WIDTH:0] xn_data_6_12;
wire [D_WIDTH:0] xn_data_7_11;
wire [D_WIDTH:0] xn_data_8_10;

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn0_xn18 (
    .din_a(xn_data_0),
    .din_b(xn_data_18),
    .dout(xn_data_0_18) // 1 8 0 => 9bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn1_xn17 (
    .din_a(xn_data_1),
    .din_b(xn_data_17),
    .dout(xn_data_1_17) // 1 8 0 => 9bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn2_xn16 (
    .din_a(xn_data_2),
    .din_b(xn_data_16),
    .dout(xn_data_2_16) // 1 8 0 => 9bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn3_xn15 (
    .din_a(xn_data_3),
    .din_b(xn_data_15),
    .dout(xn_data_3_15) // 1 8 0 => 9bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn4_xn14 (
    .din_a(xn_data_4),
    .din_b(xn_data_14),
    .dout(xn_data_4_14) // 1 8 0 => 9bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn5_xn13 (
    .din_a(xn_data_5),
    .din_b(xn_data_13),
    .dout(xn_data_5_13) // 1 8 0 => 9bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn6_xn12 (
    .din_a(xn_data_6),
    .din_b(xn_data_12),
    .dout(xn_data_6_12) // 1 8 0 => 9bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn7_xn11 (
    .din_a(xn_data_7),
    .din_b(xn_data_11),
    .dout(xn_data_7_11) // 1 8 0 => 9bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(7),
    .FLT_BIT(0)
) u_add_xn8_xn10 (
    .din_a(xn_data_8),
    .din_b(xn_data_10),
    .dout(xn_data_8_10) // 1 8 0 => 9bit
);

wire [15:0] mul_hn_0, mul_hn_1, mul_hn_2, mul_hn_3, mul_hn_4, mul_hn_5, mul_hn_6, mul_hn_7, mul_hn_8;
wire [14:0] mul_hn_9;

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn0 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_0_18),
    .mul_b(hn_0),
    .mul_out(mul_hn_0)
);

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn1 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_1_17),
    .mul_b(hn_1),
    .mul_out(mul_hn_1)
);

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn2 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_2_16),
    .mul_b(hn_2),
    .mul_out(mul_hn_2)
);

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn3 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_3_15),
    .mul_b(hn_3),
    .mul_out(mul_hn_3)
);

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn4 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_4_14),
    .mul_b(hn_4),
    .mul_out(mul_hn_4)
);

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn5 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_5_13),
    .mul_b(hn_5),
    .mul_out(mul_hn_5)
);

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn6 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_6_12),
    .mul_b(hn_6),
    .mul_out(mul_hn_6)
);

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn7 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_7_11),
    .mul_b(hn_7),
    .mul_out(mul_hn_7)
);

mul #(
    .D_WIDTH1(9),
    .D_WIDTH2(8)
) u_mul_hn8 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_8_10),
    .mul_b(hn_8),
    .mul_out(mul_hn_8) // 9 * 8 = 16
);

mul #(
    .D_WIDTH1(8),
    .D_WIDTH2(8)
) u_mul_hn9 (
    .clk(clk),
    .n_rst(n_rst),
    .mul_a(xn_data_9),
    .mul_b(hn_9),
    .mul_out(mul_hn_9)  // 8 * 8 = 15 (sign)
);

reg [15:0] mul_hn_0_r, mul_hn_1_r, mul_hn_2_r, mul_hn_3_r, mul_hn_4_r, mul_hn_5_r, mul_hn_6_r, mul_hn_7_r, mul_hn_8_r;
reg [14:0] mul_hn_9_r;

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        mul_hn_0_r <= 16'h0;
        mul_hn_1_r <= 16'h0;
        mul_hn_2_r <= 16'h0;
        mul_hn_3_r <= 16'h0;
        mul_hn_4_r <= 16'h0;
        mul_hn_5_r <= 16'h0;
        mul_hn_6_r <= 16'h0;
        mul_hn_7_r <= 16'h0;
        mul_hn_8_r <= 16'h0;
    end
    else begin
        mul_hn_0_r <= mul_hn_0;
        mul_hn_1_r <= mul_hn_1;
        mul_hn_2_r <= mul_hn_2;
        mul_hn_3_r <= mul_hn_3;
        mul_hn_4_r <= mul_hn_4;
        mul_hn_5_r <= mul_hn_5;
        mul_hn_6_r <= mul_hn_6;
        mul_hn_7_r <= mul_hn_7;
        mul_hn_8_r <= mul_hn_8;
    end
end

always @(posedge clk or negedge n_rst) begin
    if (!n_rst) begin
        mul_hn_9_r <= 15'h0;
    end
    else begin
        mul_hn_9_r <= mul_hn_9;
    end
end

//////////////////////////////////////////////////////////////////////////////////////

wire [15:0] mul_hn_9_r_ext;
assign mul_hn_9_r_ext = {mul_hn_9_r[14],mul_hn_9_r[14],mul_hn_9_r[13:0]};


wire [16:0] add_01_step1, add_23_step1, add_45_step1, add_67_step1, add_89_step1;

add #(
    .SIGN_BIT(1),
    .INT_BIT(15),
    .FLT_BIT(0)
) u_add_mul_hn_0_1 (
    .din_a(mul_hn_0_r),
    .din_b(mul_hn_1_r),
    .dout(add_01_step1) // 1 16 0 => 17bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(15),
    .FLT_BIT(0)
) u_add_mul_hn_2_3 (
    .din_a(mul_hn_2_r),
    .din_b(mul_hn_3_r),
    .dout(add_23_step1) // 1 16 0 => 17bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(15),
    .FLT_BIT(0)
) u_add_mul_hn_4_5 (
    .din_a(mul_hn_4_r),
    .din_b(mul_hn_5_r),
    .dout(add_45_step1) // 1 16 0 => 17bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(15),
    .FLT_BIT(0)
) u_add_mul_hn_6_7 (
    .din_a(mul_hn_6_r),
    .din_b(mul_hn_7_r),
    .dout(add_67_step1) // 1 16 0 => 17bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(15),
    .FLT_BIT(0)
) u_add_mul_hn_8_9 (
    .din_a(mul_hn_8_r),
    .din_b(mul_hn_9_r_ext),
    .dout(add_89_step1) // 1 16 0 => 17bit
);

//////////////////////////////////////////////////////////////////////////////////////

wire [17:0] add_0123_step2, add_4567_step2;
add #(
    .SIGN_BIT(1),
    .INT_BIT(16),
    .FLT_BIT(0)
) u_add_mul_hn_0_1_2_3 (
    .din_a(add_01_step1),
    .din_b(add_23_step1),
    .dout(add_0123_step2) // 1 17 0 => 18bit
);

add #(
    .SIGN_BIT(1),
    .INT_BIT(16),
    .FLT_BIT(0)
) u_add_mul_hn_4_5_6_7 (
    .din_a(add_45_step1),
    .din_b(add_67_step1),
    .dout(add_4567_step2) // 1 17 0 => 18bit
);

//////////////////////////////////////////////////////////////////////////////////////
wire [18:0] add_01234567_step3;
add #(
    .SIGN_BIT(1),
    .INT_BIT(17),
    .FLT_BIT(0)
) u_add_mul_hn_01234567 (
    .din_a(add_0123_step2),
    .din_b(add_4567_step2),
    .dout(add_01234567_step3) // 1 18 0 => 19bit
);

wire [18:0] add_89_step3_ext;
assign add_89_step3_ext = {add_89_step1[16],add_89_step1[16],add_89_step1[16],add_89_step1[15:0]};

//////////////////////////////////////////////////////////////////////////////////////
wire [19:0] add_fin_step4;
add #(
    .SIGN_BIT(1),
    .INT_BIT(18),
    .FLT_BIT(0)
) u_add_final(
    .din_a(add_01234567_step3),
    .din_b(add_89_step3_ext),
    .dout(add_fin_step4) // 1 19 0 => 20bit
);

wire [7:0] yn_data_d;
assign yn_data_d = {add_fin_step4[19],add_fin_step4[15:9]};

//wire [7:0] 

//assign yn_data = {add_fin_step4[19],add_fin_step4[14:8]};
assign yn_data = ((add_fin_step4[19] == 1'b0) && (add_fin_step4[16] == 1'b1)) ? 8'h7f : ((add_fin_step4[19] == 1'b1) && (add_fin_step4[16] == 1'b0)) ? 8'h80 : yn_data_d;
//assign yn_data = add_fin_step4;
endmodule
