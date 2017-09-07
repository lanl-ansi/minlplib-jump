$offlisting
*  
*  Equation counts
*      Total        E        G        L        N        X        C        B
*        238      145       46       47        0        0        0        0
*  
*  Variable counts
*                   x        b        i      s1s      s2s       sc       si
*      Total     cont   binary  integer     sos1     sos2    scont     sint
*        645      599       46        0        0        0        0        0
*  FX      0        0        0        0        0        0        0        0
*  
*  Nonzero counts
*      Total    const       NL      DLL
*       2393     1795      598        0
*
*  Solve m using MINLP minimizing objvar;


Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17,x18,x19
          ,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34,x35,x36
          ,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51,x52,x53
          ,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68,x69,x70
          ,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85,x86,x87
          ,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101,x102,x103
          ,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114,x115,x116
          ,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127,x128,x129
          ,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140,x141,x142
          ,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153,x154,x155
          ,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166,x167,x168
          ,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179,x180,x181
          ,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192,x193,x194
          ,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205,x206,x207
          ,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218,x219,x220
          ,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231,x232,x233
          ,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244,x245,x246
          ,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257,x258,x259
          ,x260,x261,x262,x263,x264,x265,x266,x267,x268,x269,x270,x271,x272
          ,x273,x274,x275,x276,x277,x278,x279,x280,x281,x282,x283,x284,x285
          ,x286,x287,x288,x289,x290,x291,x292,x293,x294,x295,x296,x297,x298
          ,x299,x300,x301,x302,x303,x304,x305,x306,x307,x308,x309,x310,x311
          ,x312,x313,x314,x315,x316,x317,x318,x319,x320,x321,x322,x323,x324
          ,x325,x326,x327,x328,x329,x330,x331,x332,x333,x334,x335,x336,x337
          ,x338,x339,x340,x341,x342,x343,x344,x345,x346,x347,x348,x349,x350
          ,x351,x352,x353,x354,x355,x356,x357,x358,x359,x360,x361,x362,x363
          ,x364,x365,x366,x367,x368,x369,x370,x371,x372,x373,x374,x375,x376
          ,x377,x378,x379,x380,x381,x382,x383,x384,x385,x386,x387,x388,x389
          ,x390,x391,x392,x393,x394,x395,x396,x397,x398,x399,x400,x401,x402
          ,x403,x404,x405,x406,x407,x408,x409,x410,x411,x412,x413,x414,x415
          ,x416,x417,x418,x419,x420,x421,x422,x423,x424,x425,x426,x427,x428
          ,x429,x430,x431,x432,x433,x434,x435,x436,x437,x438,x439,x440,x441
          ,x442,x443,x444,x445,x446,x447,x448,x449,x450,x451,x452,x453,x454
          ,x455,x456,x457,x458,x459,x460,x461,x462,x463,x464,x465,x466,x467
          ,x468,x469,x470,x471,x472,x473,x474,x475,x476,x477,x478,x479,x480
          ,x481,x482,x483,x484,x485,x486,x487,x488,x489,x490,x491,x492,x493
          ,x494,x495,x496,x497,x498,x499,x500,x501,x502,x503,x504,x505,x506
          ,x507,x508,x509,x510,x511,x512,x513,x514,x515,x516,x517,x518,x519
          ,x520,x521,x522,x523,x524,x525,x526,x527,x528,x529,x530,x531,x532
          ,x533,x534,x535,x536,x537,x538,x539,x540,x541,x542,x543,x544,x545
          ,x546,x547,x548,x549,x550,x551,x552,b553,b554,b555,b556,b557,b558
          ,b559,b560,b561,b562,b563,b564,b565,b566,b567,b568,b569,b570,b571
          ,b572,b573,b574,b575,b576,b577,b578,b579,b580,b581,b582,b583,b584
          ,b585,b586,b587,b588,b589,b590,b591,b592,b593,b594,b595,b596,b597
          ,b598,x599,x600,x601,x602,x603,x604,x605,x606,x607,x608,x609,x610
          ,x611,x612,x613,x614,x615,x616,x617,x618,x619,x620,x621,x622,x623
          ,x624,x625,x626,x627,x628,x629,x630,x631,x632,x633,x634,x635,x636
          ,x637,x638,x639,x640,x641,x642,x643,x644,objvar;

Positive Variables  x1,x2,x3,x4,x5,x6,x7,x8,x9,x10,x11,x12,x13,x14,x15,x16,x17
          ,x18,x19,x20,x21,x22,x23,x24,x25,x26,x27,x28,x29,x30,x31,x32,x33,x34
          ,x35,x36,x37,x38,x39,x40,x41,x42,x43,x44,x45,x46,x47,x48,x49,x50,x51
          ,x52,x53,x54,x55,x56,x57,x58,x59,x60,x61,x62,x63,x64,x65,x66,x67,x68
          ,x69,x70,x71,x72,x73,x74,x75,x76,x77,x78,x79,x80,x81,x82,x83,x84,x85
          ,x86,x87,x88,x89,x90,x91,x92,x93,x94,x95,x96,x97,x98,x99,x100,x101
          ,x102,x103,x104,x105,x106,x107,x108,x109,x110,x111,x112,x113,x114
          ,x115,x116,x117,x118,x119,x120,x121,x122,x123,x124,x125,x126,x127
          ,x128,x129,x130,x131,x132,x133,x134,x135,x136,x137,x138,x139,x140
          ,x141,x142,x143,x144,x145,x146,x147,x148,x149,x150,x151,x152,x153
          ,x154,x155,x156,x157,x158,x159,x160,x161,x162,x163,x164,x165,x166
          ,x167,x168,x169,x170,x171,x172,x173,x174,x175,x176,x177,x178,x179
          ,x180,x181,x182,x183,x184,x185,x186,x187,x188,x189,x190,x191,x192
          ,x193,x194,x195,x196,x197,x198,x199,x200,x201,x202,x203,x204,x205
          ,x206,x207,x208,x209,x210,x211,x212,x213,x214,x215,x216,x217,x218
          ,x219,x220,x221,x222,x223,x224,x225,x226,x227,x228,x229,x230,x231
          ,x232,x233,x234,x235,x236,x237,x238,x239,x240,x241,x242,x243,x244
          ,x245,x246,x247,x248,x249,x250,x251,x252,x253,x254,x255,x256,x257
          ,x258,x259,x260,x261,x262,x263,x264,x265,x266,x267,x268,x269,x270
          ,x271,x272,x273,x274,x275,x276,x277,x278,x279,x280,x281,x282,x283
          ,x284,x285,x286,x287,x288,x289,x290,x291,x292,x293,x294,x295,x296
          ,x297,x298,x299,x300,x301,x302,x303,x304,x305,x306,x307,x308,x309
          ,x310,x311,x312,x313,x314,x315,x316,x317,x318,x319,x320,x321,x322
          ,x323,x324,x325,x326,x327,x328,x329,x330,x331,x332,x333,x334,x335
          ,x336,x337,x338,x339,x340,x341,x342,x343,x344,x345,x346,x347,x348
          ,x349,x350,x351,x352,x353,x354,x355,x356,x357,x358,x359,x360,x361
          ,x362,x363,x364,x365,x366,x367,x368,x369,x370,x371,x372,x373,x374
          ,x375,x376,x377,x378,x379,x380,x381,x382,x383,x384,x385,x386,x387
          ,x388,x389,x390,x391,x392,x393,x394,x395,x396,x397,x398,x399,x400
          ,x401,x402,x403,x404,x405,x406,x407,x408,x409,x410,x411,x412,x413
          ,x414,x415,x416,x417,x418,x419,x420,x421,x422,x423,x424,x425,x426
          ,x427,x428,x429,x430,x431,x432,x433,x434,x435,x436,x437,x438,x439
          ,x440,x441,x442,x443,x444,x445,x446,x447,x448,x449,x450,x451,x452
          ,x453,x454,x455,x456,x457,x458,x459,x460,x461,x462,x463,x464,x465
          ,x466,x467,x468,x469,x470,x471,x472,x473,x474,x475,x476,x477,x478
          ,x479,x480,x481,x482,x483,x484,x485,x486,x487,x488,x489,x490,x491
          ,x492,x493,x494,x495,x496,x497,x498,x499,x500,x501,x502,x503,x504
          ,x505,x506,x507,x508,x509,x510,x511,x512,x513,x514,x515,x516,x517
          ,x518,x519,x520,x521,x522,x523,x524,x525,x526,x527,x528,x529,x530
          ,x531,x532,x533,x534,x535,x536,x537,x538,x539,x540,x541,x542,x543
          ,x544,x545,x546,x547,x548,x549,x550,x551,x552,x599,x600,x601,x602
          ,x603,x604,x605,x606,x607,x608,x609,x610,x611,x612,x613,x614,x615
          ,x616,x617,x618,x619,x620,x621,x622,x623,x624,x625,x626,x627,x628
          ,x629,x630,x631,x632,x633,x634,x635,x636,x637,x638,x639,x640,x641
          ,x642,x643,x644;

