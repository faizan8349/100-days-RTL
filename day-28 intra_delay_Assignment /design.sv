// Code your design here
// Code your design here
module intera_delay_assignment();
  
  reg[3:0] a,b,c,d,e;
  
  initial 
  
    begin 
    
      a<=#10 4'b0011;
      b<=#10 4'b0011;
      c<=#10 4'b0101;
     
      #10;
      
      d= #20 b&c;
      
      e = #10 b&a;
    end
  
  initial 

begin 
      
      $monitor("a=%d,b=%d,c=%d,d=%b,e=%b",a,b,c,d,e,$time);   

end 

initial 

begin 

$dumpfile("dump.vcd");
$dumpvars();

end 

endmodule 
