program polymorphism;
  
  class packet;
    bit[31:0]data;
    
   virtual function int send();
      $display("SENDING BASE PACKET");
      return 1;
    endfunction
  endclass
  
  class ethernet_packet extends packet;
    bit[31:0]ether_data;
    
    function int send();
      $display("SENDING ETHERNET PACKET");
      return 1;
    endfunction 
  endclass
  
  class token_packet extends packet;
    bit[31:0]token_data;
    
    function int send();
      $display("SENDING TOKEN PACKET");
      return 1;
    endfunction
  endclass
  
  packet pkts[10];
  
  ethernet_packet ep;
  token_packet tp;
  
  initial begin
    ep=new();
    tp=new();
    
    pkts[0]=ep;
    pkts[1]=tp;
    
    pkts[0].send();
    pkts[1].send();
    
  end
endprogram
      
