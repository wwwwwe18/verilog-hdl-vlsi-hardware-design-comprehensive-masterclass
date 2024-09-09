//*****************************************************
// Project		: FIFO - dual clock
// File			: section4_ex26_fifo_dual_clk
// Editor		: Wenmei Wang
// Date			: 09/09/2024
// Description	: FIFO - dual clock
//*****************************************************

module fifo_dual_clk(clk_w,clk_r,rst,buf_in,buf_out,wr_en,rd_en,buf_empty,buf_full,fifo_counter);

input			clk_w,clk_r,rst,wr_en,rd_en;
input	[7:0]	buf_in;
output	[7:0]	buf_out;
output			buf_empty,buf_full;
output	[7:0]	fifo_counter;

reg		[7:0]	buf_out;
reg				buf_empty,buf_full;
reg		[7:0]	fifo_counter;
reg		[3:0]	rd_ptr,wr_ptr;
reg		[7:0]	buf_mem[63:0];

// Check flags: buf_empty, buf_full
always @(fifo_counter) begin
	buf_empty = (fifo_counter == 0);
	buf_full = (fifo_counter == 64);
end

// Update fifo_counter: write
always @(posedge clk_w or posedge rst) begin
	if(rst)									// Async active high reset
		fifo_counter <= 0;
	else if(!buf_full && wr_en)
		fifo_counter <= fifo_counter + 1;
	else									// Comment out if conflict of clk_w and clk_r
		fifo_counter <= fifo_counter;
end

// Update fifo_counter: read
always @(posedge clk_r) begin
	if(!buf_empty && rd_en)
		fifo_counter <= fifo_counter - 1;
	else									// Comment out if conflict of clk_w and clk_r
		fifo_counter <= fifo_counter;
end

// Fetch data from FIFO
always @(posedge clk_r or posedge rst) begin
	if(rst)									// Async active high reset
		buf_out <= 0;
	else begin
		if(!buf_empty && rd_en)				// Read if buffer is not empty
			buf_out <= buf_mem[rd_ptr];		// Tail pointer
		else
			buf_out <= buf_out;
	end
end

// Write data into FIFO
always @(posedge clk_w) begin
	if(!buf_full && wr_en)					// Write if buffer is not full
		buf_mem[wr_ptr] <= buf_in;			// Head pointer
	else
		buf_mem[wr_ptr] <= buf_mem[wr_ptr];
end

// Manage wr_ptr
always @(posedge clk_w or posedge rst) begin
	if(rst)									// Async active high reset
		wr_ptr <= 0;
	else if(!buf_full && wr_en)				// Update head pointer if wr_en is high and buffer is not full
		wr_ptr <= wr_ptr + 1;
	else
		wr_ptr <= wr_ptr;
end

// Manage rd_ptr
always @(posedge clk_r or posedge rst) begin
	if(rst)									// Async active high reset
		rd_ptr <= 0;
	else if(!buf_empty && rd_en)			// Update tail pointer if rd_en is high and buffer is not empty
		rd_ptr <= rd_ptr + 1;
	else
		rd_ptr <= rd_ptr;
end

endmodule