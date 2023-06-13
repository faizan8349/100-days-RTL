// Code your design here
module m;
 typedef enum {s1,s2,s3,s4,s5,s6} a1;
  
  
  typedef struct   {reg a;
                 integer i;
                 real r1;
                 time t;
                 int i1;
                 shortint i2;
                 longint i3;
                a1 l1; }  str;
  
  str k1;
  str k2;
  
  
  initial 
    begin
      
      k1 = '{1'b0  ,    32  , 10.4  ,23  , 12 , 11  , 13 ,  s4};
      
      $display("k1=%p",k1);
      
      k2.l1 = s3;
      
      $display("k2=%p",k2);
      
      
      k2.i3=90;
      
      $display("k2=%p",k2);
      
    end 
  
  initial 
  
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end 
  
endmodule
