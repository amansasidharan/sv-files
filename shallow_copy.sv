program shallow_copy();
  
  class A;
    int j=5;
  endclass
  
  class B;
    int i=1;
    A a=new();
    
  endclass
  
  initial begin
    B b1,b2;
    b1=new();
    b2=new b1;
    
    $display("b1.i=%0d, b2.i=%0d, b1.a.j=%0d, b2.a.j=%0d",b1.i,b2.i,b1.a.j,b2.a.j);
    
    b2.i=10;
     $display("b1.i=%0d, b2.i=%0d, b1.a.j=%0d, b2.a.j=%0d",b1.i,b2.i,b1.a.j,b2.a.j);
    b2.a.j=50;
     $display("b1.i=%0d, b2.i=%0d, b1.a.j=%0d, b2.a.j=%0d",b1.i,b2.i,b1.a.j,b2.a.j);
    
  end
endprogram
    
    
