`include "mux_int.v"
`include "mux_int_gen.v"
`include "mux_int_check.v"

module mux_int_test;
   

   wire [0:31] out_data;
   wire        out_resp;
   reg  [0:31] in_data1, in_data2;
   reg         in_sel1,  in_sel2;

   mux_int_gen StimulusGenerator(in_sel1, in_sel2, in_data1, in_data2);
   mux_int M1(out_data, out_resp, in_data1, in_data2, in_sel1, in_sel2);
   //out_data outputs a response indicating valid data
   mux_int_check Checker(out_data, out_resp, in_data1, in_data2, in_sel1, in_sel2);
   
   
endmodule // mux_int_test
