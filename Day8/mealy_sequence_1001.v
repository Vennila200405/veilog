module mealy_1001 (
    input clk,
    input rst,
    input x,
    output reg y);
parameter S0 = 2'b00,
              S1 = 2'b01,
              S2 = 2'b10,
              S3 = 2'b11;
reg [1:0] state, next_state;
  always @(posedge clk or posedge rst) begin
        if (rst)
            state <= S0;
        else
            state <= next_state;
    end
    always @(*) begin
      case (state)
            S0: begin
                if (x == 1)
                    next_state = S1;
                else
                    next_state = S0;
                y = 0;
            end
              S1: begin
                if (x == 0)
                    next_state = S2;
                else
                    next_state = S1;
                y = 0;
            end
                S2: begin
                if (x == 0)
                    next_state = S3;
                else
                    next_state = S1;
                y = 0;
                  end
                  S3: begin
                if (x == 1) begin
                    next_state = S1; 
                    y = 1;           
                end else begin
                    next_state = S2;
                    y = 0;
                end
            end
                    default: begin
                next_state = S0;
                y = 0;
            end
        endcase
    end

endmodule
