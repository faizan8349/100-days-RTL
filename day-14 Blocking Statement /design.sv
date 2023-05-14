// Code your design here

  
  // Code your design here
module m();
  
  reg x,y,z;
  
  reg[9:0] reg_a,reg_b;
 
  
  integer count;
  
  initial
    begin 
   
      x=1; y=1;
    
    z=1;
    
      count =0;
      
      reg_a=4;
      
      reg_b =reg_a;

      $display("value of reg_a=%d,reg_b=%d,x=%d,y=%d,z=%d,t=%t",reg_a,reg_b,x,y,z,count,$time);

      reg_a=0;
      reg_b=0;
      
      #2  reg_a[2]=1'b1;
      
      #2 reg_b[5:3] = {x,y,z};
      
      count =count +1;
    
    end 
  
  initial
  
    begin 
    
      $monitor ("value of reg_a=%b,reg_b=%b,x=%d,y=%d,z=%d,t=%0t",reg_a,reg_b,x,y,z,count,$time);
  
    end
  
  initial 
    
    begin 
      
      $dumpfile("dump.vcd");
      $dumpvars();
      
    end 
  

endmodule
