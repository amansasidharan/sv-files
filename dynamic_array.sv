module dynamic_array;
  bit[7:0] array[];
  initial begin
    array=new[4];
    $display("setting array size to %0p",array.size());
    array='{0,1,2,3};
    $display("Initialize the array with %0p values",array);
    array=new[8](array);
    $display("the current size of the array %0p",array.size());
  
    
    foreach(array[i])
      begin
        $display("the value in the location [%0p] = %0p",i,array[i]);
  end
    
    array.delete();
    $display("the current size of the array is %0p",array.size());
    
    #1 $finish;
  end
endmodule
