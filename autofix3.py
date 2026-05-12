import re
with open('modules/sd_controller.v', 'r') as f:
    v = f.read()

# Fix the Read S_RD_DATA alignment
rd_data_old = r'''                // ===== RD_DATA: 512 bytes =====
                S_RD_DATA: begin
                    cs <= 0; mosi <= 1;
                    if\(sck_rise\) begin
                        sr <= \{sr\[6:0\], miso\}; bit_cnt <= bit_cnt \+ 1;
                        if\(bit_cnt == 3'd7\) begin bit_cnt <= 0;'''
rd_data_new = '''                // ===== RD_DATA: 512 bytes =====
                S_RD_DATA: begin
                    cs <= 0; mosi <= 1;
                    if(sck_rise) begin
                        sr <= {sr[6:0], miso}; bit_cnt <= bit_cnt + 1;
                        if(bit_cnt == 3'd7) begin bit_cnt <= 0;'''

# Actually, the fix I need is S_WR_DAT0 sr <= buf_sd_rdata[31:24] replaced with buffer[0][31:24]
wr_dat0_old = r'''sr <= buf_sd_rdata\[31:24\]; st <= S_WR_DATA; end'''
wr_dat0_new = '''sr <= buffer[wr_addr][31:24]; st <= S_WR_DATA; end'''

v = re.sub(wr_dat0_old, wr_dat0_new, v)

# Fix S_WR_DATA to properly fetch next byte
wr_data_old = r'''if\(wr_byte == 2'd3\) begin wr_byte <= 0; wr_addr <= wr_addr \+ 1; buf_sd_raddr <= wr_addr \+ 7'd1; sr <= buffer\[wr_addr \+ 7'd1\]\[31:24\]; end'''
wr_data_new = '''if(wr_byte == 2'd3) begin wr_byte <= 0; wr_addr <= wr_addr + 1; buf_sd_raddr <= wr_addr + 7'd1; sr <= buffer[wr_addr + 7'd1][31:24]; end'''

with open('modules/sd_controller.v', 'w') as f:
    f.write(v)
