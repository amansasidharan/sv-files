module associative_array();
  int mem[int];
  int i;
  
  initial begin
    mem='{100:101,1:100,5:99,256:77};
    $display("the size of the associative array is = %0p",mem.size());
    if(mem.exists(2))
      $display("index 2 is exist");
    else
      $display("index 2 is not exist");
    if(mem.exists(100))
      $display("index 100 is exist");
    else
      $display("index 100 is not exist");
    
    if(mem.first(i))
      $display("the value stored in the first index is = %0p",mem[i]);
    if(mem.last(i))
      $display("the value stored in the last index =%0p",mem[i]);
    
    mem.delete(1);
      
    if(mem.first(i))
      $display("the value stored in the first index is =%0p",mem[i]);
    
    #1 $finish;
    
    
  end
endmodule
