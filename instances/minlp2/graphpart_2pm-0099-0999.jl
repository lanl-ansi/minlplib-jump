using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209, 210, 211, 212, 213, 214, 215, 216, 217, 218, 219, 220, 221, 222, 223, 224, 225, 226, 227, 228, 229, 230, 231, 232, 233, 234, 235, 236, 237, 238, 239, 240, 241, 242, 243]
@variable(m, b[b_Idx])
setcategory(b[35], :Bin)
setcategory(b[216], :Bin)
setcategory(b[230], :Bin)
setcategory(b[15], :Bin)
setcategory(b[228], :Bin)
setcategory(b[176], :Bin)
setcategory(b[133], :Bin)
setcategory(b[45], :Bin)
setcategory(b[169], :Bin)
setcategory(b[196], :Bin)
setcategory(b[180], :Bin)
setcategory(b[178], :Bin)
setcategory(b[232], :Bin)
setcategory(b[208], :Bin)
setcategory(b[64], :Bin)
setcategory(b[112], :Bin)
setcategory(b[21], :Bin)
setcategory(b[36], :Bin)
setcategory(b[243], :Bin)
setcategory(b[130], :Bin)
setcategory(b[87], :Bin)
setcategory(b[132], :Bin)
setcategory(b[211], :Bin)
setcategory(b[119], :Bin)
setcategory(b[79], :Bin)
setcategory(b[213], :Bin)
setcategory(b[16], :Bin)
setcategory(b[60], :Bin)
setcategory(b[159], :Bin)
setcategory(b[12], :Bin)
setcategory(b[227], :Bin)
setcategory(b[197], :Bin)
setcategory(b[235], :Bin)
setcategory(b[11], :Bin)
setcategory(b[19], :Bin)
setcategory(b[3], :Bin)
setcategory(b[193], :Bin)
setcategory(b[39], :Bin)
setcategory(b[4], :Bin)
setcategory(b[37], :Bin)
setcategory(b[88], :Bin)
setcategory(b[50], :Bin)
setcategory(b[192], :Bin)
setcategory(b[209], :Bin)
setcategory(b[97], :Bin)
setcategory(b[200], :Bin)
setcategory(b[188], :Bin)
setcategory(b[62], :Bin)
setcategory(b[113], :Bin)
setcategory(b[24], :Bin)
setcategory(b[10], :Bin)
setcategory(b[218], :Bin)
setcategory(b[220], :Bin)
setcategory(b[236], :Bin)
setcategory(b[162], :Bin)
setcategory(b[161], :Bin)
setcategory(b[224], :Bin)
setcategory(b[199], :Bin)
setcategory(b[75], :Bin)
setcategory(b[128], :Bin)
setcategory(b[167], :Bin)
setcategory(b[177], :Bin)
setcategory(b[70], :Bin)
setcategory(b[163], :Bin)
setcategory(b[41], :Bin)
setcategory(b[48], :Bin)
setcategory(b[23], :Bin)
setcategory(b[242], :Bin)
setcategory(b[28], :Bin)
setcategory(b[143], :Bin)
setcategory(b[90], :Bin)
setcategory(b[206], :Bin)
setcategory(b[229], :Bin)
setcategory(b[233], :Bin)
setcategory(b[84], :Bin)
setcategory(b[53], :Bin)
setcategory(b[116], :Bin)
setcategory(b[29], :Bin)
setcategory(b[61], :Bin)
setcategory(b[223], :Bin)
setcategory(b[89], :Bin)
setcategory(b[34], :Bin)
setcategory(b[145], :Bin)
setcategory(b[86], :Bin)
setcategory(b[114], :Bin)
setcategory(b[153], :Bin)
setcategory(b[13], :Bin)
setcategory(b[69], :Bin)
setcategory(b[144], :Bin)
setcategory(b[68], :Bin)
setcategory(b[240], :Bin)
setcategory(b[166], :Bin)
setcategory(b[47], :Bin)
setcategory(b[214], :Bin)
setcategory(b[138], :Bin)
setcategory(b[226], :Bin)
setcategory(b[151], :Bin)
setcategory(b[135], :Bin)
setcategory(b[108], :Bin)
setcategory(b[154], :Bin)
setcategory(b[76], :Bin)
setcategory(b[109], :Bin)
setcategory(b[174], :Bin)
setcategory(b[237], :Bin)
setcategory(b[155], :Bin)
setcategory(b[94], :Bin)
setcategory(b[149], :Bin)
setcategory(b[107], :Bin)
setcategory(b[181], :Bin)
setcategory(b[52], :Bin)
setcategory(b[139], :Bin)
setcategory(b[131], :Bin)
setcategory(b[241], :Bin)
setcategory(b[38], :Bin)
setcategory(b[71], :Bin)
setcategory(b[78], :Bin)
setcategory(b[215], :Bin)
setcategory(b[66], :Bin)
setcategory(b[80], :Bin)
setcategory(b[160], :Bin)
setcategory(b[49], :Bin)
setcategory(b[137], :Bin)
setcategory(b[185], :Bin)
setcategory(b[105], :Bin)
setcategory(b[164], :Bin)
setcategory(b[124], :Bin)
setcategory(b[54], :Bin)
setcategory(b[111], :Bin)
setcategory(b[22], :Bin)
setcategory(b[170], :Bin)
setcategory(b[239], :Bin)
setcategory(b[98], :Bin)
setcategory(b[219], :Bin)
setcategory(b[186], :Bin)
setcategory(b[77], :Bin)
setcategory(b[172], :Bin)
setcategory(b[46], :Bin)
setcategory(b[127], :Bin)
setcategory(b[56], :Bin)
setcategory(b[104], :Bin)
setcategory(b[171], :Bin)
setcategory(b[221], :Bin)
setcategory(b[74], :Bin)
setcategory(b[32], :Bin)
setcategory(b[92], :Bin)
setcategory(b[72], :Bin)
setcategory(b[126], :Bin)
setcategory(b[5], :Bin)
setcategory(b[129], :Bin)
setcategory(b[238], :Bin)
setcategory(b[190], :Bin)
setcategory(b[234], :Bin)
setcategory(b[212], :Bin)
setcategory(b[125], :Bin)
setcategory(b[14], :Bin)
setcategory(b[184], :Bin)
setcategory(b[43], :Bin)
setcategory(b[110], :Bin)
setcategory(b[231], :Bin)
setcategory(b[25], :Bin)
setcategory(b[183], :Bin)
setcategory(b[9], :Bin)
setcategory(b[117], :Bin)
setcategory(b[195], :Bin)
setcategory(b[83], :Bin)
setcategory(b[59], :Bin)
setcategory(b[204], :Bin)
setcategory(b[67], :Bin)
setcategory(b[175], :Bin)
setcategory(b[222], :Bin)
setcategory(b[93], :Bin)
setcategory(b[99], :Bin)
setcategory(b[198], :Bin)
setcategory(b[146], :Bin)
setcategory(b[123], :Bin)
setcategory(b[187], :Bin)
setcategory(b[202], :Bin)
setcategory(b[122], :Bin)
setcategory(b[121], :Bin)
setcategory(b[157], :Bin)
setcategory(b[147], :Bin)
setcategory(b[201], :Bin)
setcategory(b[156], :Bin)
setcategory(b[26], :Bin)
setcategory(b[73], :Bin)
setcategory(b[217], :Bin)
setcategory(b[118], :Bin)
setcategory(b[44], :Bin)
setcategory(b[158], :Bin)
setcategory(b[120], :Bin)
setcategory(b[85], :Bin)
setcategory(b[82], :Bin)
setcategory(b[42], :Bin)
setcategory(b[168], :Bin)
setcategory(b[106], :Bin)
setcategory(b[207], :Bin)
setcategory(b[81], :Bin)
setcategory(b[225], :Bin)
setcategory(b[141], :Bin)
setcategory(b[136], :Bin)
setcategory(b[150], :Bin)
setcategory(b[203], :Bin)
setcategory(b[95], :Bin)
setcategory(b[115], :Bin)
setcategory(b[189], :Bin)
setcategory(b[8], :Bin)
setcategory(b[33], :Bin)
setcategory(b[30], :Bin)
setcategory(b[173], :Bin)
setcategory(b[40], :Bin)
setcategory(b[58], :Bin)
setcategory(b[96], :Bin)
setcategory(b[57], :Bin)
setcategory(b[102], :Bin)
setcategory(b[51], :Bin)
setcategory(b[2], :Bin)
setcategory(b[100], :Bin)
setcategory(b[142], :Bin)
setcategory(b[20], :Bin)
setcategory(b[7], :Bin)
setcategory(b[65], :Bin)
setcategory(b[205], :Bin)
setcategory(b[165], :Bin)
setcategory(b[210], :Bin)
setcategory(b[101], :Bin)
setcategory(b[17], :Bin)
setcategory(b[6], :Bin)
setcategory(b[182], :Bin)
setcategory(b[1], :Bin)
setcategory(b[179], :Bin)
setcategory(b[191], :Bin)
setcategory(b[194], :Bin)
setcategory(b[134], :Bin)
setcategory(b[27], :Bin)
setcategory(b[18], :Bin)
setcategory(b[140], :Bin)
setcategory(b[31], :Bin)
setcategory(b[91], :Bin)
setcategory(b[152], :Bin)
setcategory(b[103], :Bin)
setcategory(b[55], :Bin)
setcategory(b[148], :Bin)
setcategory(b[63], :Bin)


