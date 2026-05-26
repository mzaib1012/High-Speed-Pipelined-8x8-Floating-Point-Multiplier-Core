// tb.sv
module tb;
    logic clk, rst;
    logic [15:0] a, b, res;

    fp_multiplier dut (.*);

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dump.vcd"); $dumpvars;
        rst = 1; #10; rst = 0;
        a = 16'd5; b = 16'd10; #10;
        a = 16'd2; b = 16'd3; #10;
        #20 $finish;
    end
endmodule
