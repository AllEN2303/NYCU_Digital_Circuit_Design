primitive or_and (y, a, b, c);       // combinational UDP
  output y;
  input a, b, c;
  table
    // a  b   c  :  y
       ?  ?   0   :  0;
       0  0   1   :  0;
       1  ?   1   :  1;
       ?  1   1   :  1;
  endtable
endprimitive
