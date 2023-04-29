
# 100-days-RTL

//HALF ADDER USING GATE LEVEL

module halfadder(a,b,c,s);

input a,b;

output s,c;

wire w1,w2,w3,w4; 

 not (w1,a);
  not (w2,b);
  and (w3,w1,b);
  and (w4,w2,a);
  or (s,w2,w4);  
  and  (c,a,b);

endmodule