Binary Variables  b553,b554,b555,b556,b557,b558,b559,b560,b561,b562,b563,b564
          ,b565,b566,b567,b568,b569,b570,b571,b572,b573,b574,b575,b576,b577
          ,b578,b579,b580,b581,b582,b583,b584,b585,b586,b587,b588,b589,b590
          ,b591,b592,b593,b594,b595,b596,b597,b598;

Equations  e1,e2,e3,e4,e5,e6,e7,e8,e9,e10,e11,e12,e13,e14,e15,e16,e17,e18,e19
          ,e20,e21,e22,e23,e24,e25,e26,e27,e28,e29,e30,e31,e32,e33,e34,e35,e36
          ,e37,e38,e39,e40,e41,e42,e43,e44,e45,e46,e47,e48,e49,e50,e51,e52,e53
          ,e54,e55,e56,e57,e58,e59,e60,e61,e62,e63,e64,e65,e66,e67,e68,e69,e70
          ,e71,e72,e73,e74,e75,e76,e77,e78,e79,e80,e81,e82,e83,e84,e85,e86,e87
          ,e88,e89,e90,e91,e92,e93,e94,e95,e96,e97,e98,e99,e100,e101,e102,e103
          ,e104,e105,e106,e107,e108,e109,e110,e111,e112,e113,e114,e115,e116
          ,e117,e118,e119,e120,e121,e122,e123,e124,e125,e126,e127,e128,e129
          ,e130,e131,e132,e133,e134,e135,e136,e137,e138,e139,e140,e141,e142
          ,e143,e144,e145,e146,e147,e148,e149,e150,e151,e152,e153,e154,e155
          ,e156,e157,e158,e159,e160,e161,e162,e163,e164,e165,e166,e167,e168
          ,e169,e170,e171,e172,e173,e174,e175,e176,e177,e178,e179,e180,e181
          ,e182,e183,e184,e185,e186,e187,e188,e189,e190,e191,e192,e193,e194
          ,e195,e196,e197,e198,e199,e200,e201,e202,e203,e204,e205,e206,e207
          ,e208,e209,e210,e211,e212,e213,e214,e215,e216,e217,e218,e219,e220
          ,e221,e222,e223,e224,e225,e226,e227,e228,e229,e230,e231,e232,e233
          ,e234,e235,e236,e237,e238;


e1..  - 1.235768455*b553 - 1.754882812*b554 - 3.159455914*b555
      - 3.980618566*b556 - 2.905401043*b557 - 2.524310515*b558
      - 3.289509208*b559 - 1.235768455*b560 - 2.516549044*b561
      - 2.174517481*b562 - 2.402340784*b563 - 1.754882812*b564
      - 3.153941476*b565 - 2.649872155*b566 - 2.46690751*b567
      - 3.159455914*b568 - 2.46690751*b569 - 1.583424277*b570
      - 3.980618566*b571 - 3.153941476*b572 - 1.572334903*b573
      - 2.905401043*b574 - 2.516549044*b575 - 1.572334903*b576
      - 1.097733808*b577 - 2.174517481*b578 - 1.097733808*b579
      - 2.95175038*b580 - 2.477930353*b581 - 1.425428344*b582 - 2.95175038*b583
      - 1.694724004*b584 - 2.524310515*b585 - 1.694724004*b586
      - 3.787543429*b587 - 1.759730596*b588 - 2.402340784*b589
      - 1.583424277*b590 - 2.477930353*b591 - 3.787543429*b592
      - 1.492267639*b593 - 3.289509208*b594 - 2.649872155*b595
      - 1.425428344*b596 - 1.759730596*b597 - 1.492267639*b598 + objvar =E= 0;

e2..  - x1 - x13 - x25 - x37 - x49 - x61 - x73 + x85 + x133 + x181 + x217
      + x253 + x385 + x493 =E= -149;

e3..  - x2 - x14 - x26 - x38 - x50 - x62 - x74 + x86 + x134 + x182 + x218
      + x254 + x386 + x494 =E= 20;

e4..  - x3 - x15 - x27 - x39 - x51 - x63 - x75 + x87 + x135 + x183 + x219
      + x255 + x387 + x495 =E= 13;

e5..  - x4 - x16 - x28 - x40 - x52 - x64 - x76 + x88 + x136 + x184 + x220
      + x256 + x388 + x496 =E= 11;

