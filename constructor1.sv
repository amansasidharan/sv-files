class base;
  int value;
  
  function new();
    value=3;
  endfunction
endclass

class ext extends base;
  int x;
  
  function new();
    x=5;
  endfunction
endclass

program constructor1;
  ext e;
  initial begin
    e=new();
    $display("value = %0d",e.value);
    $display("x = %0d",e.x);
    
  end
endprogram
    
