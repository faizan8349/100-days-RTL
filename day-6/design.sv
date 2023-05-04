// Code your design here
module decoder(a,b,y0,y1,y2,y3);
  input  a,b; 
  output y0,y1,y2,y3;
  
  wire y0 = (~a)&(~b);
  wire y1 = (~a)&b;
  wire y2 = a&(~b);
  wire y3 = a&b;
    
endmodule

