//this is a data flow style
module mux_int(out_data, out_resp, in_data1, in_data2, in_sel1, in_sel2);
   
   output [0:31] out_data;
   output        out_resp;
   
   input [0:31]  in_data1, in_data2;
   input  	 in_sel1,  in_sel2;
   
   assign 	 out_resp = //out_data outputs a response indicating valid data
		 (in_sel1 != 1'b0) ? in_sel1 :
		 (in_sel2 != 1'b0) ? in_sel2 :
		 1'b0;
      // 00 -> 0  01 -> 1  10 -> 1  11 -> 1
   assign 	 out_data[0:31] = 
		 (in_sel1 != 1'b0) ? in_data1 :
		 (in_sel2 != 1'b0) ? in_data2 :
		 32'b0;

endmodule // mux_int


