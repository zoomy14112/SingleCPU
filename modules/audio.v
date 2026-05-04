`timescale 1ns / 1ps
module audio(
    input clk,
    input rst,
    input audio_we,
    input volume_we,
    input [31:0] audio_in,
    output AUD_PWM,
    output AUD_SD
);
    reg [31:0] audio_reg;
    reg [7:0] volume_reg;
    wire fq_valid=(audio_in>=32'd100000&&audio_in<=32'd1000000);
    wire vl_valid=(audio_in<=8'd16);
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            audio_reg<=32'h0;
            volume_reg<=8'd16;
        end
        else if(audio_we&fq_valid)
            audio_reg<=audio_in;
        else if(volume_we&vl_valid)
            volume_reg<=audio_in[7:0];
    end

    reg audio_pwm;
    reg [31:0] freq_cnt;
    wire [31:0] half_period=audio_reg>>1;
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            freq_cnt<=32'h0;
            audio_pwm<=1'b0;
        end
        else if(audio_we&fq_valid)
        begin
            freq_cnt<=32'h0;
            audio_pwm<=1'b0;
        end
        else if(|half_period)
        begin
            if(freq_cnt==half_period)
            begin
                freq_cnt<=32'h0;
                audio_pwm<=~audio_pwm;
            end
            else
                freq_cnt<=freq_cnt+1'b1;
        end
        else
        begin
            freq_cnt<=32'h0;
            audio_pwm<=1'b0;
        end
    end

    reg [7:0] volume_cnt;
    always@(posedge clk or posedge rst)
    begin
        if(rst)
            volume_cnt<=8'h0;
        else
            volume_cnt<=volume_cnt+1'b1;
    end
    wire volume_pwm=(volume_cnt<{volume_reg,4'b0});
    assign AUD_PWM=(audio_pwm&volume_pwm)?1'bz:1'b0;

    reg SD_out;
    reg [25:0] persist;
    always@(posedge clk or posedge rst)
    begin
        if(rst)
        begin
            SD_out<=1'b0;
            persist<=0;
        end
        else if(audio_we&fq_valid)
        begin
            SD_out<=1'b1;
            persist<=0;
        end
        else if(persist[25])
        begin
            SD_out<=1'b0;
            persist<=0;
        end
        else
            persist<=persist+1'b1;
    end
    assign AUD_SD=SD_out;

endmodule
