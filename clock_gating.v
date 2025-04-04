module clk_gating(
  input wire clk,enable,rst,
  output wire gated_clk,latch_1,latch_2
);
  reg latch1;
  reg latch2;
  always@(posedge clk) begin
    if(rst)begin
      latch1<=1'b0;
    end else begin
      latch1<=enable;
    end
  end
  always@(posedge clk) begin
    if(rst) begin
      latch2<=1'b0;
    end else begin
      latch2<=latch1;
    end
  end
  assign gated_clk=clk & latch2;
  assign latch_1 = latch1;
  assign latch_2 = latch2;
endmodule
