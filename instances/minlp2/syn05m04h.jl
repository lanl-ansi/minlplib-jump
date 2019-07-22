using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169]
@variable(m, x[x_Idx])
b_Idx = Any[170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196, 197, 198, 199, 200, 201, 202, 203, 204, 205, 206, 207, 208, 209]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[146], 0.0)
setlowerbound(x[62], 0.0)
setlowerbound(x[114], 0.0)
setlowerbound(x[132], 0.0)
setlowerbound(x[154], 0.0)
setlowerbound(x[164], 0.0)
setlowerbound(x[143], 0.0)
setlowerbound(x[91], 0.0)
setlowerbound(x[59], 0.0)
setlowerbound(x[74], 0.0)
setlowerbound(x[165], 0.0)
setlowerbound(x[88], 0.0)
setlowerbound(x[141], 0.0)
setlowerbound(x[94], 0.0)
setlowerbound(x[144], 0.0)
setlowerbound(x[63], 0.0)
setlowerbound(x[145], 0.0)
setlowerbound(x[55], 0.0)
setlowerbound(x[120], 0.0)
setlowerbound(x[160], 0.0)
setlowerbound(x[72], 0.0)
setlowerbound(x[80], 0.0)
setlowerbound(x[103], 0.0)
setlowerbound(x[75], 0.0)
setlowerbound(x[162], 0.0)
setlowerbound(x[116], 0.0)
setlowerbound(x[95], 0.0)
setlowerbound(x[50], 0.0)
setlowerbound(x[99], 0.0)
setlowerbound(x[169], 0.0)
setlowerbound(x[60], 0.0)
setlowerbound(x[148], 0.0)
setlowerbound(x[150], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[84], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[73], 0.0)
setlowerbound(x[101], 0.0)
setlowerbound(x[136], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[42], 0.0)
setlowerbound(x[151], 0.0)
setlowerbound(x[147], 0.0)
setlowerbound(x[138], 0.0)
setlowerbound(x[77], 0.0)
setlowerbound(x[92], 0.0)
setlowerbound(x[111], 0.0)
setlowerbound(x[54], 0.0)
setlowerbound(x[137], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[87], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[58], 0.0)
setlowerbound(x[142], 0.0)
setlowerbound(x[53], 0.0)
setlowerbound(x[128], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[161], 0.0)
setlowerbound(x[67], 0.0)
setlowerbound(x[156], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[44], 0.0)
setlowerbound(x[47], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[123], 0.0)
setlowerbound(x[112], 0.0)
setlowerbound(x[115], 0.0)
setlowerbound(x[119], 0.0)
setlowerbound(x[166], 0.0)
setlowerbound(x[157], 0.0)
setlowerbound(x[46], 0.0)
setlowerbound(x[39], 0.0)
setlowerbound(x[163], 0.0)
setlowerbound(x[133], 0.0)
setlowerbound(x[65], 0.0)
setlowerbound(x[76], 0.0)
setlowerbound(x[117], 0.0)
setlowerbound(x[85], 0.0)
setlowerbound(x[89], 0.0)
setlowerbound(x[140], 0.0)
setlowerbound(x[153], 0.0)
setlowerbound(x[105], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[113], 0.0)
setlowerbound(x[130], 0.0)
setlowerbound(x[100], 0.0)
setlowerbound(x[69], 0.0)
setlowerbound(x[71], 0.0)
setlowerbound(x[36], 0.0)
setlowerbound(x[131], 0.0)
setlowerbound(x[96], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[82], 0.0)
setlowerbound(x[52], 0.0)
setlowerbound(x[49], 0.0)
setlowerbound(x[121], 0.0)
setlowerbound(x[152], 0.0)
setlowerbound(x[86], 0.0)
setlowerbound(x[79], 0.0)
setlowerbound(x[45], 0.0)
setlowerbound(x[98], 0.0)
setlowerbound(x[158], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[90], 0.0)
setlowerbound(x[68], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[149], 0.0)
setlowerbound(x[51], 0.0)
setlowerbound(x[125], 0.0)
setlowerbound(x[70], 0.0)
setlowerbound(x[83], 0.0)
setlowerbound(x[167], 0.0)
setlowerbound(x[102], 0.0)
setlowerbound(x[118], 0.0)
setlowerbound(x[93], 0.0)
setlowerbound(x[78], 0.0)
setlowerbound(x[110], 0.0)
setlowerbound(x[56], 0.0)
setlowerbound(x[155], 0.0)
setlowerbound(x[106], 0.0)
setlowerbound(x[81], 0.0)
setlowerbound(x[43], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[134], 0.0)
setlowerbound(x[57], 0.0)
setlowerbound(x[122], 0.0)
setlowerbound(x[129], 0.0)
setlowerbound(x[41], 0.0)
setlowerbound(x[104], 0.0)
setlowerbound(x[139], 0.0)
setlowerbound(x[126], 0.0)
setlowerbound(x[107], 0.0)
setlowerbound(x[66], 0.0)
setlowerbound(x[168], 0.0)
setlowerbound(x[40], 0.0)
setlowerbound(x[61], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[64], 0.0)
setlowerbound(x[97], 0.0)
setlowerbound(x[127], 0.0)
setlowerbound(x[124], 0.0)
setlowerbound(x[159], 0.0)
setlowerbound(x[109], 0.0)
setlowerbound(x[135], 0.0)
setlowerbound(x[48], 0.0)
setlowerbound(x[108], 0.0)
setupperbound(x[22], 40.0)
setupperbound(x[23], 40.0)
setupperbound(x[24], 40.0)
setupperbound(x[25], 40.0)
setupperbound(x[66], 30.0)
setupperbound(x[67], 30.0)
setupperbound(x[68], 30.0)
setupperbound(x[69], 30.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar+x[22]+x[23]+x[24]+x[25]-5*x[46]-10*x[47]-5*x[48]-10*x[49]+2*x[66]+x[67]+2*x[68]+x[69]-80*x[70]-90*x[71]-120*x[72]-100*x[73]-285*x[74]-390*x[75]-350*x[76]-300*x[77]-290*x[78]-405*x[79]-190*x[80]-340*x[81]+5*b[190]+4*b[191]+6*b[192]+3*b[193]+8*b[194]+7*b[195]+6*b[196]+5*b[197]+6*b[198]+9*b[199]+4*b[200]+3*b[201]+10*b[202]+9*b[203]+5*b[204]+6*b[205]+6*b[206]+10*b[207]+6*b[208]+9*b[209] == 0.0)
@constraint(m, e2, x[22]-x[26]-x[30] == 0.0)
@constraint(m, e3, x[23]-x[27]-x[31] == 0.0)
@constraint(m, e4, x[24]-x[28]-x[32] == 0.0)
@constraint(m, e5, x[25]-x[29]-x[33] == 0.0)
@constraint(m, e6, -x[34]-x[38]+x[42] == 0.0)
@constraint(m, e7, -x[35]-x[39]+x[43] == 0.0)
@constraint(m, e8, -x[36]-x[40]+x[44] == 0.0)
@constraint(m, e9, -x[37]-x[41]+x[45] == 0.0)
@constraint(m, e10, x[42]-x[46]-x[50] == 0.0)
@constraint(m, e11, x[43]-x[47]-x[51] == 0.0)
@constraint(m, e12, x[44]-x[48]-x[52] == 0.0)
@constraint(m, e13, x[45]-x[49]-x[53] == 0.0)
@constraint(m, e14, x[50]-x[54]-x[58]-x[62] == 0.0)
@constraint(m, e15, x[51]-x[55]-x[59]-x[63] == 0.0)
@constraint(m, e16, x[52]-x[56]-x[60]-x[64] == 0.0)
@constraint(m, e17, x[53]-x[57]-x[61]-x[65] == 0.0)
@NLconstraint(m, e18, (x[98]/(1e-6+b[170])-log(1+x[82]/(1e-6+b[170])))*(1e-6+b[170]) <= 0.0)
@NLconstraint(m, e19, (x[99]/(1e-6+b[171])-log(1+x[83]/(1e-6+b[171])))*(1e-6+b[171]) <= 0.0)
@NLconstraint(m, e20, (x[100]/(1e-6+b[172])-log(1+x[84]/(1e-6+b[172])))*(1e-6+b[172]) <= 0.0)
@NLconstraint(m, e21, (x[101]/(1e-6+b[173])-log(1+x[85]/(1e-6+b[173])))*(1e-6+b[173]) <= 0.0)
@constraint(m, e22, x[86] == 0.0)
@constraint(m, e23, x[87] == 0.0)
@constraint(m, e24, x[88] == 0.0)
@constraint(m, e25, x[89] == 0.0)
@constraint(m, e26, x[102] == 0.0)
@constraint(m, e27, x[103] == 0.0)
@constraint(m, e28, x[104] == 0.0)
@constraint(m, e29, x[105] == 0.0)
@constraint(m, e30, x[26]-x[82]-x[86] == 0.0)
@constraint(m, e31, x[27]-x[83]-x[87] == 0.0)
@constraint(m, e32, x[28]-x[84]-x[88] == 0.0)
@constraint(m, e33, x[29]-x[85]-x[89] == 0.0)
@constraint(m, e34, x[34]-x[98]-x[102] == 0.0)
@constraint(m, e35, x[35]-x[99]-x[103] == 0.0)
@constraint(m, e36, x[36]-x[100]-x[104] == 0.0)
@constraint(m, e37, x[37]-x[101]-x[105] == 0.0)
@constraint(m, e38, x[82]-40*b[170] <= 0.0)
@constraint(m, e39, x[83]-40*b[171] <= 0.0)
@constraint(m, e40, x[84]-40*b[172] <= 0.0)
@constraint(m, e41, x[85]-40*b[173] <= 0.0)
@constraint(m, e42, x[86]+40*b[170] <= 40.0)
@constraint(m, e43, x[87]+40*b[171] <= 40.0)
@constraint(m, e44, x[88]+40*b[172] <= 40.0)
@constraint(m, e45, x[89]+40*b[173] <= 40.0)
@constraint(m, e46, x[98]-3.71357206670431*b[170] <= 0.0)
@constraint(m, e47, x[99]-3.71357206670431*b[171] <= 0.0)
@constraint(m, e48, x[100]-3.71357206670431*b[172] <= 0.0)
@constraint(m, e49, x[101]-3.71357206670431*b[173] <= 0.0)
@constraint(m, e50, x[102]+3.71357206670431*b[170] <= 3.71357206670431)
@constraint(m, e51, x[103]+3.71357206670431*b[171] <= 3.71357206670431)
@constraint(m, e52, x[104]+3.71357206670431*b[172] <= 3.71357206670431)
@constraint(m, e53, x[105]+3.71357206670431*b[173] <= 3.71357206670431)
@NLconstraint(m, e54, (x[106]/(1e-6+b[174])-1.2*log(1+x[90]/(1e-6+b[174])))*(1e-6+b[174]) <= 0.0)
@NLconstraint(m, e55, (x[107]/(1e-6+b[175])-1.2*log(1+x[91]/(1e-6+b[175])))*(1e-6+b[175]) <= 0.0)
@NLconstraint(m, e56, (x[108]/(1e-6+b[176])-1.2*log(1+x[92]/(1e-6+b[176])))*(1e-6+b[176]) <= 0.0)
@NLconstraint(m, e57, (x[109]/(1e-6+b[177])-1.2*log(1+x[93]/(1e-6+b[177])))*(1e-6+b[177]) <= 0.0)
@constraint(m, e58, x[94] == 0.0)
@constraint(m, e59, x[95] == 0.0)
@constraint(m, e60, x[96] == 0.0)
@constraint(m, e61, x[97] == 0.0)
@constraint(m, e62, x[110] == 0.0)
@constraint(m, e63, x[111] == 0.0)
@constraint(m, e64, x[112] == 0.0)
@constraint(m, e65, x[113] == 0.0)
@constraint(m, e66, x[30]-x[90]-x[94] == 0.0)
@constraint(m, e67, x[31]-x[91]-x[95] == 0.0)
@constraint(m, e68, x[32]-x[92]-x[96] == 0.0)
@constraint(m, e69, x[33]-x[93]-x[97] == 0.0)
@constraint(m, e70, x[38]-x[106]-x[110] == 0.0)
@constraint(m, e71, x[39]-x[107]-x[111] == 0.0)
@constraint(m, e72, x[40]-x[108]-x[112] == 0.0)
@constraint(m, e73, x[41]-x[109]-x[113] == 0.0)
@constraint(m, e74, x[90]-40*b[174] <= 0.0)
@constraint(m, e75, x[91]-40*b[175] <= 0.0)
@constraint(m, e76, x[92]-40*b[176] <= 0.0)
@constraint(m, e77, x[93]-40*b[177] <= 0.0)
@constraint(m, e78, x[94]+40*b[174] <= 40.0)
@constraint(m, e79, x[95]+40*b[175] <= 40.0)
@constraint(m, e80, x[96]+40*b[176] <= 40.0)
@constraint(m, e81, x[97]+40*b[177] <= 40.0)
@constraint(m, e82, x[106]-4.45628648004517*b[174] <= 0.0)
@constraint(m, e83, x[107]-4.45628648004517*b[175] <= 0.0)
@constraint(m, e84, x[108]-4.45628648004517*b[176] <= 0.0)
@constraint(m, e85, x[109]-4.45628648004517*b[177] <= 0.0)
@constraint(m, e86, x[110]+4.45628648004517*b[174] <= 4.45628648004517)
@constraint(m, e87, x[111]+4.45628648004517*b[175] <= 4.45628648004517)
@constraint(m, e88, x[112]+4.45628648004517*b[176] <= 4.45628648004517)
@constraint(m, e89, x[113]+4.45628648004517*b[177] <= 4.45628648004517)
@constraint(m, e90, -0.75*x[114]+x[146] == 0.0)
@constraint(m, e91, -0.75*x[115]+x[147] == 0.0)
@constraint(m, e92, -0.75*x[116]+x[148] == 0.0)
@constraint(m, e93, -0.75*x[117]+x[149] == 0.0)
@constraint(m, e94, x[118] == 0.0)
@constraint(m, e95, x[119] == 0.0)
@constraint(m, e96, x[120] == 0.0)
@constraint(m, e97, x[121] == 0.0)
@constraint(m, e98, x[150] == 0.0)
@constraint(m, e99, x[151] == 0.0)
@constraint(m, e100, x[152] == 0.0)
@constraint(m, e101, x[153] == 0.0)
@constraint(m, e102, x[54]-x[114]-x[118] == 0.0)
@constraint(m, e103, x[55]-x[115]-x[119] == 0.0)
@constraint(m, e104, x[56]-x[116]-x[120] == 0.0)
@constraint(m, e105, x[57]-x[117]-x[121] == 0.0)
@constraint(m, e106, x[70]-x[146]-x[150] == 0.0)
@constraint(m, e107, x[71]-x[147]-x[151] == 0.0)
@constraint(m, e108, x[72]-x[148]-x[152] == 0.0)
@constraint(m, e109, x[73]-x[149]-x[153] == 0.0)
@constraint(m, e110, x[114]-4.45628648004517*b[178] <= 0.0)
@constraint(m, e111, x[115]-4.45628648004517*b[179] <= 0.0)
@constraint(m, e112, x[116]-4.45628648004517*b[180] <= 0.0)
@constraint(m, e113, x[117]-4.45628648004517*b[181] <= 0.0)
@constraint(m, e114, x[118]+4.45628648004517*b[178] <= 4.45628648004517)
@constraint(m, e115, x[119]+4.45628648004517*b[179] <= 4.45628648004517)
@constraint(m, e116, x[120]+4.45628648004517*b[180] <= 4.45628648004517)
@constraint(m, e117, x[121]+4.45628648004517*b[181] <= 4.45628648004517)
@constraint(m, e118, x[146]-3.34221486003388*b[178] <= 0.0)
@constraint(m, e119, x[147]-3.34221486003388*b[179] <= 0.0)
@constraint(m, e120, x[148]-3.34221486003388*b[180] <= 0.0)
@constraint(m, e121, x[149]-3.34221486003388*b[181] <= 0.0)
@constraint(m, e122, x[150]+3.34221486003388*b[178] <= 3.34221486003388)
@constraint(m, e123, x[151]+3.34221486003388*b[179] <= 3.34221486003388)
@constraint(m, e124, x[152]+3.34221486003388*b[180] <= 3.34221486003388)
@constraint(m, e125, x[153]+3.34221486003388*b[181] <= 3.34221486003388)
@NLconstraint(m, e126, (x[154]/(1e-6+b[182])-1.5*log(1+x[122]/(1e-6+b[182])))*(1e-6+b[182]) <= 0.0)
@NLconstraint(m, e127, (x[155]/(1e-6+b[183])-1.5*log(1+x[123]/(1e-6+b[183])))*(1e-6+b[183]) <= 0.0)
@NLconstraint(m, e128, (x[156]/(1e-6+b[184])-1.5*log(1+x[124]/(1e-6+b[184])))*(1e-6+b[184]) <= 0.0)
@NLconstraint(m, e129, (x[157]/(1e-6+b[185])-1.5*log(1+x[125]/(1e-6+b[185])))*(1e-6+b[185]) <= 0.0)
@constraint(m, e130, x[126] == 0.0)
@constraint(m, e131, x[127] == 0.0)
@constraint(m, e132, x[128] == 0.0)
@constraint(m, e133, x[129] == 0.0)
@constraint(m, e134, x[158] == 0.0)
@constraint(m, e135, x[159] == 0.0)
@constraint(m, e136, x[160] == 0.0)
@constraint(m, e137, x[161] == 0.0)
@constraint(m, e138, x[58]-x[122]-x[126] == 0.0)
@constraint(m, e139, x[59]-x[123]-x[127] == 0.0)
@constraint(m, e140, x[60]-x[124]-x[128] == 0.0)
@constraint(m, e141, x[61]-x[125]-x[129] == 0.0)
@constraint(m, e142, x[74]-x[154]-x[158] == 0.0)
@constraint(m, e143, x[75]-x[155]-x[159] == 0.0)
@constraint(m, e144, x[76]-x[156]-x[160] == 0.0)
@constraint(m, e145, x[77]-x[157]-x[161] == 0.0)
@constraint(m, e146, x[122]-4.45628648004517*b[182] <= 0.0)
@constraint(m, e147, x[123]-4.45628648004517*b[183] <= 0.0)
@constraint(m, e148, x[124]-4.45628648004517*b[184] <= 0.0)
@constraint(m, e149, x[125]-4.45628648004517*b[185] <= 0.0)
@constraint(m, e150, x[126]+4.45628648004517*b[182] <= 4.45628648004517)
@constraint(m, e151, x[127]+4.45628648004517*b[183] <= 4.45628648004517)
@constraint(m, e152, x[128]+4.45628648004517*b[184] <= 4.45628648004517)
@constraint(m, e153, x[129]+4.45628648004517*b[185] <= 4.45628648004517)
@constraint(m, e154, x[154]-2.54515263975353*b[182] <= 0.0)
@constraint(m, e155, x[155]-2.54515263975353*b[183] <= 0.0)
@constraint(m, e156, x[156]-2.54515263975353*b[184] <= 0.0)
@constraint(m, e157, x[157]-2.54515263975353*b[185] <= 0.0)
@constraint(m, e158, x[158]+2.54515263975353*b[182] <= 2.54515263975353)
@constraint(m, e159, x[159]+2.54515263975353*b[183] <= 2.54515263975353)
@constraint(m, e160, x[160]+2.54515263975353*b[184] <= 2.54515263975353)
@constraint(m, e161, x[161]+2.54515263975353*b[185] <= 2.54515263975353)
@constraint(m, e162, -x[130]+x[162] == 0.0)
@constraint(m, e163, -x[131]+x[163] == 0.0)
@constraint(m, e164, -x[132]+x[164] == 0.0)
@constraint(m, e165, -x[133]+x[165] == 0.0)
@constraint(m, e166, -0.5*x[138]+x[162] == 0.0)
@constraint(m, e167, -0.5*x[139]+x[163] == 0.0)
@constraint(m, e168, -0.5*x[140]+x[164] == 0.0)
@constraint(m, e169, -0.5*x[141]+x[165] == 0.0)
@constraint(m, e170, x[134] == 0.0)
@constraint(m, e171, x[135] == 0.0)
@constraint(m, e172, x[136] == 0.0)
@constraint(m, e173, x[137] == 0.0)
@constraint(m, e174, x[142] == 0.0)
@constraint(m, e175, x[143] == 0.0)
@constraint(m, e176, x[144] == 0.0)
@constraint(m, e177, x[145] == 0.0)
@constraint(m, e178, x[166] == 0.0)
@constraint(m, e179, x[167] == 0.0)
@constraint(m, e180, x[168] == 0.0)
@constraint(m, e181, x[169] == 0.0)
@constraint(m, e182, x[62]-x[130]-x[134] == 0.0)
@constraint(m, e183, x[63]-x[131]-x[135] == 0.0)
@constraint(m, e184, x[64]-x[132]-x[136] == 0.0)
@constraint(m, e185, x[65]-x[133]-x[137] == 0.0)
@constraint(m, e186, x[66]-x[138]-x[142] == 0.0)
@constraint(m, e187, x[67]-x[139]-x[143] == 0.0)
@constraint(m, e188, x[68]-x[140]-x[144] == 0.0)
@constraint(m, e189, x[69]-x[141]-x[145] == 0.0)
@constraint(m, e190, x[78]-x[162]-x[166] == 0.0)
@constraint(m, e191, x[79]-x[163]-x[167] == 0.0)
@constraint(m, e192, x[80]-x[164]-x[168] == 0.0)
@constraint(m, e193, x[81]-x[165]-x[169] == 0.0)
@constraint(m, e194, x[130]-4.45628648004517*b[186] <= 0.0)
@constraint(m, e195, x[131]-4.45628648004517*b[187] <= 0.0)
@constraint(m, e196, x[132]-4.45628648004517*b[188] <= 0.0)
@constraint(m, e197, x[133]-4.45628648004517*b[189] <= 0.0)
@constraint(m, e198, x[134]+4.45628648004517*b[186] <= 4.45628648004517)
@constraint(m, e199, x[135]+4.45628648004517*b[187] <= 4.45628648004517)
@constraint(m, e200, x[136]+4.45628648004517*b[188] <= 4.45628648004517)
@constraint(m, e201, x[137]+4.45628648004517*b[189] <= 4.45628648004517)
@constraint(m, e202, x[138]-30*b[186] <= 0.0)
@constraint(m, e203, x[139]-30*b[187] <= 0.0)
@constraint(m, e204, x[140]-30*b[188] <= 0.0)
@constraint(m, e205, x[141]-30*b[189] <= 0.0)
@constraint(m, e206, x[142]+30*b[186] <= 30.0)
@constraint(m, e207, x[143]+30*b[187] <= 30.0)
@constraint(m, e208, x[144]+30*b[188] <= 30.0)
@constraint(m, e209, x[145]+30*b[189] <= 30.0)
@constraint(m, e210, x[162]-15*b[186] <= 0.0)
@constraint(m, e211, x[163]-15*b[187] <= 0.0)
@constraint(m, e212, x[164]-15*b[188] <= 0.0)
@constraint(m, e213, x[165]-15*b[189] <= 0.0)
@constraint(m, e214, x[166]+15*b[186] <= 15.0)
@constraint(m, e215, x[167]+15*b[187] <= 15.0)
@constraint(m, e216, x[168]+15*b[188] <= 15.0)
@constraint(m, e217, x[169]+15*b[189] <= 15.0)
@constraint(m, e218, x[2]+5*b[190] == 0.0)
@constraint(m, e219, x[3]+4*b[191] == 0.0)
@constraint(m, e220, x[4]+6*b[192] == 0.0)
@constraint(m, e221, x[5]+3*b[193] == 0.0)
@constraint(m, e222, x[6]+8*b[194] == 0.0)
@constraint(m, e223, x[7]+7*b[195] == 0.0)
@constraint(m, e224, x[8]+6*b[196] == 0.0)
@constraint(m, e225, x[9]+5*b[197] == 0.0)
@constraint(m, e226, x[10]+6*b[198] == 0.0)
@constraint(m, e227, x[11]+9*b[199] == 0.0)
@constraint(m, e228, x[12]+4*b[200] == 0.0)
@constraint(m, e229, x[13]+3*b[201] == 0.0)
@constraint(m, e230, x[14]+10*b[202] == 0.0)
@constraint(m, e231, x[15]+9*b[203] == 0.0)
@constraint(m, e232, x[16]+5*b[204] == 0.0)
@constraint(m, e233, x[17]+6*b[205] == 0.0)
@constraint(m, e234, x[18]+6*b[206] == 0.0)
@constraint(m, e235, x[19]+10*b[207] == 0.0)
@constraint(m, e236, x[20]+6*b[208] == 0.0)
@constraint(m, e237, x[21]+9*b[209] == 0.0)
@constraint(m, e238, b[170]-b[171] <= 0.0)
@constraint(m, e239, b[170]-b[172] <= 0.0)
@constraint(m, e240, b[170]-b[173] <= 0.0)
@constraint(m, e241, b[171]-b[172] <= 0.0)
@constraint(m, e242, b[171]-b[173] <= 0.0)
@constraint(m, e243, b[172]-b[173] <= 0.0)
@constraint(m, e244, b[174]-b[175] <= 0.0)
@constraint(m, e245, b[174]-b[176] <= 0.0)
@constraint(m, e246, b[174]-b[177] <= 0.0)
@constraint(m, e247, b[175]-b[176] <= 0.0)
@constraint(m, e248, b[175]-b[177] <= 0.0)
@constraint(m, e249, b[176]-b[177] <= 0.0)
@constraint(m, e250, b[178]-b[179] <= 0.0)
@constraint(m, e251, b[178]-b[180] <= 0.0)
@constraint(m, e252, b[178]-b[181] <= 0.0)
@constraint(m, e253, b[179]-b[180] <= 0.0)
@constraint(m, e254, b[179]-b[181] <= 0.0)
@constraint(m, e255, b[180]-b[181] <= 0.0)
@constraint(m, e256, b[182]-b[183] <= 0.0)
@constraint(m, e257, b[182]-b[184] <= 0.0)
@constraint(m, e258, b[182]-b[185] <= 0.0)
@constraint(m, e259, b[183]-b[184] <= 0.0)
@constraint(m, e260, b[183]-b[185] <= 0.0)
@constraint(m, e261, b[184]-b[185] <= 0.0)
@constraint(m, e262, b[186]-b[187] <= 0.0)
@constraint(m, e263, b[186]-b[188] <= 0.0)
@constraint(m, e264, b[186]-b[189] <= 0.0)
@constraint(m, e265, b[187]-b[188] <= 0.0)
@constraint(m, e266, b[187]-b[189] <= 0.0)
@constraint(m, e267, b[188]-b[189] <= 0.0)
@constraint(m, e268, b[190]+b[191] <= 1.0)
@constraint(m, e269, b[190]+b[192] <= 1.0)
@constraint(m, e270, b[190]+b[193] <= 1.0)
@constraint(m, e271, b[190]+b[191] <= 1.0)
@constraint(m, e272, b[191]+b[192] <= 1.0)
@constraint(m, e273, b[191]+b[193] <= 1.0)
@constraint(m, e274, b[190]+b[192] <= 1.0)
@constraint(m, e275, b[191]+b[192] <= 1.0)
@constraint(m, e276, b[192]+b[193] <= 1.0)
@constraint(m, e277, b[190]+b[193] <= 1.0)
@constraint(m, e278, b[191]+b[193] <= 1.0)
@constraint(m, e279, b[192]+b[193] <= 1.0)
@constraint(m, e280, b[194]+b[195] <= 1.0)
@constraint(m, e281, b[194]+b[196] <= 1.0)
@constraint(m, e282, b[194]+b[197] <= 1.0)
@constraint(m, e283, b[194]+b[195] <= 1.0)
@constraint(m, e284, b[195]+b[196] <= 1.0)
@constraint(m, e285, b[195]+b[197] <= 1.0)
@constraint(m, e286, b[194]+b[196] <= 1.0)
@constraint(m, e287, b[195]+b[196] <= 1.0)
@constraint(m, e288, b[196]+b[197] <= 1.0)
@constraint(m, e289, b[194]+b[197] <= 1.0)
@constraint(m, e290, b[195]+b[197] <= 1.0)
@constraint(m, e291, b[196]+b[197] <= 1.0)
@constraint(m, e292, b[198]+b[199] <= 1.0)
@constraint(m, e293, b[198]+b[200] <= 1.0)
@constraint(m, e294, b[198]+b[201] <= 1.0)
@constraint(m, e295, b[198]+b[199] <= 1.0)
@constraint(m, e296, b[199]+b[200] <= 1.0)
@constraint(m, e297, b[199]+b[201] <= 1.0)
@constraint(m, e298, b[198]+b[200] <= 1.0)
@constraint(m, e299, b[199]+b[200] <= 1.0)
@constraint(m, e300, b[200]+b[201] <= 1.0)
@constraint(m, e301, b[198]+b[201] <= 1.0)
@constraint(m, e302, b[199]+b[201] <= 1.0)
@constraint(m, e303, b[200]+b[201] <= 1.0)
@constraint(m, e304, b[202]+b[203] <= 1.0)
@constraint(m, e305, b[202]+b[204] <= 1.0)
@constraint(m, e306, b[202]+b[205] <= 1.0)
@constraint(m, e307, b[202]+b[203] <= 1.0)
@constraint(m, e308, b[203]+b[204] <= 1.0)
@constraint(m, e309, b[203]+b[205] <= 1.0)
@constraint(m, e310, b[202]+b[204] <= 1.0)
@constraint(m, e311, b[203]+b[204] <= 1.0)
@constraint(m, e312, b[204]+b[205] <= 1.0)
@constraint(m, e313, b[202]+b[205] <= 1.0)
@constraint(m, e314, b[203]+b[205] <= 1.0)
@constraint(m, e315, b[204]+b[205] <= 1.0)
@constraint(m, e316, b[206]+b[207] <= 1.0)
@constraint(m, e317, b[206]+b[208] <= 1.0)
@constraint(m, e318, b[206]+b[209] <= 1.0)
@constraint(m, e319, b[206]+b[207] <= 1.0)
@constraint(m, e320, b[207]+b[208] <= 1.0)
@constraint(m, e321, b[207]+b[209] <= 1.0)
@constraint(m, e322, b[206]+b[208] <= 1.0)
@constraint(m, e323, b[207]+b[208] <= 1.0)
@constraint(m, e324, b[208]+b[209] <= 1.0)
@constraint(m, e325, b[206]+b[209] <= 1.0)
@constraint(m, e326, b[207]+b[209] <= 1.0)
@constraint(m, e327, b[208]+b[209] <= 1.0)
@constraint(m, e328, b[170]-b[190] <= 0.0)
@constraint(m, e329, -b[170]+b[171]-b[191] <= 0.0)
@constraint(m, e330, -b[170]-b[171]+b[172]-b[192] <= 0.0)
@constraint(m, e331, -b[170]-b[171]-b[172]+b[173]-b[193] <= 0.0)
@constraint(m, e332, b[174]-b[194] <= 0.0)
@constraint(m, e333, -b[174]+b[175]-b[195] <= 0.0)
@constraint(m, e334, -b[174]-b[175]+b[176]-b[196] <= 0.0)
@constraint(m, e335, -b[174]-b[175]-b[176]+b[177]-b[197] <= 0.0)
@constraint(m, e336, b[178]-b[198] <= 0.0)
@constraint(m, e337, -b[178]+b[179]-b[199] <= 0.0)
@constraint(m, e338, -b[178]-b[179]+b[180]-b[200] <= 0.0)
@constraint(m, e339, -b[178]-b[179]-b[180]+b[181]-b[201] <= 0.0)
@constraint(m, e340, b[182]-b[202] <= 0.0)
@constraint(m, e341, -b[182]+b[183]-b[203] <= 0.0)
@constraint(m, e342, -b[182]-b[183]+b[184]-b[204] <= 0.0)
@constraint(m, e343, -b[182]-b[183]-b[184]+b[185]-b[205] <= 0.0)
@constraint(m, e344, b[186]-b[206] <= 0.0)
@constraint(m, e345, -b[186]+b[187]-b[207] <= 0.0)
@constraint(m, e346, -b[186]-b[187]+b[188]-b[208] <= 0.0)
@constraint(m, e347, -b[186]-b[187]-b[188]+b[189]-b[209] <= 0.0)
@constraint(m, e348, b[170]+b[174] == 1.0)
@constraint(m, e349, b[171]+b[175] == 1.0)
@constraint(m, e350, b[172]+b[176] == 1.0)
@constraint(m, e351, b[173]+b[177] == 1.0)
@constraint(m, e352, b[170]+b[174]-b[178] >= 0.0)
@constraint(m, e353, b[171]+b[175]-b[179] >= 0.0)
@constraint(m, e354, b[172]+b[176]-b[180] >= 0.0)
@constraint(m, e355, b[173]+b[177]-b[181] >= 0.0)
@constraint(m, e356, b[170]+b[174]-b[182] >= 0.0)
@constraint(m, e357, b[171]+b[175]-b[183] >= 0.0)
@constraint(m, e358, b[172]+b[176]-b[184] >= 0.0)
@constraint(m, e359, b[173]+b[177]-b[185] >= 0.0)
@constraint(m, e360, b[170]+b[174]-b[186] >= 0.0)
@constraint(m, e361, b[171]+b[175]-b[187] >= 0.0)
@constraint(m, e362, b[172]+b[176]-b[188] >= 0.0)
@constraint(m, e363, b[173]+b[177]-b[189] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 