e6..  - x5 - x17 - x29 - x41 - x53 - x65 - x77 + x89 + x137 + x185 + x221
      + x257 + x389 + x497 =E= 13;

e7..  - x6 - x18 - x30 - x42 - x54 - x66 - x78 + x90 + x138 + x186 + x222
      + x258 + x390 + x498 =E= 11;

e8..  - x7 - x19 - x31 - x43 - x55 - x67 - x79 + x91 + x139 + x187 + x223
      + x259 + x391 + x499 =E= 18;

e9..  - x8 - x20 - x32 - x44 - x56 - x68 - x80 + x92 + x140 + x188 + x224
      + x260 + x392 + x500 =E= 19;

e10..  - x9 - x21 - x33 - x45 - x57 - x69 - x81 + x93 + x141 + x189 + x225
       + x261 + x393 + x501 =E= 14;

e11..  - x10 - x22 - x34 - x46 - x58 - x70 - x82 + x94 + x142 + x190 + x226
       + x262 + x394 + x502 =E= 15;

e12..  - x11 - x23 - x35 - x47 - x59 - x71 - x83 + x95 + x143 + x191 + x227
       + x263 + x395 + x503 =E= 20;

e13..  - x12 - x24 - x36 - x48 - x60 - x72 - x84 + x96 + x144 + x192 + x228
       + x264 + x396 + x504 =E= 22;

e14..    x1 - x85 - x97 - x109 - x121 + x265 + x301 + x433 =E= 12;

e15..    x2 - x86 - x98 - x110 - x122 + x266 + x302 + x434 =E= -178;

e16..    x3 - x87 - x99 - x111 - x123 + x267 + x303 + x435 =E= 7;

e17..    x4 - x88 - x100 - x112 - x124 + x268 + x304 + x436 =E= 6;

e18..    x5 - x89 - x101 - x113 - x125 + x269 + x305 + x437 =E= 25;

e19..    x6 - x90 - x102 - x114 - x126 + x270 + x306 + x438 =E= 25;

e20..    x7 - x91 - x103 - x115 - x127 + x271 + x307 + x439 =E= 25;

e21..    x8 - x92 - x104 - x116 - x128 + x272 + x308 + x440 =E= 23;

e22..    x9 - x93 - x105 - x117 - x129 + x273 + x309 + x441 =E= 8;

e23..    x10 - x94 - x106 - x118 - x130 + x274 + x310 + x442 =E= 7;

e24..    x11 - x95 - x107 - x119 - x131 + x275 + x311 + x443 =E= 20;

e25..    x12 - x96 - x108 - x120 - x132 + x276 + x312 + x444 =E= 14;

e26..    x13 - x133 - x145 - x157 + x229 + x505 =E= 6;

e27..    x14 - x134 - x146 - x158 + x230 + x506 =E= 21;

e28..    x15 - x135 - x147 - x159 + x231 + x507 =E= -157;

e29..    x16 - x136 - x148 - x160 + x232 + x508 =E= 25;

e30..    x17 - x137 - x149 - x161 + x233 + x509 =E= 18;

e31..    x18 - x138 - x150 - x162 + x234 + x510 =E= 23;

e32..    x19 - x139 - x151 - x163 + x235 + x511 =E= 22;

e33..    x20 - x140 - x152 - x164 + x236 + x512 =E= 19;

e34..    x21 - x141 - x153 - x165 + x237 + x513 =E= 18;

e35..    x22 - x142 - x154 - x166 + x238 + x514 =E= 21;

e36..    x23 - x143 - x155 - x167 + x239 + x515 =E= 24;

e37..    x24 - x144 - x156 - x168 + x240 + x516 =E= 16;

e38..  - x169 + x193 =E= 18;

e39..  - x170 + x194 =E= 24;

e40..  - x171 + x195 =E= 9;

e41..  - x172 + x196 =E= -183;

e42..  - x173 + x197 =E= 12;

e43..  - x174 + x198 =E= 16;

e44..  - x175 + x199 =E= 6;

e45..  - x176 + x200 =E= 14;

e46..  - x177 + x201 =E= 23;

e47..  - x178 + x202 =E= 14;

e48..  - x179 + x203 =E= 18;

e49..  - x180 + x204 =E= 24;

e50..    x25 + x169 - x181 - x193 - x205 + x445 =E= 5;

e51..    x26 + x170 - x182 - x194 - x206 + x446 =E= 12;

e52..    x27 + x171 - x183 - x195 - x207 + x447 =E= 19;

e53..    x28 + x172 - x184 - x196 - x208 + x448 =E= 22;

e54..    x29 + x173 - x185 - x197 - x209 + x449 =E= -179;

e55..    x30 + x174 - x186 - x198 - x210 + x450 =E= 22;

e56..    x31 + x175 - x187 - x199 - x211 + x451 =E= 9;

e57..    x32 + x176 - x188 - x200 - x212 + x452 =E= 6;

e58..    x33 + x177 - x189 - x201 - x213 + x453 =E= 6;

e59..    x34 + x178 - x190 - x202 - x214 + x454 =E= 21;

e60..    x35 + x179 - x191 - x203 - x215 + x455 =E= 6;

e61..    x36 + x180 - x192 - x204 - x216 + x456 =E= 22;

e62..    x37 + x145 - x217 - x229 - x241 + x277 =E= 13;

e63..    x38 + x146 - x218 - x230 - x242 + x278 =E= 12;

e64..    x39 + x147 - x219 - x231 - x243 + x279 =E= 23;

e65..    x40 + x148 - x220 - x232 - x244 + x280 =E= 16;

e66..    x41 + x149 - x221 - x233 - x245 + x281 =E= 7;

e67..    x42 + x150 - x222 - x234 - x246 + x282 =E= -178;

e68..    x43 + x151 - x223 - x235 - x247 + x283 =E= 19;

e69..    x44 + x152 - x224 - x236 - x248 + x284 =E= 25;

e70..    x45 + x153 - x225 - x237 - x249 + x285 =E= 13;

e71..    x46 + x154 - x226 - x238 - x250 + x286 =E= 17;

e72..    x47 + x155 - x227 - x239 - x251 + x287 =E= 24;

e73..    x48 + x156 - x228 - x240 - x252 + x288 =E= 8;

e74..    x49 + x97 + x241 - x253 - x265 - x277 - x289 + x313 =E= 9;

e75..    x50 + x98 + x242 - x254 - x266 - x278 - x290 + x314 =E= 20;

e76..    x51 + x99 + x243 - x255 - x267 - x279 - x291 + x315 =E= 21;

e77..    x52 + x100 + x244 - x256 - x268 - x280 - x292 + x316 =E= 22;

e78..    x53 + x101 + x245 - x257 - x269 - x281 - x293 + x317 =E= 6;

