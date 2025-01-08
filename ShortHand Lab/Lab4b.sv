


module Lab4b( output logic A,B,C,D,E,F,G,DP, a0,a1,a2,a3,a4,a5,a6,a7,
                input logic x,y,z, a,b,c,d
    );
    
    assign a0 = x | y | z ;
    assign a1 = x | y | ~z ;
    assign a2 = x | ~y | z ;
    assign a3 = x | ~y | ~z ;
    assign a4 = ~x | y | z ;
    assign a5 = ~x | y | ~z ;
    assign a6 = ~x | ~y | z ;    
    assign a7 = ~x | ~y | ~z ;
    
    assign A = ( (~a & ~b & ~c & d) | (~a & b & ~c & ~d) ) | ( (a & b & ~c & d) | (a & ~b & c & d) );
    assign B = ( (~a & b & ~c & d ) | ( a & b & ~d ) ) | ( ( a & c & d ) | ( b & c & ~d) ) ; 
    assign C = (a & b & ~d ) | ( a & b & c ) | ( ~a & ~b & c & ~d) ;
    assign D = ( (~a & b & ~c & ~d ) | (  ~a & ~b & ~c & d ) ) | ( ( a & ~b & c & ~d ) | ( b & c & d) ) ;	
    assign E = (~a & b & ~c ) | ( ~b & ~c & d ) | ( ~a & d) ; 
    assign F =( (a & b & ~c & d ) | ( ~a & ~b & d ) ) | ( ( ~a & ~b & c ) | ( ~a & c & d) ) ; 
    assign G = (~a & ~b & ~c ) | ( ~a & b & c & d ) | (a & b & ~c & ~d) ; 
    assign DP = 1;
    

endmodule
