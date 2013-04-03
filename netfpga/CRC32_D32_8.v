////////////////////////////////////////////////////////////////////////////////
// Copyright (C) 1999-2008 Easics NV.
// This source file may be used and distributed without restriction
// provided that this copyright statement is not removed from the file
// and that any derivative work contains the original copyright notice
// and the associated disclaimer.
//
// THIS SOURCE FILE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS
// OR IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
// WARRANTIES OF MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
//
// Purpose : synthesizable CRC function
//   * polynomial: (0 1 2 4 6 7 8 9 11 12 15 16 18 20 22 23 25 27 29 31 32)
//   * data width: 32
//
// Info : tools@easics.be
//        http://www.easics.com
////////////////////////////////////////////////////////////////////////////////
module CRC32_D32_8;

  // polynomial: (0 1 2 4 6 7 8 9 11 12 15 16 18 20 22 23 25 27 29 31 32)
  // data width: 32
  // convention: the first serial bit is D[31]
  function [31:0] nextCRC32_D32_8;

    input [31:0] Data;
    input [31:0] crc;
    reg [31:0] d;
    reg [31:0] c;
    reg [31:0] newcrc;
  begin
    d = Data;
    c = crc;

    newcrc[0] = d[30] ^ d[29] ^ d[25] ^ d[24] ^ d[22] ^ d[18] ^ d[17] ^ d[15] ^ d[13] ^ d[8] ^ d[7] ^ d[5] ^ d[4] ^ d[2] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[2] ^ c[4] ^ c[5] ^ c[7] ^ c[8] ^ c[13] ^ c[15] ^ c[17] ^ c[18] ^ c[22] ^ c[24] ^ c[25] ^ c[29] ^ c[30];
    newcrc[1] = d[31] ^ d[29] ^ d[26] ^ d[24] ^ d[23] ^ d[22] ^ d[19] ^ d[17] ^ d[16] ^ d[15] ^ d[14] ^ d[13] ^ d[9] ^ d[7] ^ d[6] ^ d[4] ^ d[3] ^ d[0] ^ c[0] ^ c[3] ^ c[4] ^ c[6] ^ c[7] ^ c[9] ^ c[13] ^ c[14] ^ c[15] ^ c[16] ^ c[17] ^ c[19] ^ c[22] ^ c[23] ^ c[24] ^ c[26] ^ c[29] ^ c[31];
    newcrc[2] = d[29] ^ d[27] ^ d[23] ^ d[22] ^ d[20] ^ d[16] ^ d[14] ^ d[13] ^ d[10] ^ d[2] ^ d[0] ^ c[0] ^ c[2] ^ c[10] ^ c[13] ^ c[14] ^ c[16] ^ c[20] ^ c[22] ^ c[23] ^ c[27] ^ c[29];
    newcrc[3] = d[30] ^ d[28] ^ d[24] ^ d[23] ^ d[21] ^ d[17] ^ d[15] ^ d[14] ^ d[11] ^ d[3] ^ d[1] ^ c[1] ^ c[3] ^ c[11] ^ c[14] ^ c[15] ^ c[17] ^ c[21] ^ c[23] ^ c[24] ^ c[28] ^ c[30];
    newcrc[4] = d[31] ^ d[30] ^ d[17] ^ d[16] ^ d[13] ^ d[12] ^ d[8] ^ d[7] ^ d[5] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[5] ^ c[7] ^ c[8] ^ c[12] ^ c[13] ^ c[16] ^ c[17] ^ c[30] ^ c[31];
    newcrc[5] = d[31] ^ d[18] ^ d[17] ^ d[14] ^ d[13] ^ d[9] ^ d[8] ^ d[6] ^ d[2] ^ d[1] ^ c[1] ^ c[2] ^ c[6] ^ c[8] ^ c[9] ^ c[13] ^ c[14] ^ c[17] ^ c[18] ^ c[31];
    newcrc[6] = d[30] ^ d[29] ^ d[25] ^ d[24] ^ d[22] ^ d[19] ^ d[17] ^ d[14] ^ d[13] ^ d[10] ^ d[9] ^ d[8] ^ d[5] ^ d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[3] ^ c[4] ^ c[5] ^ c[8] ^ c[9] ^ c[10] ^ c[13] ^ c[14] ^ c[17] ^ c[19] ^ c[22] ^ c[24] ^ c[25] ^ c[29] ^ c[30];
    newcrc[7] = d[31] ^ d[29] ^ d[26] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[17] ^ d[14] ^ d[13] ^ d[11] ^ d[10] ^ d[9] ^ d[8] ^ d[7] ^ d[6] ^ d[0] ^ c[0] ^ c[6] ^ c[7] ^ c[8] ^ c[9] ^ c[10] ^ c[11] ^ c[13] ^ c[14] ^ c[17] ^ c[20] ^ c[22] ^ c[23] ^ c[24] ^ c[26] ^ c[29] ^ c[31];
    newcrc[8] = d[29] ^ d[27] ^ d[23] ^ d[22] ^ d[21] ^ d[17] ^ d[14] ^ d[13] ^ d[12] ^ d[11] ^ d[10] ^ d[9] ^ d[5] ^ d[4] ^ d[2] ^ d[0] ^ c[0] ^ c[2] ^ c[4] ^ c[5] ^ c[9] ^ c[10] ^ c[11] ^ c[12] ^ c[13] ^ c[14] ^ c[17] ^ c[21] ^ c[22] ^ c[23] ^ c[27] ^ c[29];
    newcrc[9] = d[29] ^ d[28] ^ d[25] ^ d[23] ^ d[17] ^ d[14] ^ d[12] ^ d[11] ^ d[10] ^ d[8] ^ d[7] ^ d[6] ^ d[4] ^ d[3] ^ d[2] ^ d[0] ^ c[0] ^ c[2] ^ c[3] ^ c[4] ^ c[6] ^ c[7] ^ c[8] ^ c[10] ^ c[11] ^ c[12] ^ c[14] ^ c[17] ^ c[23] ^ c[25] ^ c[28] ^ c[29];
    newcrc[10] = d[30] ^ d[29] ^ d[26] ^ d[24] ^ d[18] ^ d[15] ^ d[13] ^ d[12] ^ d[11] ^ d[9] ^ d[8] ^ d[7] ^ d[5] ^ d[4] ^ d[3] ^ d[1] ^ c[1] ^ c[3] ^ c[4] ^ c[5] ^ c[7] ^ c[8] ^ c[9] ^ c[11] ^ c[12] ^ c[13] ^ c[15] ^ c[18] ^ c[24] ^ c[26] ^ c[29] ^ c[30];
    newcrc[11] = d[31] ^ d[29] ^ d[27] ^ d[24] ^ d[22] ^ d[19] ^ d[18] ^ d[17] ^ d[16] ^ d[15] ^ d[14] ^ d[12] ^ d[10] ^ d[9] ^ d[7] ^ d[6] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[6] ^ c[7] ^ c[9] ^ c[10] ^ c[12] ^ c[14] ^ c[15] ^ c[16] ^ c[17] ^ c[18] ^ c[19] ^ c[22] ^ c[24] ^ c[27] ^ c[29] ^ c[31];
    newcrc[12] = d[29] ^ d[28] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[19] ^ d[16] ^ d[11] ^ d[10] ^ d[5] ^ d[4] ^ d[0] ^ c[0] ^ c[4] ^ c[5] ^ c[10] ^ c[11] ^ c[16] ^ c[19] ^ c[20] ^ c[22] ^ c[23] ^ c[24] ^ c[28] ^ c[29];
    newcrc[13] = d[30] ^ d[29] ^ d[25] ^ d[24] ^ d[23] ^ d[21] ^ d[20] ^ d[17] ^ d[12] ^ d[11] ^ d[6] ^ d[5] ^ d[1] ^ c[1] ^ c[5] ^ c[6] ^ c[11] ^ c[12] ^ c[17] ^ c[20] ^ c[21] ^ c[23] ^ c[24] ^ c[25] ^ c[29] ^ c[30];
    newcrc[14] = d[31] ^ d[30] ^ d[26] ^ d[25] ^ d[24] ^ d[22] ^ d[21] ^ d[18] ^ d[13] ^ d[12] ^ d[7] ^ d[6] ^ d[2] ^ c[2] ^ c[6] ^ c[7] ^ c[12] ^ c[13] ^ c[18] ^ c[21] ^ c[22] ^ c[24] ^ c[25] ^ c[26] ^ c[30] ^ c[31];
    newcrc[15] = d[31] ^ d[30] ^ d[29] ^ d[27] ^ d[26] ^ d[24] ^ d[23] ^ d[19] ^ d[18] ^ d[17] ^ d[15] ^ d[14] ^ d[5] ^ d[4] ^ d[3] ^ d[2] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[2] ^ c[3] ^ c[4] ^ c[5] ^ c[14] ^ c[15] ^ c[17] ^ c[18] ^ c[19] ^ c[23] ^ c[24] ^ c[26] ^ c[27] ^ c[29] ^ c[30] ^ c[31];
    newcrc[16] = d[31] ^ d[29] ^ d[28] ^ d[27] ^ d[22] ^ d[20] ^ d[19] ^ d[17] ^ d[16] ^ d[13] ^ d[8] ^ d[7] ^ d[6] ^ d[3] ^ d[0] ^ c[0] ^ c[3] ^ c[6] ^ c[7] ^ c[8] ^ c[13] ^ c[16] ^ c[17] ^ c[19] ^ c[20] ^ c[22] ^ c[27] ^ c[28] ^ c[29] ^ c[31];
    newcrc[17] = d[30] ^ d[29] ^ d[28] ^ d[23] ^ d[21] ^ d[20] ^ d[18] ^ d[17] ^ d[14] ^ d[9] ^ d[8] ^ d[7] ^ d[4] ^ d[1] ^ c[1] ^ c[4] ^ c[7] ^ c[8] ^ c[9] ^ c[14] ^ c[17] ^ c[18] ^ c[20] ^ c[21] ^ c[23] ^ c[28] ^ c[29] ^ c[30];
    newcrc[18] = d[31] ^ d[25] ^ d[21] ^ d[19] ^ d[17] ^ d[13] ^ d[10] ^ d[9] ^ d[7] ^ d[4] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[4] ^ c[7] ^ c[9] ^ c[10] ^ c[13] ^ c[17] ^ c[19] ^ c[21] ^ c[25] ^ c[31];
    newcrc[19] = d[26] ^ d[22] ^ d[20] ^ d[18] ^ d[14] ^ d[11] ^ d[10] ^ d[8] ^ d[5] ^ d[2] ^ d[1] ^ c[1] ^ c[2] ^ c[5] ^ c[8] ^ c[10] ^ c[11] ^ c[14] ^ c[18] ^ c[20] ^ c[22] ^ c[26];
    newcrc[20] = d[30] ^ d[29] ^ d[27] ^ d[25] ^ d[24] ^ d[23] ^ d[22] ^ d[21] ^ d[19] ^ d[18] ^ d[17] ^ d[13] ^ d[12] ^ d[11] ^ d[9] ^ d[8] ^ d[7] ^ d[6] ^ d[5] ^ d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[3] ^ c[4] ^ c[5] ^ c[6] ^ c[7] ^ c[8] ^ c[9] ^ c[11] ^ c[12] ^ c[13] ^ c[17] ^ c[18] ^ c[19] ^ c[21] ^ c[22] ^ c[23] ^ c[24] ^ c[25] ^ c[27] ^ c[29] ^ c[30];
    newcrc[21] = d[31] ^ d[30] ^ d[28] ^ d[26] ^ d[25] ^ d[24] ^ d[23] ^ d[22] ^ d[20] ^ d[19] ^ d[18] ^ d[14] ^ d[13] ^ d[12] ^ d[10] ^ d[9] ^ d[8] ^ d[7] ^ d[6] ^ d[5] ^ d[4] ^ d[2] ^ d[1] ^ c[1] ^ c[2] ^ c[4] ^ c[5] ^ c[6] ^ c[7] ^ c[8] ^ c[9] ^ c[10] ^ c[12] ^ c[13] ^ c[14] ^ c[18] ^ c[19] ^ c[20] ^ c[22] ^ c[23] ^ c[24] ^ c[25] ^ c[26] ^ c[28] ^ c[30] ^ c[31];
    newcrc[22] = d[31] ^ d[30] ^ d[27] ^ d[26] ^ d[23] ^ d[22] ^ d[21] ^ d[20] ^ d[19] ^ d[18] ^ d[17] ^ d[14] ^ d[11] ^ d[10] ^ d[9] ^ d[6] ^ d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[3] ^ c[4] ^ c[6] ^ c[9] ^ c[10] ^ c[11] ^ c[14] ^ c[17] ^ c[18] ^ c[19] ^ c[20] ^ c[21] ^ c[22] ^ c[23] ^ c[26] ^ c[27] ^ c[30] ^ c[31];
    newcrc[23] = d[31] ^ d[30] ^ d[29] ^ d[28] ^ d[27] ^ d[25] ^ d[23] ^ d[21] ^ d[20] ^ d[19] ^ d[17] ^ d[13] ^ d[12] ^ d[11] ^ d[10] ^ d[8] ^ d[0] ^ c[0] ^ c[8] ^ c[10] ^ c[11] ^ c[12] ^ c[13] ^ c[17] ^ c[19] ^ c[20] ^ c[21] ^ c[23] ^ c[25] ^ c[27] ^ c[28] ^ c[29] ^ c[30] ^ c[31];
    newcrc[24] = d[31] ^ d[30] ^ d[29] ^ d[28] ^ d[26] ^ d[24] ^ d[22] ^ d[21] ^ d[20] ^ d[18] ^ d[14] ^ d[13] ^ d[12] ^ d[11] ^ d[9] ^ d[1] ^ c[1] ^ c[9] ^ c[11] ^ c[12] ^ c[13] ^ c[14] ^ c[18] ^ c[20] ^ c[21] ^ c[22] ^ c[24] ^ c[26] ^ c[28] ^ c[29] ^ c[30] ^ c[31];
    newcrc[25] = d[31] ^ d[27] ^ d[24] ^ d[23] ^ d[21] ^ d[19] ^ d[18] ^ d[17] ^ d[14] ^ d[12] ^ d[10] ^ d[8] ^ d[7] ^ d[5] ^ d[4] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[4] ^ c[5] ^ c[7] ^ c[8] ^ c[10] ^ c[12] ^ c[14] ^ c[17] ^ c[18] ^ c[19] ^ c[21] ^ c[23] ^ c[24] ^ c[27] ^ c[31];
    newcrc[26] = d[28] ^ d[25] ^ d[24] ^ d[22] ^ d[20] ^ d[19] ^ d[18] ^ d[15] ^ d[13] ^ d[11] ^ d[9] ^ d[8] ^ d[6] ^ d[5] ^ d[2] ^ d[1] ^ c[1] ^ c[2] ^ c[5] ^ c[6] ^ c[8] ^ c[9] ^ c[11] ^ c[13] ^ c[15] ^ c[18] ^ c[19] ^ c[20] ^ c[22] ^ c[24] ^ c[25] ^ c[28];
    newcrc[27] = d[30] ^ d[26] ^ d[24] ^ d[23] ^ d[22] ^ d[21] ^ d[20] ^ d[19] ^ d[18] ^ d[17] ^ d[16] ^ d[15] ^ d[14] ^ d[13] ^ d[12] ^ d[10] ^ d[9] ^ d[8] ^ d[6] ^ d[5] ^ d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[3] ^ c[4] ^ c[5] ^ c[6] ^ c[8] ^ c[9] ^ c[10] ^ c[12] ^ c[13] ^ c[14] ^ c[15] ^ c[16] ^ c[17] ^ c[18] ^ c[19] ^ c[20] ^ c[21] ^ c[22] ^ c[23] ^ c[24] ^ c[26] ^ c[30];
    newcrc[28] = d[31] ^ d[27] ^ d[25] ^ d[24] ^ d[23] ^ d[22] ^ d[21] ^ d[20] ^ d[19] ^ d[18] ^ d[17] ^ d[16] ^ d[15] ^ d[14] ^ d[13] ^ d[11] ^ d[10] ^ d[9] ^ d[7] ^ d[6] ^ d[5] ^ d[4] ^ d[2] ^ d[1] ^ c[1] ^ c[2] ^ c[4] ^ c[5] ^ c[6] ^ c[7] ^ c[9] ^ c[10] ^ c[11] ^ c[13] ^ c[14] ^ c[15] ^ c[16] ^ c[17] ^ c[18] ^ c[19] ^ c[20] ^ c[21] ^ c[22] ^ c[23] ^ c[24] ^ c[25] ^ c[27] ^ c[31];
    newcrc[29] = d[30] ^ d[29] ^ d[28] ^ d[26] ^ d[23] ^ d[21] ^ d[20] ^ d[19] ^ d[16] ^ d[14] ^ d[13] ^ d[12] ^ d[11] ^ d[10] ^ d[6] ^ d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[3] ^ c[4] ^ c[6] ^ c[10] ^ c[11] ^ c[12] ^ c[13] ^ c[14] ^ c[16] ^ c[19] ^ c[20] ^ c[21] ^ c[23] ^ c[26] ^ c[28] ^ c[29] ^ c[30];
    newcrc[30] = d[31] ^ d[30] ^ d[29] ^ d[27] ^ d[24] ^ d[22] ^ d[21] ^ d[20] ^ d[17] ^ d[15] ^ d[14] ^ d[13] ^ d[12] ^ d[11] ^ d[7] ^ d[5] ^ d[4] ^ d[2] ^ d[1] ^ c[1] ^ c[2] ^ c[4] ^ c[5] ^ c[7] ^ c[11] ^ c[12] ^ c[13] ^ c[14] ^ c[15] ^ c[17] ^ c[20] ^ c[21] ^ c[22] ^ c[24] ^ c[27] ^ c[29] ^ c[30] ^ c[31];
    newcrc[31] = d[31] ^ d[29] ^ d[28] ^ d[24] ^ d[23] ^ d[21] ^ d[17] ^ d[16] ^ d[14] ^ d[12] ^ d[7] ^ d[6] ^ d[4] ^ d[3] ^ d[1] ^ d[0] ^ c[0] ^ c[1] ^ c[3] ^ c[4] ^ c[6] ^ c[7] ^ c[12] ^ c[14] ^ c[16] ^ c[17] ^ c[21] ^ c[23] ^ c[24] ^ c[28] ^ c[29] ^ c[31];
    nextCRC32_D32_8 = newcrc;
  end
  endfunction
endmodule