e79..    x54 + x102 + x246 - x258 - x270 - x282 - x294 + x318 =E= 8;

e80..    x55 + x103 + x247 - x259 - x271 - x283 - x295 + x319 =E= -162;

e81..    x56 + x104 + x248 - x260 - x272 - x284 - x296 + x320 =E= 22;

e82..    x57 + x105 + x249 - x261 - x273 - x285 - x297 + x321 =E= 19;

e83..    x58 + x106 + x250 - x262 - x274 - x286 - x298 + x322 =E= 17;

e84..    x59 + x107 + x251 - x263 - x275 - x287 - x299 + x323 =E= 11;

e85..    x60 + x108 + x252 - x264 - x276 - x288 - x300 + x324 =E= 16;

e86..    x109 + x289 - x301 - x313 - x325 - x337 - x349 + x361 + x457 + x517
       =E= 23;

e87..    x110 + x290 - x302 - x314 - x326 - x338 - x350 + x362 + x458 + x518
       =E= 11;

e88..    x111 + x291 - x303 - x315 - x327 - x339 - x351 + x363 + x459 + x519
       =E= 21;

e89..    x112 + x292 - x304 - x316 - x328 - x340 - x352 + x364 + x460 + x520
       =E= 23;

e90..    x113 + x293 - x305 - x317 - x329 - x341 - x353 + x365 + x461 + x521
       =E= 13;

e91..    x114 + x294 - x306 - x318 - x330 - x342 - x354 + x366 + x462 + x522
       =E= 18;

e92..    x115 + x295 - x307 - x319 - x331 - x343 - x355 + x367 + x463 + x523
       =E= 8;

e93..    x116 + x296 - x308 - x320 - x332 - x344 - x356 + x368 + x464 + x524
       =E= -176;

e94..    x117 + x297 - x309 - x321 - x333 - x345 - x357 + x369 + x465 + x525
       =E= 12;

e95..    x118 + x298 - x310 - x322 - x334 - x346 - x358 + x370 + x466 + x526
       =E= 15;

e96..    x119 + x299 - x311 - x323 - x335 - x347 - x359 + x371 + x467 + x527
       =E= 7;

e97..    x120 + x300 - x312 - x324 - x336 - x348 - x360 + x372 + x468 + x528
       =E= 22;

e98..    x325 - x361 - x373 + x397 =E= 21;

e99..    x326 - x362 - x374 + x398 =E= 10;

e100..    x327 - x363 - x375 + x399 =E= 7;

e101..    x328 - x364 - x376 + x400 =E= 14;

e102..    x329 - x365 - x377 + x401 =E= 14;

e103..    x330 - x366 - x378 + x402 =E= 11;

e104..    x331 - x367 - x379 + x403 =E= 15;

e105..    x332 - x368 - x380 + x404 =E= 16;

e106..    x333 - x369 - x381 + x405 =E= -139;

e107..    x334 - x370 - x382 + x406 =E= 25;

e108..    x335 - x371 - x383 + x407 =E= 23;

e109..    x336 - x372 - x384 + x408 =E= 14;

e110..    x61 + x373 - x385 - x397 - x409 - x421 + x469 + x529 =E= 12;

e111..    x62 + x374 - x386 - x398 - x410 - x422 + x470 + x530 =E= 21;

e112..    x63 + x375 - x387 - x399 - x411 - x423 + x471 + x531 =E= 10;

e113..    x64 + x376 - x388 - x400 - x412 - x424 + x472 + x532 =E= 19;

e114..    x65 + x377 - x389 - x401 - x413 - x425 + x473 + x533 =E= 23;

e115..    x66 + x378 - x390 - x402 - x414 - x426 + x474 + x534 =E= 17;

e116..    x67 + x379 - x391 - x403 - x415 - x427 + x475 + x535 =E= 11;

e117..    x68 + x380 - x392 - x404 - x416 - x428 + x476 + x536 =E= 13;

e118..    x69 + x381 - x393 - x405 - x417 - x429 + x477 + x537 =E= 11;

e119..    x70 + x382 - x394 - x406 - x418 - x430 + x478 + x538 =E= -191;

e120..    x71 + x383 - x395 - x407 - x419 - x431 + x479 + x539 =E= 18;

e121..    x72 + x384 - x396 - x408 - x420 - x432 + x480 + x540 =E= 15;

e122..    x121 + x205 + x337 + x409 - x433 - x445 - x457 - x469 - x481 + x541
        =E= 15;

e123..    x122 + x206 + x338 + x410 - x434 - x446 - x458 - x470 - x482 + x542
        =E= 13;

e124..    x123 + x207 + x339 + x411 - x435 - x447 - x459 - x471 - x483 + x543
        =E= 6;

e125..    x124 + x208 + x340 + x412 - x436 - x448 - x460 - x472 - x484 + x544
        =E= 13;

e126..    x125 + x209 + x341 + x413 - x437 - x449 - x461 - x473 - x485 + x545
        =E= 25;

e127..    x126 + x210 + x342 + x414 - x438 - x450 - x462 - x474 - x486 + x546
        =E= 13;

e128..    x127 + x211 + x343 + x415 - x439 - x451 - x463 - x475 - x487 + x547
        =E= 14;

e129..    x128 + x212 + x344 + x416 - x440 - x452 - x464 - x476 - x488 + x548
        =E= 14;

e130..    x129 + x213 + x345 + x417 - x441 - x453 - x465 - x477 - x489 + x549
        =E= 9;

e131..    x130 + x214 + x346 + x418 - x442 - x454 - x466 - x478 - x490 + x550
        =E= 19;

e132..    x131 + x215 + x347 + x419 - x443 - x455 - x467 - x479 - x491 + x551
        =E= -193;

e133..    x132 + x216 + x348 + x420 - x444 - x456 - x468 - x480 - x492 + x552
        =E= 17;

e134..    x73 + x157 + x349 + x421 + x481 - x493 - x505 - x517 - x529 - x541
        =E= 15;

e135..    x74 + x158 + x350 + x422 + x482 - x494 - x506 - x518 - x530 - x542
        =E= 14;

e136..    x75 + x159 + x351 + x423 + x483 - x495 - x507 - x519 - x531 - x543
        =E= 21;

e137..    x76 + x160 + x352 + x424 + x484 - x496 - x508 - x520 - x532 - x544
        =E= 12;

e138..    x77 + x161 + x353 + x425 + x485 - x497 - x509 - x521 - x533 - x545
        =E= 23;

e139..    x78 + x162 + x354 + x426 + x486 - x498 - x510 - x522 - x534 - x546
        =E= 14;

e140..    x79 + x163 + x355 + x427 + x487 - x499 - x511 - x523 - x535 - x547
        =E= 15;

