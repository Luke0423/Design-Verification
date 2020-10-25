module mux_int_gen (in_sel1, in_sel2, in_data1, in_data2);

output in_sel1, in_sel2, in_data1, in_data2;
reg in_sel1, in_sel2, in_data1, in_data2;

initial
  begin
   
     in_sel1  = 1'b1;
     in_sel2  = 1'b0;
     in_data1 = 4096;
     in_data2 = 1234;
       
     #100

       in_sel1 = 1'b0;

     #100

       in_sel2 = 1'b1;

     #100

       in_sel1 = 1'b1;

     #100

       in_data1 = 2048;

     #100

       in_data1 = 1024;
       in_data2 = 5678;

     #100

       in_sel1 = 1'b0;

     #100

       in_sel1 = 1'b1;

     #100

       in_sel1 = 1'b0;

     #100

       in_sel2 = 1'b0;

     #100 

       in_sel1 = 1'b1;

     #100 

       in_sel1 = 1'b0;

     #1 $stop;
     

  end // initial begin

endmodule