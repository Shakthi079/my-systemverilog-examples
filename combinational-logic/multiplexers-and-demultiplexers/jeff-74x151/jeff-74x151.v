// 8-line to 1-line data selector/multiplexer
module jeff_74x151(
    input                d0,                  // 
    input                d1,                  // 
    input                d2,                  // 
    input                d3,                  // 
    input                d4,                  // 
    input                d5,                  // 
    input                d6,                  // 
    input                d7,                  // 
    input                a,                   // 
    input                b,                   // 
    input                c,                   // 
    input                en,                  //
    output               y,                   // 
    output               w                    // 
);

reg  y;

assign w = ~y;

always @ ( * ) begin
    if (!en) begin
        case({c,b,a})
            3'b000 : y <= d0;
            3'b001 : y <= d1;
            3'b010 : y <= d2;
            3'b011 : y <= d3;
            3'b100 : y <= d4;
            3'b101 : y <= d5;
            3'b110 : y <= d6;
            3'b111 : y <= d7;
        endcase
    end else begin
        y <= 1'b1;
    end
end

endmodule