e141..    x80 + x164 + x356 + x428 + x488 - x500 - x512 - x524 - x536 - x548
        =E= 5;

e142..    x81 + x165 + x357 + x429 + x489 - x501 - x513 - x525 - x537 - x549
        =E= 6;

e143..    x82 + x166 + x358 + x430 + x490 - x502 - x514 - x526 - x538 - x550
        =E= 20;

e144..    x83 + x167 + x359 + x431 + x491 - x503 - x515 - x527 - x539 - x551
        =E= 22;

e145..    x84 + x168 + x360 + x432 + x492 - x504 - x516 - x528 - x540 - x552
        =E= -190;

e146.. (293 - x1 - x2 - x3 - x4 - x5 - x6 - x7 - x8 - x9 - x10 - x11 - x12)*
       x599 - 293*x1 - 293*x2 - 293*x3 - 293*x4 - 293*x5 - 293*x6 - 293*x7 - 
       293*x8 - 293*x9 - 293*x10 - 293*x11 - 293*x12 =G= 0;

e147.. (192 - x13 - x14 - x15 - x16 - x17 - x18 - x19 - x20 - x21 - x22 - x23
        - x24)*x600 - 192*x13 - 192*x14 - 192*x15 - 192*x16 - 192*x17 - 192*x18
        - 192*x19 - 192*x20 - 192*x21 - 192*x22 - 192*x23 - 192*x24 =G= 0;

e148.. (417 - x25 - x26 - x27 - x28 - x29 - x30 - x31 - x32 - x33 - x34 - x35
        - x36)*x601 - 417*x25 - 417*x26 - 417*x27 - 417*x28 - 417*x29 - 417*x30
        - 417*x31 - 417*x32 - 417*x33 - 417*x34 - 417*x35 - 417*x36 =G= 0;

e149.. (427 - x37 - x38 - x39 - x40 - x41 - x42 - x43 - x44 - x45 - x46 - x47
        - x48)*x602 - 427*x37 - 427*x38 - 427*x39 - 427*x40 - 427*x41 - 427*x42
        - 427*x43 - 427*x44 - 427*x45 - 427*x46 - 427*x47 - 427*x48 =G= 0;

e150.. (295 - x49 - x50 - x51 - x52 - x53 - x54 - x55 - x56 - x57 - x58 - x59
        - x60)*x603 - 295*x49 - 295*x50 - 295*x51 - 295*x52 - 295*x53 - 295*x54
        - 295*x55 - 295*x56 - 295*x57 - 295*x58 - 295*x59 - 295*x60 =G= 0;

e151.. (280 - x61 - x62 - x63 - x64 - x65 - x66 - x67 - x68 - x69 - x70 - x71
        - x72)*x604 - 280*x61 - 280*x62 - 280*x63 - 280*x64 - 280*x65 - 280*x66
        - 280*x67 - 280*x68 - 280*x69 - 280*x70 - 280*x71 - 280*x72 =G= 0;

e152.. (337 - x73 - x74 - x75 - x76 - x77 - x78 - x79 - x80 - x81 - x82 - x83
        - x84)*x605 - 337*x73 - 337*x74 - 337*x75 - 337*x76 - 337*x77 - 337*x78
        - 337*x79 - 337*x80 - 337*x81 - 337*x82 - 337*x83 - 337*x84 =G= 0;

e153.. (293 - x85 - x86 - x87 - x88 - x89 - x90 - x91 - x92 - x93 - x94 - x95
        - x96)*x606 - 293*x85 - 293*x86 - 293*x87 - 293*x88 - 293*x89 - 293*x90
        - 293*x91 - 293*x92 - 293*x93 - 293*x94 - 293*x95 - 293*x96 =G= 0;

e154.. (341 - x97 - x98 - x99 - x100 - x101 - x102 - x103 - x104 - x105 - x106
        - x107 - x108)*x607 - 341*x97 - 341*x98 - 341*x99 - 341*x100 - 341*x101
        - 341*x102 - 341*x103 - 341*x104 - 341*x105 - 341*x106 - 341*x107 - 341
       *x108 =G= 0;

e155.. (276 - x109 - x110 - x111 - x112 - x113 - x114 - x115 - x116 - x117 - 
       x118 - x119 - x120)*x608 - 276*x109 - 276*x110 - 276*x111 - 276*x112 - 
       276*x113 - 276*x114 - 276*x115 - 276*x116 - 276*x117 - 276*x118 - 276*
       x119 - 276*x120 =G= 0;

e156.. (119 - x121 - x122 - x123 - x124 - x125 - x126 - x127 - x128 - x129 - 
       x130 - x131 - x132)*x609 - 119*x121 - 119*x122 - 119*x123 - 119*x124 - 
       119*x125 - 119*x126 - 119*x127 - 119*x128 - 119*x129 - 119*x130 - 119*
       x131 - 119*x132 =G= 0;

e157.. (192 - x133 - x134 - x135 - x136 - x137 - x138 - x139 - x140 - x141 - 
       x142 - x143 - x144)*x610 - 192*x133 - 192*x134 - 192*x135 - 192*x136 - 
       192*x137 - 192*x138 - 192*x139 - 192*x140 - 192*x141 - 192*x142 - 192*
       x143 - 192*x144 =G= 0;

e158.. (347 - x145 - x146 - x147 - x148 - x149 - x150 - x151 - x152 - x153 - 
       x154 - x155 - x156)*x611 - 347*x145 - 347*x146 - 347*x147 - 347*x148 - 
       347*x149 - 347*x150 - 347*x151 - 347*x152 - 347*x153 - 347*x154 - 347*
       x155 - 347*x156 =G= 0;

e159.. (398 - x157 - x158 - x159 - x160 - x161 - x162 - x163 - x164 - x165 - 
       x166 - x167 - x168)*x612 - 398*x157 - 398*x158 - 398*x159 - 398*x160 - 
       398*x161 - 398*x162 - 398*x163 - 398*x164 - 398*x165 - 398*x166 - 398*
       x167 - 398*x168 =G= 0;

e160.. (359 - x169 - x170 - x171 - x172 - x173 - x174 - x175 - x176 - x177 - 
       x178 - x179 - x180)*x613 - 359*x169 - 359*x170 - 359*x171 - 359*x172 - 
       359*x173 - 359*x174 - 359*x175 - 359*x176 - 359*x177 - 359*x178 - 359*
       x179 - 359*x180 =G= 0;

e161.. (417 - x181 - x182 - x183 - x184 - x185 - x186 - x187 - x188 - x189 - 
       x190 - x191 - x192)*x614 - 417*x181 - 417*x182 - 417*x183 - 417*x184 - 
       417*x185 - 417*x186 - 417*x187 - 417*x188 - 417*x189 - 417*x190 - 417*
       x191 - 417*x192 =G= 0;

