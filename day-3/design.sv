// Code your design here
module m();
  reg a,b,c,sum,abar,y;
  
  not (abar,a);
  and g1(c,abar,b);
  xor f2(sum,a,b);
  or (y,sum,c);
  
  initial 
    begin 
      $monitor("a=%b,b=%b,C=%b,sum=%b,y=%b",a,b,c,sum,y);
   
     #1   a=0;  b=0;
     #1   a=0;  b=1;
     #1   a=1;  b=0;
     #1   a=1;  b=1;
  end 
  
  
  initial 
  
    begin
   
      $monitor("a=%b,b=%b,C=%b,sum=%b,%b",a,b,c,sum,y);
    
     end
  
endmodule 
