`timescale 1ns / 1ps

module tb_memsp;
  reg clka;
  reg [31:0] addra;
  reg [31:0] dina;
  reg ena;
  reg rsta;
  reg [3:0] wea;
  wire [31:0] douta;

  // Clock generation
  initial begin
    clka = 1'b0;
    forever #5 clka = ~clka;
  end

  // Test stimulus
  initial begin
    // Initial values
    addra = 32'd0;
    dina = 32'b0;
    ena = 0;
    rsta = 0;
    wea = 4'b0000;

    // Apply reset
    #100;
    rsta = 1;
    #100;
    rsta = 0;

    // Perform write operation
    @(posedge clka);
    wea = 4'b1111;
    dina = 32'b01010101010101010101010101010101;
    ena = 1;
    @(posedge clka);
    ena = 0;

    // Perform read operation
    @(posedge clka);
    wea = 4'b0000;
    ena = 1;
    @(posedge clka);
    ena = 0;

    // Finish simulation
    #100;
    $finish;
  end

  // Instantiate the design_1_wrapper module
  design_1_wrapper design_1_i (
    .addra(addra),
    .clka(clka),
    .dina(dina),
    .douta(douta),
    .ena(ena),
    .rsta(rsta),
    .wea(wea)
  );

endmodule