e162.. (359 - x193 - x194 - x195 - x196 - x197 - x198 - x199 - x200 - x201 - 
       x202 - x203 - x204)*x615 - 359*x193 - 359*x194 - 359*x195 - 359*x196 - 
       359*x197 - 359*x198 - 359*x199 - 359*x200 - 359*x201 - 359*x202 - 359*
       x203 - 359*x204 =G= 0;

e163.. (193 - x205 - x206 - x207 - x208 - x209 - x210 - x211 - x212 - x213 - 
       x214 - x215 - x216)*x616 - 193*x205 - 193*x206 - 193*x207 - 193*x208 - 
       193*x209 - 193*x210 - 193*x211 - 193*x212 - 193*x213 - 193*x214 - 193*
       x215 - 193*x216 =G= 0;

e164.. (427 - x217 - x218 - x219 - x220 - x221 - x222 - x223 - x224 - x225 - 
       x226 - x227 - x228)*x617 - 427*x217 - 427*x218 - 427*x219 - 427*x220 - 
       427*x221 - 427*x222 - 427*x223 - 427*x224 - 427*x225 - 427*x226 - 427*
       x227 - 427*x228 =G= 0;

e165.. (347 - x229 - x230 - x231 - x232 - x233 - x234 - x235 - x236 - x237 - 
       x238 - x239 - x240)*x618 - 347*x229 - 347*x230 - 347*x231 - 347*x232 - 
       347*x233 - 347*x234 - 347*x235 - 347*x236 - 347*x237 - 347*x238 - 347*
       x239 - 347*x240 =G= 0;

e166.. (218 - x241 - x242 - x243 - x244 - x245 - x246 - x247 - x248 - x249 - 
       x250 - x251 - x252)*x619 - 218*x241 - 218*x242 - 218*x243 - 218*x244 - 
       218*x245 - 218*x246 - 218*x247 - 218*x248 - 218*x249 - 218*x250 - 218*
       x251 - 218*x252 =G= 0;

e167.. (295 - x253 - x254 - x255 - x256 - x257 - x258 - x259 - x260 - x261 - 
       x262 - x263 - x264)*x620 - 295*x253 - 295*x254 - 295*x255 - 295*x256 - 
       295*x257 - 295*x258 - 295*x259 - 295*x260 - 295*x261 - 295*x262 - 295*
       x263 - 295*x264 =G= 0;

e168.. (341 - x265 - x266 - x267 - x268 - x269 - x270 - x271 - x272 - x273 - 
       x274 - x275 - x276)*x621 - 341*x265 - 341*x266 - 341*x267 - 341*x268 - 
       341*x269 - 341*x270 - 341*x271 - 341*x272 - 341*x273 - 341*x274 - 341*
       x275 - 341*x276 =G= 0;

e169.. (218 - x277 - x278 - x279 - x280 - x281 - x282 - x283 - x284 - x285 - 
       x286 - x287 - x288)*x622 - 218*x277 - 218*x278 - 218*x279 - 218*x280 - 
       218*x281 - 218*x282 - 218*x283 - 218*x284 - 218*x285 - 218*x286 - 218*
       x287 - 218*x288 =G= 0;

e170.. (134 - x289 - x290 - x291 - x292 - x293 - x294 - x295 - x296 - x297 - 
       x298 - x299 - x300)*x623 - 134*x289 - 134*x290 - 134*x291 - 134*x292 - 
       134*x293 - 134*x294 - 134*x295 - 134*x296 - 134*x297 - 134*x298 - 134*
       x299 - 134*x300 =G= 0;

e171.. (276 - x301 - x302 - x303 - x304 - x305 - x306 - x307 - x308 - x309 - 
       x310 - x311 - x312)*x624 - 276*x301 - 276*x302 - 276*x303 - 276*x304 - 
       276*x305 - 276*x306 - 276*x307 - 276*x308 - 276*x309 - 276*x310 - 276*
       x311 - 276*x312 =G= 0;

e172.. (134 - x313 - x314 - x315 - x316 - x317 - x318 - x319 - x320 - x321 - 
       x322 - x323 - x324)*x625 - 134*x313 - 134*x314 - 134*x315 - 134*x316 - 
       134*x317 - 134*x318 - 134*x319 - 134*x320 - 134*x321 - 134*x322 - 134*
       x323 - 134*x324 =G= 0;

e173.. (200 - x325 - x326 - x327 - x328 - x329 - x330 - x331 - x332 - x333 - 
       x334 - x335 - x336)*x626 - 200*x325 - 200*x326 - 200*x327 - 200*x328 - 
       200*x329 - 200*x330 - 200*x331 - 200*x332 - 200*x333 - 200*x334 - 200*
       x335 - 200*x336 =G= 0;

e174.. (222 - x337 - x338 - x339 - x340 - x341 - x342 - x343 - x344 - x345 - 
       x346 - x347 - x348)*x627 - 222*x337 - 222*x338 - 222*x339 - 222*x340 - 
       222*x341 - 222*x342 - 222*x343 - 222*x344 - 222*x345 - 222*x346 - 222*
       x347 - 222*x348 =G= 0;

e175.. (196 - x349 - x350 - x351 - x352 - x353 - x354 - x355 - x356 - x357 - 
       x358 - x359 - x360)*x628 - 196*x349 - 196*x350 - 196*x351 - 196*x352 - 
       196*x353 - 196*x354 - 196*x355 - 196*x356 - 196*x357 - 196*x358 - 196*
       x359 - 196*x360 =G= 0;

e176.. (200 - x361 - x362 - x363 - x364 - x365 - x366 - x367 - x368 - x369 - 
       x370 - x371 - x372)*x629 - 200*x361 - 200*x362 - 200*x363 - 200*x364 - 
       200*x365 - 200*x366 - 200*x367 - 200*x368 - 200*x369 - 200*x370 - 200*
       x371 - 200*x372 =G= 0;

e177.. (129 - x373 - x374 - x375 - x376 - x377 - x378 - x379 - x380 - x381 - 
       x382 - x383 - x384)*x630 - 129*x373 - 129*x374 - 129*x375 - 129*x376 - 
       129*x377 - 129*x378 - 129*x379 - 129*x380 - 129*x381 - 129*x382 - 129*
       x383 - 129*x384 =G= 0;

e178.. (280 - x385 - x386 - x387 - x388 - x389 - x390 - x391 - x392 - x393 - 
       x394 - x395 - x396)*x631 - 280*x385 - 280*x386 - 280*x387 - 280*x388 - 
       280*x389 - 280*x390 - 280*x391 - 280*x392 - 280*x393 - 280*x394 - 280*
       x395 - 280*x396 =G= 0;

