module MB112S146 (clk, load, data1, data2, out1, out2, reverse, latch, in1, in2, select16bit, clear); 
input  clk, load, reverse, clear; 
input  latch, in1, in2, select16bit; //unused inputs

input [7:0] data1, data2;
reg [7:0] dataReg1, dataReg2;
reg [3:0] counter;
output out1, out2; 
 
always @( posedge clk or negedge clear ) 
begin 
	if (~clear)
	begin
		//reset data and counter
		dataReg1 <= 8'b0;
		dataReg2 <= 8'b0;
		counter = 0;
	end
	else if (~load)
	begin
		counter = 0;
		dataReg1 <= data1;
		dataReg2 <= data2;
	end
	else if (load) //no load
	begin
		if (counter < 7)
		begin
			counter = counter + 1;
		end
		else
		begin
			dataReg1 <= 8'b0;
			dataReg2 <= 8'b0;
		end
	end
	
end

assign out1 = (reverse) ? dataReg1[counter] : dataReg1[7-counter];
assign out2 = (reverse) ? dataReg2[counter] : dataReg2[7-counter];

endmodule 