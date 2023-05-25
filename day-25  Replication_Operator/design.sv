// Code your design here
module replication_operator();
  
  reg  a;
  
  reg [3:0] b,c;
  
  reg [3:0]  y;
  
  reg [7:0]  y1;
  
  reg [11:0]  y2;
  initial begin 
    
    a=1'b0;
    
    b =  4'b1001;
    
    c =  4'b1101;
    
    y = {4{a}};
    
    $display("y=%b",y);
    
    y1 = ({ {4{a}}, {b}});
    
    $display("y1=%b",y1);
    
    y2 = { {4{a}},{ b},{c}};
    
    $display("y2=%b",y2);
    
  end 
  
  initial 
  
    begin
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end
  
endmodule 