e179.. (129 - x397 - x398 - x399 - x400 - x401 - x402 - x403 - x404 - x405 - 
       x406 - x407 - x408)*x632 - 129*x397 - 129*x398 - 129*x399 - 129*x400 - 
       129*x401 - 129*x402 - 129*x403 - 129*x404 - 129*x405 - 129*x406 - 129*
       x407 - 129*x408 =G= 0;

e180.. (382 - x409 - x410 - x411 - x412 - x413 - x414 - x415 - x416 - x417 - 
       x418 - x419 - x420)*x633 - 382*x409 - 382*x410 - 382*x411 - 382*x412 - 
       382*x413 - 382*x414 - 382*x415 - 382*x416 - 382*x417 - 382*x418 - 382*
       x419 - 382*x420 =G= 0;

e181.. (424 - x421 - x422 - x423 - x424 - x425 - x426 - x427 - x428 - x429 - 
       x430 - x431 - x432)*x634 - 424*x421 - 424*x422 - 424*x423 - 424*x424 - 
       424*x425 - 424*x426 - 424*x427 - 424*x428 - 424*x429 - 424*x430 - 424*
       x431 - 424*x432 =G= 0;

e182.. (119 - x433 - x434 - x435 - x436 - x437 - x438 - x439 - x440 - x441 - 
       x442 - x443 - x444)*x635 - 119*x433 - 119*x434 - 119*x435 - 119*x436 - 
       119*x437 - 119*x438 - 119*x439 - 119*x440 - 119*x441 - 119*x442 - 119*
       x443 - 119*x444 =G= 0;

e183.. (193 - x445 - x446 - x447 - x448 - x449 - x450 - x451 - x452 - x453 - 
       x454 - x455 - x456)*x636 - 193*x445 - 193*x446 - 193*x447 - 193*x448 - 
       193*x449 - 193*x450 - 193*x451 - 193*x452 - 193*x453 - 193*x454 - 193*
       x455 - 193*x456 =G= 0;

e184.. (222 - x457 - x458 - x459 - x460 - x461 - x462 - x463 - x464 - x465 - 
       x466 - x467 - x468)*x637 - 222*x457 - 222*x458 - 222*x459 - 222*x460 - 
       222*x461 - 222*x462 - 222*x463 - 222*x464 - 222*x465 - 222*x466 - 222*
       x467 - 222*x468 =G= 0;

e185.. (382 - x469 - x470 - x471 - x472 - x473 - x474 - x475 - x476 - x477 - 
       x478 - x479 - x480)*x638 - 382*x469 - 382*x470 - 382*x471 - 382*x472 - 
       382*x473 - 382*x474 - 382*x475 - 382*x476 - 382*x477 - 382*x478 - 382*
       x479 - 382*x480 =G= 0;

e186.. (275 - x481 - x482 - x483 - x484 - x485 - x486 - x487 - x488 - x489 - 
       x490 - x491 - x492)*x639 - 275*x481 - 275*x482 - 275*x483 - 275*x484 - 
       275*x485 - 275*x486 - 275*x487 - 275*x488 - 275*x489 - 275*x490 - 275*
       x491 - 275*x492 =G= 0;

e187.. (337 - x493 - x494 - x495 - x496 - x497 - x498 - x499 - x500 - x501 - 
       x502 - x503 - x504)*x640 - 337*x493 - 337*x494 - 337*x495 - 337*x496 - 
       337*x497 - 337*x498 - 337*x499 - 337*x500 - 337*x501 - 337*x502 - 337*
       x503 - 337*x504 =G= 0;

e188.. (398 - x505 - x506 - x507 - x508 - x509 - x510 - x511 - x512 - x513 - 
       x514 - x515 - x516)*x641 - 398*x505 - 398*x506 - 398*x507 - 398*x508 - 
       398*x509 - 398*x510 - 398*x511 - 398*x512 - 398*x513 - 398*x514 - 398*
       x515 - 398*x516 =G= 0;

e189.. (196 - x517 - x518 - x519 - x520 - x521 - x522 - x523 - x524 - x525 - 
       x526 - x527 - x528)*x642 - 196*x517 - 196*x518 - 196*x519 - 196*x520 - 
       196*x521 - 196*x522 - 196*x523 - 196*x524 - 196*x525 - 196*x526 - 196*
       x527 - 196*x528 =G= 0;

e190.. (424 - x529 - x530 - x531 - x532 - x533 - x534 - x535 - x536 - x537 - 
       x538 - x539 - x540)*x643 - 424*x529 - 424*x530 - 424*x531 - 424*x532 - 
       424*x533 - 424*x534 - 424*x535 - 424*x536 - 424*x537 - 424*x538 - 424*
       x539 - 424*x540 =G= 0;

e191.. (275 - x541 - x542 - x543 - x544 - x545 - x546 - x547 - x548 - x549 - 
       x550 - x551 - x552)*x644 - 275*x541 - 275*x542 - 275*x543 - 275*x544 - 
       275*x545 - 275*x546 - 275*x547 - 275*x548 - 275*x549 - 275*x550 - 275*
       x551 - 275*x552 =G= 0;

e192..    x599 + x600 + x601 + x602 + x603 + x604 + x605 + x606 + x607 + x608
        + x609 + x610 + x611 + x612 + x613 + x614 + x615 + x616 + x617 + x618
        + x619 + x620 + x621 + x622 + x623 + x624 + x625 + x626 + x627 + x628
        + x629 + x630 + x631 + x632 + x633 + x634 + x635 + x636 + x637 + x638
        + x639 + x640 + x641 + x642 + x643 + x644 =L= 6225;

e193..    x1 + x2 + x3 + x4 + x5 + x6 + x7 + x8 + x9 + x10 + x11 + x12
        - 293*b553 =L= 0;

e194..    x13 + x14 + x15 + x16 + x17 + x18 + x19 + x20 + x21 + x22 + x23 + x24
        - 192*b554 =L= 0;

e195..    x25 + x26 + x27 + x28 + x29 + x30 + x31 + x32 + x33 + x34 + x35 + x36
        - 417*b555 =L= 0;

e196..    x37 + x38 + x39 + x40 + x41 + x42 + x43 + x44 + x45 + x46 + x47 + x48
        - 427*b556 =L= 0;

e197..    x49 + x50 + x51 + x52 + x53 + x54 + x55 + x56 + x57 + x58 + x59 + x60
        - 295*b557 =L= 0;

e198..    x61 + x62 + x63 + x64 + x65 + x66 + x67 + x68 + x69 + x70 + x71 + x72
        - 280*b558 =L= 0;

e199..    x73 + x74 + x75 + x76 + x77 + x78 + x79 + x80 + x81 + x82 + x83 + x84
        - 337*b559 =L= 0;

