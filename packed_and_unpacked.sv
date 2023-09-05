module packed_and_unpacked;
  bit[7:0]a = 8'hAA;
  
  bit b[7:0] = '{0,0,0,0,0,0,0,1};
  
  initial begin
    
    $display("0th element of packed array is %h",a[0]);
    $display("0th element of unpacked array is %h",b[0]);
    $display("the whole packed array is %0h",a);
    $display("unpacked array is %0p",b);
    
    #1 $finish;
    
    
  end
endmodule
