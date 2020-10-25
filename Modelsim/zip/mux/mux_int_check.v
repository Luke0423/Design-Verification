module mux_int_check(out_data, out_resp, in_data1, in_data2, in_sel1, in_sel2);

input out_data, out_resp, in_data1, in_data2, in_sel1, in_sel2;

always @ (in_data1 or in_data2 or in_sel1 or in_sel2) begin     

    $display ("time: %t, data: %d, resp: %b", $time, out_data, out_resp);
    
end


endmodule