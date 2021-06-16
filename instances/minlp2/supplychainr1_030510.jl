using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70]
@variable(m, b[b_Idx],  Bin)
x_Idx = Any[71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231]
@variable(m, x[x_Idx])
set_lower_bound(x[146], 0.0)
set_lower_bound(x[114], 0.0)
set_lower_bound(x[132], 0.0)
set_lower_bound(x[154], 0.0)
set_lower_bound(x[164], 0.0)
set_lower_bound(x[143], 0.0)
set_lower_bound(x[91], 0.0)
set_lower_bound(x[74], 0.0)
set_lower_bound(x[165], 0.0)
set_lower_bound(x[186], 0.0)
set_lower_bound(x[202], 0.0)
set_lower_bound(x[220], 0.0)
set_lower_bound(x[88], 0.0)
set_lower_bound(x[141], 0.0)
set_lower_bound(x[94], 0.0)
set_lower_bound(x[144], 0.0)
set_lower_bound(x[145], 0.0)
set_lower_bound(x[172], 0.0)
set_lower_bound(x[226], 0.0)
set_lower_bound(x[120], 0.0)
set_lower_bound(x[160], 0.0)
set_lower_bound(x[188], 0.0)
set_lower_bound(x[72], 0.0)
set_lower_bound(x[103], 0.0)
set_lower_bound(x[75], 0.0)
set_lower_bound(x[162], 0.0)
set_lower_bound(x[116], 0.0)
set_lower_bound(x[95], 0.0)
set_lower_bound(x[200], 0.0)
set_lower_bound(x[206], 0.0)
set_lower_bound(x[215], 0.0)
set_lower_bound(x[174], 0.0)
set_lower_bound(x[99], 0.0)
set_lower_bound(x[169], 0.0)
set_lower_bound(x[197], 0.0)
set_lower_bound(x[198], 0.0)
set_lower_bound(x[148], 0.0)
set_lower_bound(x[150], 0.0)
set_lower_bound(x[225], 0.0)
set_lower_bound(x[218], 0.0)
set_lower_bound(x[73], 0.0)
set_lower_bound(x[231], 0.0)
set_lower_bound(x[101], 0.0)
set_lower_bound(x[136], 0.0)
set_lower_bound(x[190], 0.0)
set_lower_bound(x[196], 0.0)
set_lower_bound(x[151], 0.0)
set_lower_bound(x[171], 0.0)
set_lower_bound(x[147], 0.0)
set_lower_bound(x[138], 0.0)
set_lower_bound(x[92], 0.0)
set_lower_bound(x[111], 0.0)
set_lower_bound(x[219], 0.0)
set_lower_bound(x[185], 0.0)
set_lower_bound(x[137], 0.0)
set_lower_bound(x[87], 0.0)
set_lower_bound(x[224], 0.0)
set_lower_bound(x[179], 0.0)
set_lower_bound(x[175], 0.0)
set_lower_bound(x[142], 0.0)
set_lower_bound(x[209], 0.0)
set_lower_bound(x[128], 0.0)
set_lower_bound(x[161], 0.0)
set_lower_bound(x[156], 0.0)
set_lower_bound(x[199], 0.0)
set_lower_bound(x[213], 0.0)
set_lower_bound(x[173], 0.0)
set_lower_bound(x[176], 0.0)
set_lower_bound(x[123], 0.0)
set_lower_bound(x[112], 0.0)
set_lower_bound(x[115], 0.0)
set_lower_bound(x[227], 0.0)
set_lower_bound(x[189], 0.0)
set_lower_bound(x[187], 0.0)
set_lower_bound(x[119], 0.0)
set_lower_bound(x[166], 0.0)
set_lower_bound(x[157], 0.0)
set_lower_bound(x[230], 0.0)
set_lower_bound(x[163], 0.0)
set_lower_bound(x[216], 0.0)
set_lower_bound(x[133], 0.0)
set_lower_bound(x[192], 0.0)
set_lower_bound(x[205], 0.0)
set_lower_bound(x[207], 0.0)
set_lower_bound(x[195], 0.0)
set_lower_bound(x[117], 0.0)
set_lower_bound(x[89], 0.0)
set_lower_bound(x[140], 0.0)
set_lower_bound(x[181], 0.0)
set_lower_bound(x[153], 0.0)
set_lower_bound(x[201], 0.0)
set_lower_bound(x[105], 0.0)
set_lower_bound(x[223], 0.0)
set_lower_bound(x[113], 0.0)
set_lower_bound(x[130], 0.0)
set_lower_bound(x[100], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[208], 0.0)
set_lower_bound(x[131], 0.0)
set_lower_bound(x[96], 0.0)
set_lower_bound(x[210], 0.0)
set_lower_bound(x[182], 0.0)
set_lower_bound(x[191], 0.0)
set_lower_bound(x[177], 0.0)
set_lower_bound(x[121], 0.0)
set_lower_bound(x[152], 0.0)
set_lower_bound(x[184], 0.0)
set_lower_bound(x[98], 0.0)
set_lower_bound(x[158], 0.0)
set_lower_bound(x[90], 0.0)
set_lower_bound(x[203], 0.0)
set_lower_bound(x[170], 0.0)
set_lower_bound(x[149], 0.0)
set_lower_bound(x[221], 0.0)
set_lower_bound(x[217], 0.0)
set_lower_bound(x[212], 0.0)
set_lower_bound(x[125], 0.0)
set_lower_bound(x[183], 0.0)
set_lower_bound(x[167], 0.0)
set_lower_bound(x[102], 0.0)
set_lower_bound(x[228], 0.0)
set_lower_bound(x[118], 0.0)
set_lower_bound(x[93], 0.0)
set_lower_bound(x[222], 0.0)
set_lower_bound(x[110], 0.0)
set_lower_bound(x[155], 0.0)
set_lower_bound(x[204], 0.0)
set_lower_bound(x[106], 0.0)
set_lower_bound(x[193], 0.0)
set_lower_bound(x[134], 0.0)
set_lower_bound(x[180], 0.0)
set_lower_bound(x[122], 0.0)
set_lower_bound(x[129], 0.0)
set_lower_bound(x[194], 0.0)
set_lower_bound(x[104], 0.0)
set_lower_bound(x[214], 0.0)
set_lower_bound(x[178], 0.0)
set_lower_bound(x[139], 0.0)
set_lower_bound(x[126], 0.0)
set_lower_bound(x[107], 0.0)
set_lower_bound(x[168], 0.0)
set_lower_bound(x[97], 0.0)
set_lower_bound(x[127], 0.0)
set_lower_bound(x[124], 0.0)
set_lower_bound(x[159], 0.0)
set_lower_bound(x[109], 0.0)
set_lower_bound(x[135], 0.0)
set_lower_bound(x[229], 0.0)
set_lower_bound(x[211], 0.0)
set_lower_bound(x[108], 0.0)
set_upper_bound(x[71], 11.0)
set_upper_bound(x[72], 10.0)
set_upper_bound(x[73], 11.0)
set_upper_bound(x[74], 7.0)
set_upper_bound(x[75], 10.0)
set_lower_bound(x[76], 1.0)
set_upper_bound(x[76], 14.0)
set_lower_bound(x[77], 1.0)
set_upper_bound(x[77], 12.0)
set_lower_bound(x[78], 1.0)
set_upper_bound(x[78], 13.0)
set_lower_bound(x[79], 1.0)
set_upper_bound(x[79], 14.0)
set_lower_bound(x[80], 1.0)
set_upper_bound(x[80], 13.0)
set_lower_bound(x[81], 1.0)
set_upper_bound(x[81], 14.0)
set_lower_bound(x[82], 1.0)
set_upper_bound(x[82], 12.0)
set_lower_bound(x[83], 1.0)
set_upper_bound(x[83], 13.0)
set_lower_bound(x[84], 1.0)
set_upper_bound(x[84], 13.0)
set_lower_bound(x[85], 1.0)
set_upper_bound(x[85], 14.0)
set_upper_bound(x[107], 109669.003926881)
set_upper_bound(x[108], 99699.094478983)
set_upper_bound(x[109], 109669.003926881)
set_upper_bound(x[110], 69789.3661352881)
set_upper_bound(x[111], 99699.094478983)
set_upper_bound(x[112], 11.0)
set_upper_bound(x[113], 11.0)
set_upper_bound(x[114], 11.0)
set_upper_bound(x[115], 11.0)
set_upper_bound(x[116], 11.0)
set_upper_bound(x[117], 11.0)
set_upper_bound(x[118], 11.0)
set_upper_bound(x[119], 11.0)
set_upper_bound(x[120], 11.0)
set_upper_bound(x[121], 11.0)
set_upper_bound(x[122], 10.0)
set_upper_bound(x[123], 10.0)
set_upper_bound(x[124], 10.0)
set_upper_bound(x[125], 10.0)
set_upper_bound(x[126], 10.0)
set_upper_bound(x[127], 10.0)
set_upper_bound(x[128], 10.0)
set_upper_bound(x[129], 10.0)
set_upper_bound(x[130], 10.0)
set_upper_bound(x[131], 10.0)
set_upper_bound(x[132], 11.0)
set_upper_bound(x[133], 11.0)
set_upper_bound(x[134], 11.0)
set_upper_bound(x[135], 11.0)
set_upper_bound(x[136], 11.0)
set_upper_bound(x[137], 11.0)
set_upper_bound(x[138], 11.0)
set_upper_bound(x[139], 11.0)
set_upper_bound(x[140], 11.0)
set_upper_bound(x[141], 11.0)
set_upper_bound(x[142], 7.0)
set_upper_bound(x[143], 7.0)
set_upper_bound(x[144], 7.0)
set_upper_bound(x[145], 7.0)
set_upper_bound(x[146], 7.0)
set_upper_bound(x[147], 7.0)
set_upper_bound(x[148], 7.0)
set_upper_bound(x[149], 7.0)
set_upper_bound(x[150], 7.0)
set_upper_bound(x[151], 7.0)
set_upper_bound(x[152], 10.0)
set_upper_bound(x[153], 10.0)
set_upper_bound(x[154], 10.0)
set_upper_bound(x[155], 10.0)
set_upper_bound(x[156], 10.0)
set_upper_bound(x[157], 10.0)
set_upper_bound(x[158], 10.0)
set_upper_bound(x[159], 10.0)
set_upper_bound(x[160], 10.0)
set_upper_bound(x[161], 10.0)
set_upper_bound(x[162], 11.0)
set_upper_bound(x[163], 11.0)
set_upper_bound(x[164], 11.0)
set_upper_bound(x[165], 11.0)
set_upper_bound(x[166], 11.0)
set_upper_bound(x[167], 11.0)
set_upper_bound(x[168], 11.0)
set_upper_bound(x[169], 11.0)
set_upper_bound(x[170], 11.0)
set_upper_bound(x[171], 11.0)
set_upper_bound(x[172], 10.0)
set_upper_bound(x[173], 10.0)
set_upper_bound(x[174], 10.0)
set_upper_bound(x[175], 10.0)
set_upper_bound(x[176], 10.0)
set_upper_bound(x[177], 10.0)
set_upper_bound(x[178], 10.0)
set_upper_bound(x[179], 10.0)
set_upper_bound(x[180], 10.0)
set_upper_bound(x[181], 10.0)
set_upper_bound(x[182], 11.0)
set_upper_bound(x[183], 11.0)
set_upper_bound(x[184], 11.0)
set_upper_bound(x[185], 11.0)
set_upper_bound(x[186], 11.0)
set_upper_bound(x[187], 11.0)
set_upper_bound(x[188], 11.0)
set_upper_bound(x[189], 11.0)
set_upper_bound(x[190], 11.0)
set_upper_bound(x[191], 11.0)
set_upper_bound(x[192], 7.0)
set_upper_bound(x[193], 7.0)
set_upper_bound(x[194], 7.0)
set_upper_bound(x[195], 7.0)
set_upper_bound(x[196], 7.0)
set_upper_bound(x[197], 7.0)
set_upper_bound(x[198], 7.0)
set_upper_bound(x[199], 7.0)
set_upper_bound(x[200], 7.0)
set_upper_bound(x[201], 7.0)
set_upper_bound(x[202], 10.0)
set_upper_bound(x[203], 10.0)
set_upper_bound(x[204], 10.0)
set_upper_bound(x[205], 10.0)
set_upper_bound(x[206], 10.0)
set_upper_bound(x[207], 10.0)
set_upper_bound(x[208], 10.0)
set_upper_bound(x[209], 10.0)
set_upper_bound(x[210], 10.0)
set_upper_bound(x[211], 10.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(88.85300006996*sqrt(1e-8+x[107])+192.23073994166*sqrt(1e-8+x[108])+127.63233374696*sqrt(1e-8+x[109])+419.48235478268*sqrt(1e-8+x[110])+153.22284111554*sqrt(1e-8+x[111])+11812.8060023653*sqrt(1e-8+x[76])+1350.11753695442*sqrt(1e-8+x[77])+13367.9894872554*sqrt(1e-8+x[78])+22271.0227712868*sqrt(1e-8+x[79])+3005.94387692899*sqrt(1e-8+x[80])+8081.13134168897*sqrt(1e-8+x[81])+2725.40259637536*sqrt(1e-8+x[82])+17834.6321864598*sqrt(1e-8+x[83])+11090.3708869987*sqrt(1e-8+x[84])+34135.3450147183*sqrt(1e-8+x[85]))-151717.47132*b[16]-158432.66708*b[17]-155503.75356*b[18]-153011.37904*b[19]-152922.12117*b[20]-31172.917964017*b[21]-50366.2988612629*b[22]-25232.3015865842*b[23]-13875.2777716691*b[24]-12894.0919466219*b[25]-104246.200740246*b[26]-23030.4692996671*b[27]-34080.9619919892*b[28]-23691.1338892398*b[29]-71485.9325093983*b[30]-20595.4230163802*b[31]-100964.014716159*b[32]-47584.642753328*b[33]-8366.15399075336*b[34]-12512.1539989574*b[35]-35986.4763418661*b[36]-46834.267934517*b[37]-35500.2352632821*b[38]-24409.7766590388*b[39]-48282.6225705813*b[40]-31041.4817687302*b[41]-53037.2328896265*b[42]-51459.7461120258*b[43]-22667.2580628975*b[44]-25228.9882448255*b[45]-37408.8375498868*b[46]-25200.7856772603*b[47]-36902.8071939517*b[48]-26504.6681149691*b[49]-49522.8366523017*b[50]-9271.93442865272*b[51]-144904.131180845*b[52]-24247.3790621604*b[53]-7667.40116108732*b[54]-22073.8762813933*b[55]-107488.43411253*b[56]-23226.4417178111*b[57]-34704.48655633*b[58]-25058.2307095212*b[59]-47407.2067673463*b[60]-21614.5566697948*b[61]-101949.658248026*b[62]-25381.2261639692*b[63]-8426.19414871674*b[64]-13579.8855675766*b[65]-107491.687838232*b[66]-43784.7477537411*b[67]-107221.380878763*b[68]-13362.229690641*b[69]-25676.6925875457*b[70]+objvar-772.8645240165*x[87]-109.73384215925*x[88]-332.64598234875*x[89]-226.514334935*x[90]-159.627138782*x[91]-621.33045502625*x[92]-444.925267275*x[93]-198.06301532475*x[94]-357.5965626135*x[95]-80.6766666775*x[96]-242.0437770305*x[97]-630.31461703875*x[98]-485.8539167745*x[99]-239.8308926255*x[100]-408.49173769875*x[101] == 0.0)
@constraint(m, e2, b[1]+b[6]+b[11]-b[16] == 0.0)
@constraint(m, e3, b[2]+b[7]+b[12]-b[17] == 0.0)
@constraint(m, e4, b[3]+b[8]+b[13]-b[18] == 0.0)
@constraint(m, e5, b[4]+b[9]+b[14]-b[19] == 0.0)
@constraint(m, e6, b[5]+b[10]+b[15]-b[20] == 0.0)
@constraint(m, e7, -b[16]+b[21] <= 0.0)
@constraint(m, e8, -b[16]+b[22] <= 0.0)
@constraint(m, e9, -b[16]+b[23] <= 0.0)
@constraint(m, e10, -b[16]+b[24] <= 0.0)
@constraint(m, e11, -b[16]+b[25] <= 0.0)
@constraint(m, e12, -b[16]+b[26] <= 0.0)
@constraint(m, e13, -b[16]+b[27] <= 0.0)
@constraint(m, e14, -b[16]+b[28] <= 0.0)
@constraint(m, e15, -b[16]+b[29] <= 0.0)
@constraint(m, e16, -b[16]+b[30] <= 0.0)
@constraint(m, e17, -b[17]+b[31] <= 0.0)
@constraint(m, e18, -b[17]+b[32] <= 0.0)
@constraint(m, e19, -b[17]+b[33] <= 0.0)
@constraint(m, e20, -b[17]+b[34] <= 0.0)
@constraint(m, e21, -b[17]+b[35] <= 0.0)
@constraint(m, e22, -b[17]+b[36] <= 0.0)
@constraint(m, e23, -b[17]+b[37] <= 0.0)
@constraint(m, e24, -b[17]+b[38] <= 0.0)
@constraint(m, e25, -b[17]+b[39] <= 0.0)
@constraint(m, e26, -b[17]+b[40] <= 0.0)
@constraint(m, e27, -b[18]+b[41] <= 0.0)
@constraint(m, e28, -b[18]+b[42] <= 0.0)
@constraint(m, e29, -b[18]+b[43] <= 0.0)
@constraint(m, e30, -b[18]+b[44] <= 0.0)
@constraint(m, e31, -b[18]+b[45] <= 0.0)
@constraint(m, e32, -b[18]+b[46] <= 0.0)
@constraint(m, e33, -b[18]+b[47] <= 0.0)
@constraint(m, e34, -b[18]+b[48] <= 0.0)
@constraint(m, e35, -b[18]+b[49] <= 0.0)
@constraint(m, e36, -b[18]+b[50] <= 0.0)
@constraint(m, e37, -b[19]+b[51] <= 0.0)
@constraint(m, e38, -b[19]+b[52] <= 0.0)
@constraint(m, e39, -b[19]+b[53] <= 0.0)
@constraint(m, e40, -b[19]+b[54] <= 0.0)
@constraint(m, e41, -b[19]+b[55] <= 0.0)
@constraint(m, e42, -b[19]+b[56] <= 0.0)
@constraint(m, e43, -b[19]+b[57] <= 0.0)
@constraint(m, e44, -b[19]+b[58] <= 0.0)
@constraint(m, e45, -b[19]+b[59] <= 0.0)
@constraint(m, e46, -b[19]+b[60] <= 0.0)
@constraint(m, e47, -b[20]+b[61] <= 0.0)
@constraint(m, e48, -b[20]+b[62] <= 0.0)
@constraint(m, e49, -b[20]+b[63] <= 0.0)
@constraint(m, e50, -b[20]+b[64] <= 0.0)
@constraint(m, e51, -b[20]+b[65] <= 0.0)
@constraint(m, e52, -b[20]+b[66] <= 0.0)
@constraint(m, e53, -b[20]+b[67] <= 0.0)
@constraint(m, e54, -b[20]+b[68] <= 0.0)
@constraint(m, e55, -b[20]+b[69] <= 0.0)
@constraint(m, e56, -b[20]+b[70] <= 0.0)
@constraint(m, e57, b[21]+b[31]+b[41]+b[51]+b[61] == 1.0)
@constraint(m, e58, b[22]+b[32]+b[42]+b[52]+b[62] == 1.0)
@constraint(m, e59, b[23]+b[33]+b[43]+b[53]+b[63] == 1.0)
@constraint(m, e60, b[24]+b[34]+b[44]+b[54]+b[64] == 1.0)
@constraint(m, e61, b[25]+b[35]+b[45]+b[55]+b[65] == 1.0)
@constraint(m, e62, b[26]+b[36]+b[46]+b[56]+b[66] == 1.0)
@constraint(m, e63, b[27]+b[37]+b[47]+b[57]+b[67] == 1.0)
@constraint(m, e64, b[28]+b[38]+b[48]+b[58]+b[68] == 1.0)
@constraint(m, e65, b[29]+b[39]+b[49]+b[59]+b[69] == 1.0)
@constraint(m, e66, b[30]+b[40]+b[50]+b[60]+b[70] == 1.0)
@constraint(m, e67, -3*b[21]-2*b[31]-3*b[41]-b[51]-2*b[61]+x[76]-x[112]-x[122]-x[132]-x[142]-x[152] >= 0.0)
@constraint(m, e68, -b[22]-2*b[32]-b[42]-3*b[52]-2*b[62]+x[77]-x[113]-x[123]-x[133]-x[143]-x[153] >= 0.0)
@constraint(m, e69, -b[23]-2*b[33]-2*b[43]-b[53]-b[63]+x[78]-x[114]-x[124]-x[134]-x[144]-x[154] >= 0.0)
@constraint(m, e70, -2*b[24]-b[34]-3*b[44]-b[54]-b[64]+x[79]-x[115]-x[125]-x[135]-x[145]-x[155] >= 0.0)
@constraint(m, e71, -b[25]-b[35]-2*b[45]-2*b[55]-b[65]+x[80]-x[116]-x[126]-x[136]-x[146]-x[156] >= 0.0)
@constraint(m, e72, -3*b[26]-b[36]-b[46]-3*b[56]-3*b[66]+x[81]-x[117]-x[127]-x[137]-x[147]-x[157] >= 0.0)
@constraint(m, e73, -b[27]-2*b[37]-b[47]-b[57]-2*b[67]+x[82]-x[118]-x[128]-x[138]-x[148]-x[158] >= 0.0)
@constraint(m, e74, -b[28]-b[38]-b[48]-b[58]-3*b[68]+x[83]-x[119]-x[129]-x[139]-x[149]-x[159] >= 0.0)
@constraint(m, e75, -2*b[29]-2*b[39]-2*b[49]-2*b[59]-b[69]+x[84]-x[120]-x[130]-x[140]-x[150]-x[160] >= 0.0)
@constraint(m, e76, -3*b[30]-2*b[40]-2*b[50]-2*b[60]-b[70]+x[85]-x[121]-x[131]-x[141]-x[151]-x[161] >= 0.0)
@constraint(m, e77, -133.258309275*b[21]-144.933884175*b[22]-90.093117225*b[23]-97.285204275*b[24]-89.79206385*b[25]-93.475928775*b[26]-123.485735475*b[27]-130.122945825*b[28]-81.4077558*b[29]-86.2760787*b[30]+x[87]+x[92]+x[97]+x[102] == 0.0)
@constraint(m, e78, -133.258309275*b[31]-144.933884175*b[32]-90.093117225*b[33]-97.285204275*b[34]-89.79206385*b[35]-93.475928775*b[36]-123.485735475*b[37]-130.122945825*b[38]-81.4077558*b[39]-86.2760787*b[40]+x[88]+x[93]+x[98]+x[103] == 0.0)
@constraint(m, e79, -133.258309275*b[41]-144.933884175*b[42]-90.093117225*b[43]-97.285204275*b[44]-89.79206385*b[45]-93.475928775*b[46]-123.485735475*b[47]-130.122945825*b[48]-81.4077558*b[49]-86.2760787*b[50]+x[89]+x[94]+x[99]+x[104] == 0.0)
@constraint(m, e80, -133.258309275*b[51]-144.933884175*b[52]-90.093117225*b[53]-97.285204275*b[54]-89.79206385*b[55]-93.475928775*b[56]-123.485735475*b[57]-130.122945825*b[58]-81.4077558*b[59]-86.2760787*b[60]+x[90]+x[95]+x[100]+x[105] == 0.0)
@constraint(m, e81, -133.258309275*b[61]-144.933884175*b[62]-90.093117225*b[63]-97.285204275*b[64]-89.79206385*b[65]-93.475928775*b[66]-123.485735475*b[67]-130.122945825*b[68]-81.4077558*b[69]-86.2760787*b[70]+x[91]+x[96]+x[101]+x[106] == 0.0)
@constraint(m, e82, -1070.131023375*b[1]+x[87] <= 0.0)
@constraint(m, e83, -1070.131023375*b[2]+x[88] <= 0.0)
@constraint(m, e84, -1070.131023375*b[3]+x[89] <= 0.0)
@constraint(m, e85, -1070.131023375*b[4]+x[90] <= 0.0)
@constraint(m, e86, -1070.131023375*b[5]+x[91] <= 0.0)
@constraint(m, e87, -1070.131023375*b[6]+x[92] <= 0.0)
@constraint(m, e88, -1070.131023375*b[7]+x[93] <= 0.0)
@constraint(m, e89, -1070.131023375*b[8]+x[94] <= 0.0)
@constraint(m, e90, -1070.131023375*b[9]+x[95] <= 0.0)
@constraint(m, e91, -1070.131023375*b[10]+x[96] <= 0.0)
@constraint(m, e92, -1070.131023375*b[11]+x[97] <= 0.0)
@constraint(m, e93, -1070.131023375*b[12]+x[98] <= 0.0)
@constraint(m, e94, -1070.131023375*b[13]+x[99] <= 0.0)
@constraint(m, e95, -1070.131023375*b[14]+x[100] <= 0.0)
@constraint(m, e96, -1070.131023375*b[15]+x[101] <= 0.0)
@constraint(m, e97, 1070.131023375*b[16]+x[102] <= 1070.131023375)
@constraint(m, e98, 1070.131023375*b[17]+x[103] <= 1070.131023375)
@constraint(m, e99, 1070.131023375*b[18]+x[104] <= 1070.131023375)
@constraint(m, e100, 1070.131023375*b[19]+x[105] <= 1070.131023375)
@constraint(m, e101, 1070.131023375*b[20]+x[106] <= 1070.131023375)
@constraint(m, e102, -x[71]+x[112]+x[162] == 0.0)
@constraint(m, e103, -x[71]+x[113]+x[163] == 0.0)
@constraint(m, e104, -x[71]+x[114]+x[164] == 0.0)
@constraint(m, e105, -x[71]+x[115]+x[165] == 0.0)
@constraint(m, e106, -x[71]+x[116]+x[166] == 0.0)
@constraint(m, e107, -x[71]+x[117]+x[167] == 0.0)
@constraint(m, e108, -x[71]+x[118]+x[168] == 0.0)
@constraint(m, e109, -x[71]+x[119]+x[169] == 0.0)
@constraint(m, e110, -x[71]+x[120]+x[170] == 0.0)
@constraint(m, e111, -x[71]+x[121]+x[171] == 0.0)
@constraint(m, e112, -x[72]+x[122]+x[172] == 0.0)
@constraint(m, e113, -x[72]+x[123]+x[173] == 0.0)
@constraint(m, e114, -x[72]+x[124]+x[174] == 0.0)
@constraint(m, e115, -x[72]+x[125]+x[175] == 0.0)
@constraint(m, e116, -x[72]+x[126]+x[176] == 0.0)
@constraint(m, e117, -x[72]+x[127]+x[177] == 0.0)
@constraint(m, e118, -x[72]+x[128]+x[178] == 0.0)
@constraint(m, e119, -x[72]+x[129]+x[179] == 0.0)
@constraint(m, e120, -x[72]+x[130]+x[180] == 0.0)
@constraint(m, e121, -x[72]+x[131]+x[181] == 0.0)
@constraint(m, e122, -x[73]+x[132]+x[182] == 0.0)
@constraint(m, e123, -x[73]+x[133]+x[183] == 0.0)
@constraint(m, e124, -x[73]+x[134]+x[184] == 0.0)
@constraint(m, e125, -x[73]+x[135]+x[185] == 0.0)
@constraint(m, e126, -x[73]+x[136]+x[186] == 0.0)
@constraint(m, e127, -x[73]+x[137]+x[187] == 0.0)
@constraint(m, e128, -x[73]+x[138]+x[188] == 0.0)
@constraint(m, e129, -x[73]+x[139]+x[189] == 0.0)
@constraint(m, e130, -x[73]+x[140]+x[190] == 0.0)
@constraint(m, e131, -x[73]+x[141]+x[191] == 0.0)
@constraint(m, e132, -x[74]+x[142]+x[192] == 0.0)
@constraint(m, e133, -x[74]+x[143]+x[193] == 0.0)
@constraint(m, e134, -x[74]+x[144]+x[194] == 0.0)
@constraint(m, e135, -x[74]+x[145]+x[195] == 0.0)
@constraint(m, e136, -x[74]+x[146]+x[196] == 0.0)
@constraint(m, e137, -x[74]+x[147]+x[197] == 0.0)
@constraint(m, e138, -x[74]+x[148]+x[198] == 0.0)
@constraint(m, e139, -x[74]+x[149]+x[199] == 0.0)
@constraint(m, e140, -x[74]+x[150]+x[200] == 0.0)
@constraint(m, e141, -x[74]+x[151]+x[201] == 0.0)
@constraint(m, e142, -x[75]+x[152]+x[202] == 0.0)
@constraint(m, e143, -x[75]+x[153]+x[203] == 0.0)
@constraint(m, e144, -x[75]+x[154]+x[204] == 0.0)
@constraint(m, e145, -x[75]+x[155]+x[205] == 0.0)
@constraint(m, e146, -x[75]+x[156]+x[206] == 0.0)
@constraint(m, e147, -x[75]+x[157]+x[207] == 0.0)
@constraint(m, e148, -x[75]+x[158]+x[208] == 0.0)
@constraint(m, e149, -x[75]+x[159]+x[209] == 0.0)
@constraint(m, e150, -x[75]+x[160]+x[210] == 0.0)
@constraint(m, e151, -x[75]+x[161]+x[211] == 0.0)
@constraint(m, e152, -11*b[21]+x[112] <= 0.0)
@constraint(m, e153, -11*b[22]+x[113] <= 0.0)
@constraint(m, e154, -11*b[23]+x[114] <= 0.0)
@constraint(m, e155, -11*b[24]+x[115] <= 0.0)
@constraint(m, e156, -11*b[25]+x[116] <= 0.0)
@constraint(m, e157, -11*b[26]+x[117] <= 0.0)
@constraint(m, e158, -11*b[27]+x[118] <= 0.0)
@constraint(m, e159, -11*b[28]+x[119] <= 0.0)
@constraint(m, e160, -11*b[29]+x[120] <= 0.0)
@constraint(m, e161, -11*b[30]+x[121] <= 0.0)
@constraint(m, e162, -10*b[31]+x[122] <= 0.0)
@constraint(m, e163, -10*b[32]+x[123] <= 0.0)
@constraint(m, e164, -10*b[33]+x[124] <= 0.0)
@constraint(m, e165, -10*b[34]+x[125] <= 0.0)
@constraint(m, e166, -10*b[35]+x[126] <= 0.0)
@constraint(m, e167, -10*b[36]+x[127] <= 0.0)
@constraint(m, e168, -10*b[37]+x[128] <= 0.0)
@constraint(m, e169, -10*b[38]+x[129] <= 0.0)
@constraint(m, e170, -10*b[39]+x[130] <= 0.0)
@constraint(m, e171, -10*b[40]+x[131] <= 0.0)
@constraint(m, e172, -11*b[41]+x[132] <= 0.0)
@constraint(m, e173, -11*b[42]+x[133] <= 0.0)
@constraint(m, e174, -11*b[43]+x[134] <= 0.0)
@constraint(m, e175, -11*b[44]+x[135] <= 0.0)
@constraint(m, e176, -11*b[45]+x[136] <= 0.0)
@constraint(m, e177, -11*b[46]+x[137] <= 0.0)
@constraint(m, e178, -11*b[47]+x[138] <= 0.0)
@constraint(m, e179, -11*b[48]+x[139] <= 0.0)
@constraint(m, e180, -11*b[49]+x[140] <= 0.0)
@constraint(m, e181, -11*b[50]+x[141] <= 0.0)
@constraint(m, e182, -7*b[51]+x[142] <= 0.0)
@constraint(m, e183, -7*b[52]+x[143] <= 0.0)
@constraint(m, e184, -7*b[53]+x[144] <= 0.0)
@constraint(m, e185, -7*b[54]+x[145] <= 0.0)
@constraint(m, e186, -7*b[55]+x[146] <= 0.0)
@constraint(m, e187, -7*b[56]+x[147] <= 0.0)
@constraint(m, e188, -7*b[57]+x[148] <= 0.0)
@constraint(m, e189, -7*b[58]+x[149] <= 0.0)
@constraint(m, e190, -7*b[59]+x[150] <= 0.0)
@constraint(m, e191, -7*b[60]+x[151] <= 0.0)
@constraint(m, e192, -10*b[61]+x[152] <= 0.0)
@constraint(m, e193, -10*b[62]+x[153] <= 0.0)
@constraint(m, e194, -10*b[63]+x[154] <= 0.0)
@constraint(m, e195, -10*b[64]+x[155] <= 0.0)
@constraint(m, e196, -10*b[65]+x[156] <= 0.0)
@constraint(m, e197, -10*b[66]+x[157] <= 0.0)
@constraint(m, e198, -10*b[67]+x[158] <= 0.0)
@constraint(m, e199, -10*b[68]+x[159] <= 0.0)
@constraint(m, e200, -10*b[69]+x[160] <= 0.0)
@constraint(m, e201, -10*b[70]+x[161] <= 0.0)
@constraint(m, e202, 11*b[21]+x[162] <= 11.0)
@constraint(m, e203, 11*b[22]+x[163] <= 11.0)
@constraint(m, e204, 11*b[23]+x[164] <= 11.0)
@constraint(m, e205, 11*b[24]+x[165] <= 11.0)
@constraint(m, e206, 11*b[25]+x[166] <= 11.0)
@constraint(m, e207, 11*b[26]+x[167] <= 11.0)
@constraint(m, e208, 11*b[27]+x[168] <= 11.0)
@constraint(m, e209, 11*b[28]+x[169] <= 11.0)
@constraint(m, e210, 11*b[29]+x[170] <= 11.0)
@constraint(m, e211, 11*b[30]+x[171] <= 11.0)
@constraint(m, e212, 10*b[31]+x[172] <= 10.0)
@constraint(m, e213, 10*b[32]+x[173] <= 10.0)
@constraint(m, e214, 10*b[33]+x[174] <= 10.0)
@constraint(m, e215, 10*b[34]+x[175] <= 10.0)
@constraint(m, e216, 10*b[35]+x[176] <= 10.0)
@constraint(m, e217, 10*b[36]+x[177] <= 10.0)
@constraint(m, e218, 10*b[37]+x[178] <= 10.0)
@constraint(m, e219, 10*b[38]+x[179] <= 10.0)
@constraint(m, e220, 10*b[39]+x[180] <= 10.0)
@constraint(m, e221, 10*b[40]+x[181] <= 10.0)
@constraint(m, e222, 11*b[41]+x[182] <= 11.0)
@constraint(m, e223, 11*b[42]+x[183] <= 11.0)
@constraint(m, e224, 11*b[43]+x[184] <= 11.0)
@constraint(m, e225, 11*b[44]+x[185] <= 11.0)
@constraint(m, e226, 11*b[45]+x[186] <= 11.0)
@constraint(m, e227, 11*b[46]+x[187] <= 11.0)
@constraint(m, e228, 11*b[47]+x[188] <= 11.0)
@constraint(m, e229, 11*b[48]+x[189] <= 11.0)
@constraint(m, e230, 11*b[49]+x[190] <= 11.0)
@constraint(m, e231, 11*b[50]+x[191] <= 11.0)
@constraint(m, e232, 7*b[51]+x[192] <= 7.0)
@constraint(m, e233, 7*b[52]+x[193] <= 7.0)
@constraint(m, e234, 7*b[53]+x[194] <= 7.0)
@constraint(m, e235, 7*b[54]+x[195] <= 7.0)
@constraint(m, e236, 7*b[55]+x[196] <= 7.0)
@constraint(m, e237, 7*b[56]+x[197] <= 7.0)
@constraint(m, e238, 7*b[57]+x[198] <= 7.0)
@constraint(m, e239, 7*b[58]+x[199] <= 7.0)
@constraint(m, e240, 7*b[59]+x[200] <= 7.0)
@constraint(m, e241, 7*b[60]+x[201] <= 7.0)
@constraint(m, e242, 10*b[61]+x[202] <= 10.0)
@constraint(m, e243, 10*b[62]+x[203] <= 10.0)
@constraint(m, e244, 10*b[63]+x[204] <= 10.0)
@constraint(m, e245, 10*b[64]+x[205] <= 10.0)
@constraint(m, e246, 10*b[65]+x[206] <= 10.0)
@constraint(m, e247, 10*b[66]+x[207] <= 10.0)
@constraint(m, e248, 10*b[67]+x[208] <= 10.0)
@constraint(m, e249, 10*b[68]+x[209] <= 10.0)
@constraint(m, e250, 10*b[69]+x[210] <= 10.0)
@constraint(m, e251, 10*b[70]+x[211] <= 10.0)
@constraint(m, e252, -471.299114292143*b[21]-87.3644508144726*b[22]-1199.55883169351*b[23]-1455.32236178753*b[24]-59.9123555503718*b[25]-379.038814816129*b[26]-1209.04864109044*b[27]-1788.49473840444*b[28]-938.567397231442*b[29]-2381.30274221782*b[30]+x[212]+x[217]+x[222]+x[227] == 0.0)
@constraint(m, e253, -471.299114292143*b[31]-87.3644508144726*b[32]-1199.55883169351*b[33]-1455.32236178753*b[34]-59.9123555503718*b[35]-379.038814816129*b[36]-1209.04864109044*b[37]-1788.49473840444*b[38]-938.567397231442*b[39]-2381.30274221782*b[40]+x[213]+x[218]+x[223]+x[228] == 0.0)
@constraint(m, e254, -471.299114292143*b[41]-87.3644508144726*b[42]-1199.55883169351*b[43]-1455.32236178753*b[44]-59.9123555503718*b[45]-379.038814816129*b[46]-1209.04864109044*b[47]-1788.49473840444*b[48]-938.567397231442*b[49]-2381.30274221782*b[50]+x[214]+x[219]+x[224]+x[229] == 0.0)
@constraint(m, e255, -471.299114292143*b[51]-87.3644508144726*b[52]-1199.55883169351*b[53]-1455.32236178753*b[54]-59.9123555503718*b[55]-379.038814816129*b[56]-1209.04864109044*b[57]-1788.49473840444*b[58]-938.567397231442*b[59]-2381.30274221782*b[60]+x[215]+x[220]+x[225]+x[230] == 0.0)
@constraint(m, e256, -471.299114292143*b[61]-87.3644508144726*b[62]-1199.55883169351*b[63]-1455.32236178753*b[64]-59.9123555503718*b[65]-379.038814816129*b[66]-1209.04864109044*b[67]-1788.49473840444*b[68]-938.567397231442*b[69]-2381.30274221782*b[70]+x[216]+x[221]+x[226]+x[231] == 0.0)
@constraint(m, e257, -9969.9094478983*b[1]+x[212] <= 0.0)
@constraint(m, e258, -9969.9094478983*b[2]+x[213] <= 0.0)
@constraint(m, e259, -9969.9094478983*b[3]+x[214] <= 0.0)
@constraint(m, e260, -9969.9094478983*b[4]+x[215] <= 0.0)
@constraint(m, e261, -9969.9094478983*b[5]+x[216] <= 0.0)
@constraint(m, e262, -9969.9094478983*b[6]+x[217] <= 0.0)
@constraint(m, e263, -9969.9094478983*b[7]+x[218] <= 0.0)
@constraint(m, e264, -9969.9094478983*b[8]+x[219] <= 0.0)
@constraint(m, e265, -9969.9094478983*b[9]+x[220] <= 0.0)
@constraint(m, e266, -9969.9094478983*b[10]+x[221] <= 0.0)
@constraint(m, e267, -9969.9094478983*b[11]+x[222] <= 0.0)
@constraint(m, e268, -9969.9094478983*b[12]+x[223] <= 0.0)
@constraint(m, e269, -9969.9094478983*b[13]+x[224] <= 0.0)
@constraint(m, e270, -9969.9094478983*b[14]+x[225] <= 0.0)
@constraint(m, e271, -9969.9094478983*b[15]+x[226] <= 0.0)
@constraint(m, e272, 9969.9094478983*b[16]+x[227] <= 9969.9094478983)
@constraint(m, e273, 9969.9094478983*b[17]+x[228] <= 9969.9094478983)
@constraint(m, e274, 9969.9094478983*b[18]+x[229] <= 9969.9094478983)
@constraint(m, e275, 9969.9094478983*b[19]+x[230] <= 9969.9094478983)
@constraint(m, e276, 9969.9094478983*b[20]+x[231] <= 9969.9094478983)
@constraint(m, e277, x[107]+471.299114292143*x[112]+87.3644508144726*x[113]+1199.55883169351*x[114]+1455.32236178753*x[115]+59.9123555503718*x[116]+379.038814816129*x[117]+1209.04864109044*x[118]+1788.49473840444*x[119]+938.567397231442*x[120]+2381.30274221782*x[121]-11*x[212]-8*x[217]-7*x[222] == 0.0)
@constraint(m, e278, x[108]+471.299114292143*x[122]+87.3644508144726*x[123]+1199.55883169351*x[124]+1455.32236178753*x[125]+59.9123555503718*x[126]+379.038814816129*x[127]+1209.04864109044*x[128]+1788.49473840444*x[129]+938.567397231442*x[130]+2381.30274221782*x[131]-6*x[213]-7*x[218]-10*x[223] == 0.0)
@constraint(m, e279, x[109]+471.299114292143*x[132]+87.3644508144726*x[133]+1199.55883169351*x[134]+1455.32236178753*x[135]+59.9123555503718*x[136]+379.038814816129*x[137]+1209.04864109044*x[138]+1788.49473840444*x[139]+938.567397231442*x[140]+2381.30274221782*x[141]-10*x[214]-6*x[219]-11*x[224] == 0.0)
@constraint(m, e280, x[110]+471.299114292143*x[142]+87.3644508144726*x[143]+1199.55883169351*x[144]+1455.32236178753*x[145]+59.9123555503718*x[146]+379.038814816129*x[147]+1209.04864109044*x[148]+1788.49473840444*x[149]+938.567397231442*x[150]+2381.30274221782*x[151]-7*x[215]-6*x[220]-7*x[225] == 0.0)
@constraint(m, e281, x[111]+471.299114292143*x[152]+87.3644508144726*x[153]+1199.55883169351*x[154]+1455.32236178753*x[155]+59.9123555503718*x[156]+379.038814816129*x[157]+1209.04864109044*x[158]+1788.49473840444*x[159]+938.567397231442*x[160]+2381.30274221782*x[161]-7*x[216]-4*x[221]-10*x[226] == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 
