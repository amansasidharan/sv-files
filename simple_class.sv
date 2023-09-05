class simple;
  int i,j;
  
  task printf;
    $display("i=%0d, j=%0d",i,j);
  endtask
endclass
    program simple_class;
      initial begin
        simple obj_1,obj_2;
        obj_1=new();
        obj_2=new();
        obj_1.i=2;
        obj_2.i=4;
        
        obj_1.printf();
        obj_2.printf();
      end
    endprogram
