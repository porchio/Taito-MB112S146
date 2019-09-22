# Taito-MB112S146
 MB112S146 custom chip in verilog

This was created by studying an original IC's behaviour.
It is NOT fully implemented and was only created to work with Arkanoid which I have tested and it seems to work OK using an EPM7064 CPLD.

				+---------v---------+
			/Load	|1		  28|	VCC
			Latch	|2		  27|	/Clear
			IN1	|3		  26|	Reverse
			IN2	|4		  25|	SEL
			Clock	|5		  24|	2D0
			1D0	|6		  23|	2D1
			1D1	|7		  22|	2D2
			1D2	|8		  21|	2D3
			1D3	|9		  20|	2D4
			1D4	|10		  19|	2D5
			1D5	|11		  18|	2D6
			1D6	|12		  17|	2D7
			1D7	|13		  16|	OUT1
			GND	|14		  15|	OUT2
				+-------------------+
