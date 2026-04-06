`timescale 1ns / 1ps
module audio(
    input clk,
    input rst,
    input audio_we,
    input [31:0] audio_in,
    output AUD_PWM,
    output AUD_SD
);
    // 200 ~ 1000 Hz -> period 100000 ~ 500000 -> half period 50000 ~ 250000
    reg [31:0] audio_reg;
    always@(posedge clk or posedge rst)
    begin
        if(rst)
            audio_reg<=32'd0;
        else if(audio_we)
            audio_reg<=audio_in;
        else
            audio_reg<=audio_reg;
    end

    reg pwm_out;
    reg [31:0] cnt;
    wire [31:0] limit=(audio_reg>=32'd100000&&audio_reg<=32'd500000)?(audio_reg>>1):32'd0;
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            cnt<=32'h0;
            pwm_out<=1'b0;
        end
        else if(cnt<limit)
            cnt<=cnt+1'b1;
        else
        begin
            cnt<=32'h0;
            pwm_out<=~pwm_out;
        end
    end
    assign AUD_PWM=pwm_out?1'bz:1'b0;

    reg SD_out;
    reg [31:0] counter;
    // always@(posedge clk or posedge rst)
    // begin
    //     if(rst)
    //     begin
    //         SD_out<=1'b0;
    //         counter<=32'h0;
    //     end
    //     else if(audio_in==32'hffffffff)
    //     begin
    //         SD_out<=1'b1;
    //         counter<=32'h0;
    //     end
    //     else if(counter[25])
    //         SD_out<=1'b0;
    //     else
    //     begin
    //         SD_out<=SD_out;
    //         counter<=counter+1'b1;
    //     end
    // end
    always @(posedge clk or posedge rst)
    begin
        if(rst)
            SD_out<=1'b0;
        else if(audio_in==32'hffffffff)
            SD_out<=1'b0;
        else
            SD_out<=1'b1;
    end
    assign AUD_SD=SD_out;

endmodule