e200..    x85 + x86 + x87 + x88 + x89 + x90 + x91 + x92 + x93 + x94 + x95 + x96
        - 293*b560 =L= 0;

e201..    x97 + x98 + x99 + x100 + x101 + x102 + x103 + x104 + x105 + x106
        + x107 + x108 - 341*b561 =L= 0;

e202..    x109 + x110 + x111 + x112 + x113 + x114 + x115 + x116 + x117 + x118
        + x119 + x120 - 276*b562 =L= 0;

e203..    x121 + x122 + x123 + x124 + x125 + x126 + x127 + x128 + x129 + x130
        + x131 + x132 - 119*b563 =L= 0;

e204..    x133 + x134 + x135 + x136 + x137 + x138 + x139 + x140 + x141 + x142
        + x143 + x144 - 192*b564 =L= 0;

e205..    x145 + x146 + x147 + x148 + x149 + x150 + x151 + x152 + x153 + x154
        + x155 + x156 - 347*b565 =L= 0;

e206..    x157 + x158 + x159 + x160 + x161 + x162 + x163 + x164 + x165 + x166
        + x167 + x168 - 398*b566 =L= 0;

e207..    x169 + x170 + x171 + x172 + x173 + x174 + x175 + x176 + x177 + x178
        + x179 + x180 - 359*b567 =L= 0;

e208..    x181 + x182 + x183 + x184 + x185 + x186 + x187 + x188 + x189 + x190
        + x191 + x192 - 417*b568 =L= 0;

e209..    x193 + x194 + x195 + x196 + x197 + x198 + x199 + x200 + x201 + x202
        + x203 + x204 - 359*b569 =L= 0;

e210..    x205 + x206 + x207 + x208 + x209 + x210 + x211 + x212 + x213 + x214
        + x215 + x216 - 193*b570 =L= 0;

e211..    x217 + x218 + x219 + x220 + x221 + x222 + x223 + x224 + x225 + x226
        + x227 + x228 - 427*b571 =L= 0;

e212..    x229 + x230 + x231 + x232 + x233 + x234 + x235 + x236 + x237 + x238
        + x239 + x240 - 347*b572 =L= 0;

e213..    x241 + x242 + x243 + x244 + x245 + x246 + x247 + x248 + x249 + x250
        + x251 + x252 - 218*b573 =L= 0;

e214..    x253 + x254 + x255 + x256 + x257 + x258 + x259 + x260 + x261 + x262
        + x263 + x264 - 295*b574 =L= 0;

e215..    x265 + x266 + x267 + x268 + x269 + x270 + x271 + x272 + x273 + x274
        + x275 + x276 - 341*b575 =L= 0;

e216..    x277 + x278 + x279 + x280 + x281 + x282 + x283 + x284 + x285 + x286
        + x287 + x288 - 218*b576 =L= 0;

e217..    x289 + x290 + x291 + x292 + x293 + x294 + x295 + x296 + x297 + x298
        + x299 + x300 - 134*b577 =L= 0;

e218..    x301 + x302 + x303 + x304 + x305 + x306 + x307 + x308 + x309 + x310
        + x311 + x312 - 276*b578 =L= 0;

e219..    x313 + x314 + x315 + x316 + x317 + x318 + x319 + x320 + x321 + x322
        + x323 + x324 - 134*b579 =L= 0;

e220..    x325 + x326 + x327 + x328 + x329 + x330 + x331 + x332 + x333 + x334
        + x335 + x336 - 200*b580 =L= 0;

e221..    x337 + x338 + x339 + x340 + x341 + x342 + x343 + x344 + x345 + x346
        + x347 + x348 - 222*b581 =L= 0;

e222..    x349 + x350 + x351 + x352 + x353 + x354 + x355 + x356 + x357 + x358
        + x359 + x360 - 196*b582 =L= 0;

e223..    x361 + x362 + x363 + x364 + x365 + x366 + x367 + x368 + x369 + x370
        + x371 + x372 - 200*b583 =L= 0;

e224..    x373 + x374 + x375 + x376 + x377 + x378 + x379 + x380 + x381 + x382
        + x383 + x384 - 129*b584 =L= 0;

e225..    x385 + x386 + x387 + x388 + x389 + x390 + x391 + x392 + x393 + x394
        + x395 + x396 - 280*b585 =L= 0;

e226..    x397 + x398 + x399 + x400 + x401 + x402 + x403 + x404 + x405 + x406
        + x407 + x408 - 129*b586 =L= 0;

e227..    x409 + x410 + x411 + x412 + x413 + x414 + x415 + x416 + x417 + x418
        + x419 + x420 - 382*b587 =L= 0;

e228..    x421 + x422 + x423 + x424 + x425 + x426 + x427 + x428 + x429 + x430
        + x431 + x432 - 424*b588 =L= 0;

e229..    x433 + x434 + x435 + x436 + x437 + x438 + x439 + x440 + x441 + x442
        + x443 + x444 - 119*b589 =L= 0;

e230..    x445 + x446 + x447 + x448 + x449 + x450 + x451 + x452 + x453 + x454
        + x455 + x456 - 193*b590 =L= 0;

e231..    x457 + x458 + x459 + x460 + x461 + x462 + x463 + x464 + x465 + x466
        + x467 + x468 - 222*b591 =L= 0;

e232..    x469 + x470 + x471 + x472 + x473 + x474 + x475 + x476 + x477 + x478
        + x479 + x480 - 382*b592 =L= 0;

e233..    x481 + x482 + x483 + x484 + x485 + x486 + x487 + x488 + x489 + x490
        + x491 + x492 - 275*b593 =L= 0;

e234..    x493 + x494 + x495 + x496 + x497 + x498 + x499 + x500 + x501 + x502
        + x503 + x504 - 337*b594 =L= 0;

e235..    x505 + x506 + x507 + x508 + x509 + x510 + x511 + x512 + x513 + x514
        + x515 + x516 - 398*b595 =L= 0;

e236..    x517 + x518 + x519 + x520 + x521 + x522 + x523 + x524 + x525 + x526
        + x527 + x528 - 196*b596 =L= 0;

e237..    x529 + x530 + x531 + x532 + x533 + x534 + x535 + x536 + x537 + x538
        + x539 + x540 - 424*b597 =L= 0;

e238..    x541 + x542 + x543 + x544 + x545 + x546 + x547 + x548 + x549 + x550
        + x551 + x552 - 275*b598 =L= 0;

Model m / all /;

m.limrow=0; m.limcol=0;

$if NOT '%gams.u1%' == '' $include '%gams.u1%'

$if not set MINLP $set MINLP MINLP
Solve m using %MINLP% minimizing objvar;