# ----- Constraints ----- #
@constraint(m, e1, b[1]+b[2]+b[3] == 1.0)
@constraint(m, e2, b[4]+b[5]+b[6] == 1.0)
@constraint(m, e3, b[7]+b[8]+b[9] == 1.0)
@constraint(m, e4, b[10]+b[11]+b[12] == 1.0)
@constraint(m, e5, b[13]+b[14]+b[15] == 1.0)
@constraint(m, e6, b[16]+b[17]+b[18] == 1.0)
@constraint(m, e7, b[19]+b[20]+b[21] == 1.0)
@constraint(m, e8, b[22]+b[23]+b[24] == 1.0)
@constraint(m, e9, b[25]+b[26]+b[27] == 1.0)
@constraint(m, e10, b[28]+b[29]+b[30] == 1.0)
@constraint(m, e11, b[31]+b[32]+b[33] == 1.0)
@constraint(m, e12, b[34]+b[35]+b[36] == 1.0)
@constraint(m, e13, b[37]+b[38]+b[39] == 1.0)
@constraint(m, e14, b[40]+b[41]+b[42] == 1.0)
@constraint(m, e15, b[43]+b[44]+b[45] == 1.0)
@constraint(m, e16, b[46]+b[47]+b[48] == 1.0)
@constraint(m, e17, b[49]+b[50]+b[51] == 1.0)
@constraint(m, e18, b[52]+b[53]+b[54] == 1.0)
@constraint(m, e19, b[55]+b[56]+b[57] == 1.0)
@constraint(m, e20, b[58]+b[59]+b[60] == 1.0)
@constraint(m, e21, b[61]+b[62]+b[63] == 1.0)
@constraint(m, e22, b[64]+b[65]+b[66] == 1.0)
@constraint(m, e23, b[67]+b[68]+b[69] == 1.0)
@constraint(m, e24, b[70]+b[71]+b[72] == 1.0)
@constraint(m, e25, b[73]+b[74]+b[75] == 1.0)
@constraint(m, e26, b[76]+b[77]+b[78] == 1.0)
@constraint(m, e27, b[79]+b[80]+b[81] == 1.0)
@constraint(m, e28, b[82]+b[83]+b[84] == 1.0)
@constraint(m, e29, b[85]+b[86]+b[87] == 1.0)
@constraint(m, e30, b[88]+b[89]+b[90] == 1.0)
@constraint(m, e31, b[91]+b[92]+b[93] == 1.0)
@constraint(m, e32, b[94]+b[95]+b[96] == 1.0)
@constraint(m, e33, b[97]+b[98]+b[99] == 1.0)
@constraint(m, e34, b[100]+b[101]+b[102] == 1.0)
@constraint(m, e35, b[103]+b[104]+b[105] == 1.0)
@constraint(m, e36, b[106]+b[107]+b[108] == 1.0)
@constraint(m, e37, b[109]+b[110]+b[111] == 1.0)
@constraint(m, e38, b[112]+b[113]+b[114] == 1.0)
@constraint(m, e39, b[115]+b[116]+b[117] == 1.0)
@constraint(m, e40, b[118]+b[119]+b[120] == 1.0)
@constraint(m, e41, b[121]+b[122]+b[123] == 1.0)
@constraint(m, e42, b[124]+b[125]+b[126] == 1.0)
@constraint(m, e43, b[127]+b[128]+b[129] == 1.0)
@constraint(m, e44, b[130]+b[131]+b[132] == 1.0)
@constraint(m, e45, b[133]+b[134]+b[135] == 1.0)
@constraint(m, e46, b[136]+b[137]+b[138] == 1.0)
@constraint(m, e47, b[139]+b[140]+b[141] == 1.0)
@constraint(m, e48, b[142]+b[143]+b[144] == 1.0)
@constraint(m, e49, b[145]+b[146]+b[147] == 1.0)
@constraint(m, e50, b[148]+b[149]+b[150] == 1.0)
@constraint(m, e51, b[151]+b[152]+b[153] == 1.0)
@constraint(m, e52, b[154]+b[155]+b[156] == 1.0)
@constraint(m, e53, b[157]+b[158]+b[159] == 1.0)
@constraint(m, e54, b[160]+b[161]+b[162] == 1.0)
@constraint(m, e55, b[163]+b[164]+b[165] == 1.0)
@constraint(m, e56, b[166]+b[167]+b[168] == 1.0)
@constraint(m, e57, b[169]+b[170]+b[171] == 1.0)
@constraint(m, e58, b[172]+b[173]+b[174] == 1.0)
@constraint(m, e59, b[175]+b[176]+b[177] == 1.0)
@constraint(m, e60, b[178]+b[179]+b[180] == 1.0)
@constraint(m, e61, b[181]+b[182]+b[183] == 1.0)
@constraint(m, e62, b[184]+b[185]+b[186] == 1.0)
@constraint(m, e63, b[187]+b[188]+b[189] == 1.0)
@constraint(m, e64, b[190]+b[191]+b[192] == 1.0)
@constraint(m, e65, b[193]+b[194]+b[195] == 1.0)
@constraint(m, e66, b[196]+b[197]+b[198] == 1.0)
@constraint(m, e67, b[199]+b[200]+b[201] == 1.0)
@constraint(m, e68, b[202]+b[203]+b[204] == 1.0)
@constraint(m, e69, b[205]+b[206]+b[207] == 1.0)
@constraint(m, e70, b[208]+b[209]+b[210] == 1.0)
@constraint(m, e71, b[211]+b[212]+b[213] == 1.0)
@constraint(m, e72, b[214]+b[215]+b[216] == 1.0)
@constraint(m, e73, b[217]+b[218]+b[219] == 1.0)
@constraint(m, e74, b[220]+b[221]+b[222] == 1.0)
@constraint(m, e75, b[223]+b[224]+b[225] == 1.0)
@constraint(m, e76, b[226]+b[227]+b[228] == 1.0)
@constraint(m, e77, b[229]+b[230]+b[231] == 1.0)
@constraint(m, e78, b[232]+b[233]+b[234] == 1.0)
@constraint(m, e79, b[235]+b[236]+b[237] == 1.0)
@constraint(m, e80, b[238]+b[239]+b[240] == 1.0)
@constraint(m, e81, b[241]+b[242]+b[243] == 1.0)
@NLconstraint(m, e82, b[1]*b[25]-b[1]*b[4]+b[1]*b[28]+b[1]*b[217]-b[2]*b[5]+b[2]*b[26]+b[2]*b[29]+b[2]*b[218]-b[3]*b[6]+b[3]*b[27]+b[3]*b[30]+b[3]*b[219]-b[4]*b[7]-b[4]*b[31]+b[4]*b[220]-b[5]*b[8]-b[5]*b[32]+b[5]*b[221]-b[6]*b[9]-b[6]*b[33]+b[6]*b[222]-b[7]*b[10]+b[7]*b[34]-b[7]*b[223]-b[8]*b[11]+b[8]*b[35]-b[8]*b[224]-b[9]*b[12]+b[9]*b[36]-b[9]*b[225]-b[10]*b[13]-b[10]*b[37]+b[10]*b[226]-b[11]*b[14]-b[11]*b[38]+b[11]*b[227]-b[12]*b[15]-b[12]*b[39]+b[12]*b[228]-b[13]*b[16]-b[13]*b[40]-b[13]*b[229]-b[14]*b[17]-b[14]*b[41]-b[14]*b[230]-b[15]*b[18]-b[15]*b[42]-b[15]*b[231]+b[16]*b[19]-b[16]*b[43]+b[16]*b[232]+b[17]*b[20]-b[17]*b[44]+b[17]*b[233]+b[18]*b[21]-b[18]*b[45]+b[18]*b[234]-b[19]*b[22]-b[19]*b[46]-b[19]*b[235]-b[20]*b[23]-b[20]*b[47]-b[20]*b[236]-b[21]*b[24]-b[21]*b[48]-b[21]*b[237]+b[22]*b[25]+b[22]*b[49]+b[22]*b[238]+b[23]*b[26]+b[23]*b[50]+b[23]*b[239]+b[24]*b[27]+b[24]*b[51]+b[24]*b[240]-b[25]*b[52]-b[25]*b[241]-b[26]*b[53]-b[26]*b[242]-b[27]*b[54]-b[27]*b[243]+b[28]*b[31]+b[28]*b[52]+b[28]*b[55]+b[29]*b[32]+b[29]*b[53]+b[29]*b[56]+b[30]*b[33]+b[30]*b[54]+b[30]*b[57]+b[31]*b[34]-b[31]*b[58]+b[32]*b[35]-b[32]*b[59]+b[33]*b[36]-b[33]*b[60]+b[34]*b[37]+b[34]*b[61]+b[35]*b[38]+b[35]*b[62]+b[36]*b[39]+b[36]*b[63]+b[37]*b[40]-b[37]*b[64]+b[38]*b[41]-b[38]*b[65]+b[39]*b[42]-b[39]*b[66]+b[40]*b[43]+b[40]*b[67]+b[41]*b[44]+b[41]*b[68]+b[42]*b[45]+b[42]*b[69]+b[43]*b[46]-b[43]*b[70]+b[44]*b[47]-b[44]*b[71]+b[45]*b[48]-b[45]*b[72]-b[46]*b[49]-b[46]*b[73]-b[47]*b[50]-b[47]*b[74]-b[48]*b[51]-b[48]*b[75]-b[49]*b[52]-b[49]*b[76]-b[50]*b[53]-b[50]*b[77]-b[51]*b[54]-b[51]*b[78]-b[52]*b[79]-b[53]*b[80]-b[54]*b[81]-b[55]*b[58]+b[55]*b[79]-b[55]*b[82]-b[56]*b[59]+b[56]*b[80]-b[56]*b[83]-b[57]*b[60]+b[57]*b[81]-b[57]*b[84]+b[58]*b[61]-b[58]*b[85]+b[59]*b[62]-b[59]*b[86]+b[60]*b[63]-b[60]*b[87]-b[61]*b[64]+b[61]*b[88]-b[62]*b[65]+b[62]*b[89]-b[63]*b[66]+b[63]*b[90]-b[64]*b[67]-b[64]*b[91]-b[65]*b[68]-b[65]*b[92]-b[66]*b[69]-b[66]*b[93]+b[67]*b[70]-b[67]*b[94]+b[68]*b[71]-b[68]*b[95]+b[69]*b[72]-b[69]*b[96]+b[70]*b[73]-b[70]*b[97]+b[71]*b[74]-b[71]*b[98]+b[72]*b[75]-b[72]*b[99]+b[73]*b[76]+b[73]*b[100]+b[74]*b[77]+b[74]*b[101]+b[75]*b[78]+b[75]*b[102]+b[76]*b[79]+b[76]*b[103]+b[77]*b[80]+b[77]*b[104]+b[78]*b[81]+b[78]*b[105]+b[79]*b[106]+b[80]*b[107]+b[81]*b[108]+b[82]*b[85]-b[82]*b[106]+b[82]*b[109]+b[83]*b[86]-b[83]*b[107]+b[83]*b[110]+b[84]*b[87]-b[84]*b[108]+b[84]*b[111]-b[85]*b[88]-b[85]*b[112]-b[86]*b[89]-b[86]*b[113]-b[87]*b[90]-b[87]*b[114]-b[88]*b[91]-b[88]*b[115]-b[89]*b[92]-b[89]*b[116]-b[90]*b[93]-b[90]*b[117]-b[91]*b[94]+b[91]*b[118]-b[92]*b[95]+b[92]*b[119]-b[93]*b[96]+b[93]*b[120]-b[94]*b[97]+b[94]*b[121]-b[95]*b[98]+b[95]*b[122]-b[96]*b[99]+b[96]*b[123]-b[97]*b[100]+b[97]*b[124]-b[98]*b[101]+b[98]*b[125]-b[99]*b[102]+b[99]*b[126]+b[100]*b[103]-b[100]*b[127]+b[101]*b[104]-b[101]*b[128]+b[102]*b[105]-b[102]*b[129]+b[103]*b[106]-b[103]*b[130]+b[104]*b[107]-b[104]*b[131]+b[105]*b[108]-b[105]*b[132]+b[106]*b[133]+b[107]*b[134]+b[108]*b[135]-b[109]*b[112]-b[109]*b[133]-b[109]*b[136]-b[110]*b[113]-b[110]*b[134]-b[110]*b[137]-b[111]*b[114]-b[111]*b[135]-b[111]*b[138]+b[112]*b[115]+b[112]*b[139]+b[113]*b[116]+b[113]*b[140]+b[114]*b[117]+b[114]*b[141]-b[115]*b[118]-b[115]*b[142]-b[116]*b[119]-b[116]*b[143]-b[117]*b[120]-b[117]*b[144]+b[118]*b[121]+b[118]*b[145]+b[119]*b[122]+b[119]*b[146]+b[120]*b[123]+b[120]*b[147]-b[121]*b[124]-b[121]*b[148]-b[122]*b[125]-b[122]*b[149]-b[123]*b[126]-b[123]*b[150]-b[124]*b[127]+b[124]*b[151]-b[125]*b[128]+b[125]*b[152]-b[126]*b[129]+b[126]*b[153]-b[127]*b[130]+b[127]*b[154]-b[128]*b[131]+b[128]*b[155]-b[129]*b[132]+b[129]*b[156]+b[130]*b[133]+b[130]*b[157]+b[131]*b[134]+b[131]*b[158]+b[132]*b[135]+b[132]*b[159]+b[133]*b[160]+b[134]*b[161]+b[135]*b[162]-b[136]*b[139]-b[136]*b[160]+b[136]*b[163]-b[137]*b[140]-b[137]*b[161]+b[137]*b[164]-b[138]*b[141]-b[138]*b[162]+b[138]*b[165]-b[139]*b[142]+b[139]*b[166]-b[140]*b[143]+b[140]*b[167]-b[141]*b[144]+b[141]*b[168]-b[142]*b[145]+b[142]*b[169]-b[143]*b[146]+b[143]*b[170]-b[144]*b[147]+b[144]*b[171]-b[145]*b[148]+b[145]*b[172]-b[146]*b[149]+b[146]*b[173]-b[147]*b[150]+b[147]*b[174]-b[148]*b[151]-b[148]*b[175]-b[149]*b[152]-b[149]*b[176]-b[150]*b[153]-b[150]*b[177]+b[151]*b[154]+b[151]*b[178]+b[152]*b[155]+b[152]*b[179]+b[153]*b[156]+b[153]*b[180]-b[154]*b[157]+b[154]*b[181]-b[155]*b[158]+b[155]*b[182]-b[156]*b[159]+b[156]*b[183]+b[157]*b[160]+b[157]*b[184]+b[158]*b[161]+b[158]*b[185]+b[159]*b[162]+b[159]*b[186]+b[160]*b[187]+b[161]*b[188]+b[162]*b[189]-b[163]*b[166]+b[163]*b[187]+b[163]*b[190]-b[164]*b[167]+b[164]*b[188]+b[164]*b[191]-b[165]*b[168]+b[165]*b[189]+b[165]*b[192]+b[166]*b[169]+b[166]*b[193]+b[167]*b[170]+b[167]*b[194]+b[168]*b[171]+b[168]*b[195]-b[169]*b[172]+b[169]*b[196]-b[170]*b[173]+b[170]*b[197]-b[171]*b[174]+b[171]*b[198]+b[172]*b[175]-b[172]*b[199]+b[173]*b[176]-b[173]*b[200]+b[174]*b[177]-b[174]*b[201]-b[175]*b[178]+b[175]*b[202]-b[176]*b[179]+b[176]*b[203]-b[177]*b[180]+b[177]*b[204]-b[178]*b[181]-b[178]*b[205]-b[179]*b[182]-b[179]*b[206]-b[180]*b[183]-b[180]*b[207]+b[181]*b[184]+b[181]*b[208]+b[182]*b[185]+b[182]*b[209]+b[183]*b[186]+b[183]*b[210]+b[184]*b[187]+b[184]*b[211]+b[185]*b[188]+b[185]*b[212]+b[186]*b[189]+b[186]*b[213]-b[187]*b[214]-b[188]*b[215]-b[189]*b[216]-b[190]*b[193]-b[190]*b[214]+b[190]*b[217]-b[191]*b[194]-b[191]*b[215]+b[191]*b[218]-b[192]*b[195]-b[192]*b[216]+b[192]*b[219]-b[193]*b[196]+b[193]*b[220]-b[194]*b[197]+b[194]*b[221]-b[195]*b[198]+b[195]*b[222]+b[196]*b[199]+b[196]*b[223]+b[197]*b[200]+b[197]*b[224]+b[198]*b[201]+b[198]*b[225]+b[199]*b[202]+b[199]*b[226]+b[200]*b[203]+b[200]*b[227]+b[201]*b[204]+b[201]*b[228]-b[202]*b[205]+b[202]*b[229]-b[203]*b[206]+b[203]*b[230]-b[204]*b[207]+b[204]*b[231]+b[205]*b[208]-b[205]*b[232]+b[206]*b[209]-b[206]*b[233]+b[207]*b[210]-b[207]*b[234]-b[208]*b[211]-b[208]*b[235]-b[209]*b[212]-b[209]*b[236]-b[210]*b[213]-b[210]*b[237]-b[211]*b[214]-b[211]*b[238]-b[212]*b[215]-b[212]*b[239]-b[213]*b[216]-b[213]*b[240]+b[214]*b[241]+b[215]*b[242]+b[216]*b[243]-b[217]*b[220]+b[217]*b[241]-b[218]*b[221]+b[218]*b[242]-b[219]*b[222]+b[219]*b[243]-b[220]*b[223]-b[221]*b[224]-b[222]*b[225]+b[223]*b[226]+b[224]*b[227]+b[225]*b[228]-b[226]*b[229]-b[227]*b[230]-b[228]*b[231]+b[229]*b[232]+b[230]*b[233]+b[231]*b[234]-b[232]*b[235]-b[233]*b[236]-b[234]*b[237]-b[235]*b[238]-b[236]*b[239]-b[237]*b[240]-b[238]*b[241]-b[239]*b[242]-b[240]*b[243]-objvar == 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 