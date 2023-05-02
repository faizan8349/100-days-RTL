// Code your design here
module full_subtractor;
  reg a,b,c,s,ci;
  wire w1,w2,w3,w4;
  not (abar,a);
  not (bbar,b);
  not (cbar,c);
  xor (s,a,b,c);
  and (w2,abar,b);
  and (w3,b,c);
  and (w4,c,abar);
  or  (ci,w2,w3,w4);
  or   (w1,ci,s);
  
  

  initial 
    begin 
  
  #2  a=0; b=0; c=0;
   #2   a=0; b=0; c=1;
   #2   a=0; b=1; c=0;
   #2   a=0; b=1; c=1;
   #2   a=1; b=0; c=0;
   #2   a=1; b=0; c=1;
   #2   a=1; b=1; c=0;
   #2   a=1; b=1; c=1;
    
      //a=0; b=0; c=0;
    end 
      
      initial 
       begin
        
      $monitor("a=%b,b=%b,c=%b,s=%b,ci=%b",a,b,c,s,ci);
  
    end 
  
  initial 
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  
endmodule

