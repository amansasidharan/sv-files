module queues();
  int i=1,j;
  int b[$]='{3,4};
  int q[$]='{0,2,5};
  
  initial begin
 
    q.insert( 1,j);
    $display("q= %p",q);
    
    q.insert(3,b[$]);
    $display("q= %p",q);
    
    q.delete(1);
    $display("q= %p",q);
    
    q.push_front(6);
     $display("q= %p",q);
    
    j=q.pop_back();
    $display("q= %p",j);
    
    q.push_back(8);
     $display("q= %p",q);
    
   j= q.pop_front();
    $display("q= %p",j);
  end
endmodule
