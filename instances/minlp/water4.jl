using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69]
@variable(m, x[x_Idx])
b_Idx = Any[71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 123, 124, 125, 126, 127, 128, 129, 130, 131, 132, 133, 134, 135, 136, 137, 138, 139, 140, 141, 142, 143, 144, 145, 146, 147, 148, 149, 150, 151, 152, 153, 154, 155, 156, 157, 158, 159, 160, 161, 162, 163, 164, 165, 166, 167, 168, 169, 170, 171, 172, 173, 174, 175, 176, 177, 178, 179, 180, 181, 182, 183, 184, 185, 186, 187, 188, 189, 190, 191, 192, 193, 194, 195, 196]
@variable(m, b[b_Idx])
setcategory(b[118], :Bin)
setcategory(b[71], :Bin)
setlowerbound(x[16], 0.0)
setcategory(b[78], :Bin)
setcategory(b[161], :Bin)
setlowerbound(x[14], 0.0)
setcategory(b[158], :Bin)
setcategory(b[75], :Bin)
setcategory(b[120], :Bin)
setcategory(b[128], :Bin)
setcategory(b[167], :Bin)
setcategory(b[177], :Bin)
setcategory(b[85], :Bin)
setcategory(b[80], :Bin)
setcategory(b[82], :Bin)
setcategory(b[176], :Bin)
setcategory(b[133], :Bin)
setcategory(b[160], :Bin)
setlowerbound(x[22], 0.0)
setcategory(b[106], :Bin)
setcategory(b[163], :Bin)
setcategory(b[168], :Bin)
setcategory(b[81], :Bin)
setcategory(b[169], :Bin)
setcategory(b[137], :Bin)
setcategory(b[185], :Bin)
setcategory(b[180], :Bin)
setcategory(b[196], :Bin)
setlowerbound(x[2], 0.0)
setcategory(b[105], :Bin)
setcategory(b[164], :Bin)
setcategory(b[124], :Bin)
setcategory(b[141], :Bin)
setcategory(b[178], :Bin)
setlowerbound(x[9], 0.0)
setlowerbound(x[8], 0.0)
setcategory(b[112], :Bin)
setcategory(b[111], :Bin)
setcategory(b[136], :Bin)
setcategory(b[143], :Bin)
setcategory(b[90], :Bin)
setcategory(b[170], :Bin)
setcategory(b[130], :Bin)
setcategory(b[150], :Bin)
setcategory(b[87], :Bin)
setcategory(b[98], :Bin)
setlowerbound(x[4], 0.0)
setcategory(b[132], :Bin)
setlowerbound(x[27], 0.0)
setcategory(b[95], :Bin)
setcategory(b[186], :Bin)
setcategory(b[77], :Bin)
setcategory(b[115], :Bin)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setcategory(b[84], :Bin)
setcategory(b[189], :Bin)
setcategory(b[172], :Bin)
setcategory(b[127], :Bin)
setcategory(b[116], :Bin)
setlowerbound(x[11], 0.0)
setcategory(b[79], :Bin)
setcategory(b[104], :Bin)
setcategory(b[119], :Bin)
setcategory(b[171], :Bin)
setcategory(b[173], :Bin)
setlowerbound(x[5], 0.0)
setcategory(b[74], :Bin)
setcategory(b[89], :Bin)
setcategory(b[96], :Bin)
setcategory(b[145], :Bin)
setlowerbound(x[24], 0.0)
setcategory(b[92], :Bin)
setcategory(b[72], :Bin)
setcategory(b[126], :Bin)
setlowerbound(x[18], 0.0)
setcategory(b[129], :Bin)
setcategory(b[86], :Bin)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setcategory(b[114], :Bin)
setcategory(b[190], :Bin)
setcategory(b[102], :Bin)
setlowerbound(x[21], 0.0)
setcategory(b[153], :Bin)
setcategory(b[159], :Bin)
setlowerbound(x[10], 0.0)
setcategory(b[144], :Bin)
setcategory(b[100], :Bin)
setcategory(b[125], :Bin)
setlowerbound(x[26], 0.0)
setcategory(b[142], :Bin)
setcategory(b[184], :Bin)
setcategory(b[166], :Bin)
setlowerbound(x[66], 0.0)
setcategory(b[110], :Bin)
setlowerbound(x[12], 0.0)
setcategory(b[183], :Bin)
setcategory(b[138], :Bin)
setcategory(b[117], :Bin)
setcategory(b[165], :Bin)
setcategory(b[195], :Bin)
setcategory(b[83], :Bin)
setcategory(b[135], :Bin)
setcategory(b[151], :Bin)
setcategory(b[193], :Bin)
setcategory(b[101], :Bin)
setcategory(b[108], :Bin)
setcategory(b[154], :Bin)
setcategory(b[76], :Bin)
setcategory(b[109], :Bin)
setcategory(b[174], :Bin)
setlowerbound(x[28], 0.0)
setcategory(b[182], :Bin)
setcategory(b[194], :Bin)
setcategory(b[179], :Bin)
setcategory(b[191], :Bin)
setcategory(b[88], :Bin)
setcategory(b[134], :Bin)
setcategory(b[175], :Bin)
setlowerbound(x[6], 0.0)
setcategory(b[192], :Bin)
setcategory(b[97], :Bin)
setlowerbound(x[17], 0.0)
setcategory(b[93], :Bin)
setcategory(b[99], :Bin)
setlowerbound(x[23], 0.0)
setcategory(b[140], :Bin)
setcategory(b[155], :Bin)
setcategory(b[94], :Bin)
setcategory(b[149], :Bin)
setcategory(b[188], :Bin)
setcategory(b[146], :Bin)
setcategory(b[123], :Bin)
setcategory(b[107], :Bin)
setcategory(b[187], :Bin)
setcategory(b[91], :Bin)
setlowerbound(x[19], 0.0)
setcategory(b[113], :Bin)
setcategory(b[152], :Bin)
setcategory(b[181], :Bin)
setcategory(b[103], :Bin)
setlowerbound(x[20], 0.0)
setcategory(b[121], :Bin)
setcategory(b[122], :Bin)
setcategory(b[139], :Bin)
setcategory(b[157], :Bin)
setlowerbound(x[15], 0.0)
setcategory(b[147], :Bin)
setcategory(b[148], :Bin)
setcategory(b[156], :Bin)
setcategory(b[73], :Bin)
setcategory(b[131], :Bin)
setcategory(b[162], :Bin)
setlowerbound(x[65], 0.0)
setlowerbound(x[43], 6.5)
setlowerbound(x[44], 3.25)
setlowerbound(x[45], 16.58)
setlowerbound(x[46], 14.92)
setlowerbound(x[47], 12.925)
setlowerbound(x[48], 12.26)
setlowerbound(x[49], 8.76)
setlowerbound(x[50], 16.08)
setupperbound(x[65], 2.5)
setupperbound(x[66], 6.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]-x[2]-x[3]+x[15]+x[16]+x[17]+x[65] == 0.0)
@constraint(m, e2, -x[4]-x[5]-x[6]-x[7]+x[18]+x[19]+x[20]+x[21]+x[66] == 0.0)
@constraint(m, e3, x[1]+x[4]-x[8]-x[9]-x[10]-x[11]-x[15]-x[18]+x[22]+x[23]+x[24]+x[25] == 1.212)
@constraint(m, e4, x[2]+x[8]+x[12]-x[16]-x[22]-x[26] == 0.452)
@constraint(m, e5, x[9]-x[12]+x[13]-x[23]+x[26]-x[27] == 0.245)
@constraint(m, e6, x[5]+x[10]-x[13]-x[14]-x[19]-x[24]+x[27]+x[28] == 0.652)
@constraint(m, e7, x[6]+x[14]-x[20]-x[28] == 0.252)
@constraint(m, e8, x[3]+x[7]+x[11]-x[17]-x[21]-x[25] == 0.456)
@constraint(m, e9, x[29]-38721.1970117411*b[99]-2543.8701482414*b[100]-207.747320703761*b[101]-23.9314504121258*b[102]-1.5722267648148*b[103]-0.181112645550961*b[104]-0.0390863672545667*b[105] == 0.0)
@constraint(m, e10, x[30]-32510.4890865135*b[106]-2135.84468132099*b[107]-174.425573683688*b[108]-20.0929521164322*b[109]-1.32004857865156*b[110]-0.152062982061963*b[111]-0.0328170876451919*b[112] == 0.0)
@constraint(m, e11, x[31]-63468.4628982673*b[113]-4169.69361956223*b[114]-340.521578201805*b[115]-39.2263796008983*b[116]-2.57705917665854*b[117]-0.296864304610023*b[118]-0.0640670186196026*b[119] == 0.0)
@constraint(m, e12, x[32]-50797.5773435889*b[120]-3337.25325093014*b[121]-272.539627020641*b[122]-31.3951994533022*b[123]-2.06257339263358*b[124]-0.237598120158509*b[125]-0.0512766370081929*b[126] == 0.0)
@constraint(m, e13, x[33]-59165.7349698592*b[127]-3887.01689524085*b[128]-317.436542928413*b[129]-36.5670992066393*b[130]-2.40235218067626*b[131]-0.27673893405488*b[132]-0.0597237127048799*b[133] == 0.0)
@constraint(m, e14, x[34]-32977.2294678044*b[134]-2166.50816836621*b[135]-176.929733450444*b[136]-20.3814187742893*b[137]-1.339*b[138]-0.154246090843839*b[139]-0.0332882297421199*b[140] == 0.0)
@constraint(m, e15, x[35]-33843.9321019273*b[141]-2223.4480134252*b[142]-181.579774357788*b[143]-20.9170801874496*b[144]-1.37419139860501*b[145]-0.158299963634093*b[146]-0.0341631060391402*b[147] == 0.0)
@constraint(m, e16, x[36]-31810.181054648*b[148]-2089.8364782095*b[149]-170.668274619734*b[150]-19.660130090483*b[151]-1.2916134290104*b[152]-0.148787395299671*b[153]-0.0321101751776739*b[154] == 0.0)
@constraint(m, e17, x[37]-39461.9459070343*b[155]-2592.53519858857*b[156]-211.721593458417*b[157]-24.3892667200816*b[158]-1.60230396616872*b[159]-0.184577388442944*b[160]-0.0398341019735132*b[161] == 0.0)
@constraint(m, e18, x[38]-32977.2294678044*b[162]-2166.50816836621*b[163]-176.929733450444*b[164]-20.3814187742893*b[165]-1.339*b[166]-0.154246090843839*b[167]-0.0332882297421199*b[168] == 0.0)
@constraint(m, e19, x[39]-52785.5148814787*b[169]-3467.85497167945*b[170]-283.205327698691*b[171]-32.6238347301504*b[172]-2.14329116080854*b[173]-0.246896402610059*b[174]-0.0532833223041444*b[175] == 0.0)
@constraint(m, e20, x[40]-30677.4142839491*b[176]-2015.41699236491*b[177]-164.590743970989*b[178]-18.9600290116536*b[179]-1.24561882211213*b[180]-0.143489047044288*b[181]-0.0309667255575633*b[182] == 0.0)
@constraint(m, e21, x[41]-28361.2795383154*b[183]-1863.25366856746*b[184]-152.164196629274*b[185]-17.5285530220005*b[186]-1.15157500841239*b[187]-0.132655670919396*b[188]-0.0286287479053886*b[189] == 0.0)
@constraint(m, e22, x[42]-50797.5773435889*b[190]-3337.25325093014*b[191]-272.539627020641*b[192]-31.3951994533022*b[193]-2.06257339263358*b[194]-0.237598120158509*b[195]-0.0512766370081929*b[196] == 0.0)
@NLconstraint(m, e23, -(x[1]+x[15])*(x[1]-x[15])*x[29]+x[43]-x[45]-x[51] == 0.0)
@NLconstraint(m, e24, -(x[2]+x[16])*(x[2]-x[16])*x[30]+x[43]-x[46]-x[52] == 0.0)
@NLconstraint(m, e25, -(x[3]+x[17])*(x[3]-x[17])*x[31]+x[43]-x[50]-x[53] == 0.0)
@NLconstraint(m, e26, -(x[4]+x[18])*(x[4]-x[18])*x[32]+x[44]-x[45]-x[54] == 0.0)
@NLconstraint(m, e27, -(x[5]+x[19])*(x[5]-x[19])*x[33]+x[44]-x[48]-x[55] == 0.0)
@NLconstraint(m, e28, -(x[6]+x[20])*(x[6]-x[20])*x[34]+x[44]-x[49]-x[56] == 0.0)
@NLconstraint(m, e29, -(x[7]+x[21])*(x[7]-x[21])*x[35]+x[44]-x[50]-x[57] == 0.0)
@NLconstraint(m, e30, -(x[8]+x[22])*(x[8]-x[22])*x[36]+x[45]-x[46]-x[58] == 0.0)
@NLconstraint(m, e31, -(x[9]+x[23])*(x[9]-x[23])*x[37]+x[45]-x[47]-x[59] == 0.0)
@NLconstraint(m, e32, -(x[10]+x[24])*(x[10]-x[24])*x[38]+x[45]-x[48]-x[60] == 0.0)
@NLconstraint(m, e33, -(x[11]+x[25])*(x[11]-x[25])*x[39]+x[45]-x[50]-x[61] == 0.0)
@NLconstraint(m, e34, -(x[12]+x[26])*(x[12]-x[26])*x[40]-x[46]+x[47]-x[62] == 0.0)
@NLconstraint(m, e35, -(x[13]+x[27])*(x[13]-x[27])*x[41]-x[47]+x[48]-x[63] == 0.0)
@NLconstraint(m, e36, -(x[14]+x[28])*(x[14]-x[28])*x[42]+x[48]-x[49]-x[64] == 0.0)
@constraint(m, e37, x[51]+12*b[85] <= 12.0)
@constraint(m, e38, x[52]+12*b[86] <= 12.0)
@constraint(m, e39, x[53]+12*b[87] <= 12.0)
@constraint(m, e40, x[54]+12*b[88] <= 12.0)
@constraint(m, e41, x[55]+12*b[89] <= 12.0)
@constraint(m, e42, x[56]+12*b[90] <= 12.0)
@constraint(m, e43, x[57]+12*b[91] <= 12.0)
@constraint(m, e44, x[58]+12*b[92] <= 12.0)
@constraint(m, e45, x[59]+12*b[93] <= 12.0)
@constraint(m, e46, x[60]+12*b[94] <= 12.0)
@constraint(m, e47, x[61]+12*b[95] <= 12.0)
@constraint(m, e48, x[62]+12*b[96] <= 12.0)
@constraint(m, e49, x[63]+12*b[97] <= 12.0)
@constraint(m, e50, x[64]+12*b[98] <= 12.0)
@constraint(m, e51, x[51]-12*b[85] >= -12.0)
@constraint(m, e52, x[52]-12*b[86] >= -12.0)
@constraint(m, e53, x[53]-12*b[87] >= -12.0)
@constraint(m, e54, x[54]-12*b[88] >= -12.0)
@constraint(m, e55, x[55]-12*b[89] >= -12.0)
@constraint(m, e56, x[56]-12*b[90] >= -12.0)
@constraint(m, e57, x[57]-12*b[91] >= -12.0)
@constraint(m, e58, x[58]-12*b[92] >= -12.0)
@constraint(m, e59, x[59]-12*b[93] >= -12.0)
@constraint(m, e60, x[60]-12*b[94] >= -12.0)
@constraint(m, e61, x[61]-12*b[95] >= -12.0)
@constraint(m, e62, x[62]-12*b[96] >= -12.0)
@constraint(m, e63, x[63]-12*b[97] >= -12.0)
@constraint(m, e64, x[64]-12*b[98] >= -12.0)
@constraint(m, e65, -(1.02*x[65]*(x[43]-6.5)+1.02*x[66]*(x[44]-3.25))+x[67] == 0.0)
@constraint(m, e66, x[68]-9.11349113439539*b[99]-17.6144733325531*b[100]-32.2986551864818*b[101]-54.4931814987685*b[102]-105.323928905069*b[103]-177.698914733437*b[104]-257.546555368226*b[105]-7.65172765642961*b[106]-14.7891900880288*b[107]-27.118094428506*b[108]-45.7527173518919*b[109]-88.4304387640365*b[110]-149.196798497086*b[111]-216.237232413786*b[112]-14.9380525029139*b[113]-28.8721329260735*b[114]-52.941183552398*b[115]-89.3205462402005*b[116]-172.637944844116*b[117]-291.268810037089*b[118]-422.148209648796*b[119]-11.9558099050809*b[120]-23.1080813747994*b[121]-42.3719709499612*b[122]-71.4885338137291*b[123]-138.172392322055*b[124]-233.119713791557*b[125]-337.870264236031*b[126]-13.9253546563734*b[127]-26.9147996770731*b[128]-49.3521332015331*b[129]-83.2652237802191*b[130]-160.93427229773*b[131]-271.522775764452*b[132]-393.529446744536*b[133]-7.76158051882097*b[134]-15.0015127080393*b[135]-27.5074183079396*b[136]-46.4095712271164*b[137]-89.7*b[138]-151.338758602103*b[139]-219.341665817957*b[140]-7.96556922221359*b[141]-15.3957802311063*b[142]-28.2303641796868*b[143]-47.6293006671023*b[144]-92.0574820424717*b[145]-155.316221319321*b[146]-225.10637081608*b[147]-7.48690188831565*b[148]-14.4706163324673*b[149]-26.5339439013751*b[150]-44.7671586494086*b[151]-86.5255598074927*b[152]-145.982952158506*b[153]-211.579268940989*b[154]-9.28783513744935*b[155]-17.9514438466182*b[156]-32.916538800503*b[157]-55.5356535066454*b[158]-107.338809384118*b[159]-181.098351861986*b[160]-262.473503425068*b[161]-7.76158051882097*b[162]-15.0015127080393*b[163]-27.5074183079396*b[164]-46.4095712271164*b[165]-89.7*b[166]-151.338758602103*b[167]-219.341665817957*b[168]-12.4236944883441*b[169]-24.0124044704238*b[170]-44.0301766363479*b[171]-74.2862014846846*b[172]-143.579699122125*b[173]-242.242736071415*b[174]-351.092646411238*b[175]-7.22029184733547*b[176]-13.9553148538372*b[177]-25.5890649679471*b[178]-43.1729913716576*b[179]-83.44436769489*b[180]-140.784470672041*b[181]-204.044889780639*b[182]-6.67516217420068*b[183]-12.9016931463472*b[184]-23.6570989315674*b[185]-39.913444642481*b[186]-77.1443452237428*b[187]-130.155289178744*b[188]-188.639567333459*b[189]-11.9558099050809*b[190]-23.1080813747994*b[191]-42.3719709499612*b[192]-71.4885338137291*b[193]-138.172392322055*b[194]-233.119713791557*b[195]-337.870264236031*b[196] == 0.0)
@constraint(m, e67, -0.2*x[65]-0.17*x[66]+x[69] == 0.0)
@constraint(m, e68, -10*x[67]-x[68]-10*x[69]+objvar == 0.0)
@constraint(m, e69, x[1]-2*b[71] <= 0.0)
@constraint(m, e70, x[2]-2*b[72] <= 0.0)
@constraint(m, e71, x[3]-2*b[73] <= 0.0)
@constraint(m, e72, x[4]-2*b[74] <= 0.0)
@constraint(m, e73, x[5]-2*b[75] <= 0.0)
@constraint(m, e74, x[6]-2*b[76] <= 0.0)
@constraint(m, e75, x[7]-2*b[77] <= 0.0)
@constraint(m, e76, x[8]-2*b[78] <= 0.0)
@constraint(m, e77, x[9]-2*b[79] <= 0.0)
@constraint(m, e78, x[10]-2*b[80] <= 0.0)
@constraint(m, e79, x[11]-2*b[81] <= 0.0)
@constraint(m, e80, x[12]-2*b[82] <= 0.0)
@constraint(m, e81, x[13]-2*b[83] <= 0.0)
@constraint(m, e82, x[14]-2*b[84] <= 0.0)
@constraint(m, e83, x[15]+2*b[71] <= 2.0)
@constraint(m, e84, x[16]+2*b[72] <= 2.0)
@constraint(m, e85, x[17]+2*b[73] <= 2.0)
@constraint(m, e86, x[18]+2*b[74] <= 2.0)
@constraint(m, e87, x[19]+2*b[75] <= 2.0)
@constraint(m, e88, x[20]+2*b[76] <= 2.0)
@constraint(m, e89, x[21]+2*b[77] <= 2.0)
@constraint(m, e90, x[22]+2*b[78] <= 2.0)
@constraint(m, e91, x[23]+2*b[79] <= 2.0)
@constraint(m, e92, x[24]+2*b[80] <= 2.0)
@constraint(m, e93, x[25]+2*b[81] <= 2.0)
@constraint(m, e94, x[26]+2*b[82] <= 2.0)
@constraint(m, e95, x[27]+2*b[83] <= 2.0)
@constraint(m, e96, x[28]+2*b[84] <= 2.0)
@constraint(m, e97, x[1]+x[15]-2*b[85] <= 0.0)
@constraint(m, e98, x[2]+x[16]-2*b[86] <= 0.0)
@constraint(m, e99, x[3]+x[17]-2*b[87] <= 0.0)
@constraint(m, e100, x[4]+x[18]-2*b[88] <= 0.0)
@constraint(m, e101, x[5]+x[19]-2*b[89] <= 0.0)
@constraint(m, e102, x[6]+x[20]-2*b[90] <= 0.0)
@constraint(m, e103, x[7]+x[21]-2*b[91] <= 0.0)
@constraint(m, e104, x[8]+x[22]-2*b[92] <= 0.0)
@constraint(m, e105, x[9]+x[23]-2*b[93] <= 0.0)
@constraint(m, e106, x[10]+x[24]-2*b[94] <= 0.0)
@constraint(m, e107, x[11]+x[25]-2*b[95] <= 0.0)
@constraint(m, e108, x[12]+x[26]-2*b[96] <= 0.0)
@constraint(m, e109, x[13]+x[27]-2*b[97] <= 0.0)
@constraint(m, e110, x[14]+x[28]-2*b[98] <= 0.0)
@constraint(m, e111, -b[85]+b[99]+b[100]+b[101]+b[102]+b[103]+b[104]+b[105] == 0.0)
@constraint(m, e112, -b[86]+b[106]+b[107]+b[108]+b[109]+b[110]+b[111]+b[112] == 0.0)
@constraint(m, e113, -b[87]+b[113]+b[114]+b[115]+b[116]+b[117]+b[118]+b[119] == 0.0)
@constraint(m, e114, -b[88]+b[120]+b[121]+b[122]+b[123]+b[124]+b[125]+b[126] == 0.0)
@constraint(m, e115, -b[89]+b[127]+b[128]+b[129]+b[130]+b[131]+b[132]+b[133] == 0.0)
@constraint(m, e116, -b[90]+b[134]+b[135]+b[136]+b[137]+b[138]+b[139]+b[140] == 0.0)
@constraint(m, e117, -b[91]+b[141]+b[142]+b[143]+b[144]+b[145]+b[146]+b[147] == 0.0)
@constraint(m, e118, -b[92]+b[148]+b[149]+b[150]+b[151]+b[152]+b[153]+b[154] == 0.0)
@constraint(m, e119, -b[93]+b[155]+b[156]+b[157]+b[158]+b[159]+b[160]+b[161] == 0.0)
@constraint(m, e120, -b[94]+b[162]+b[163]+b[164]+b[165]+b[166]+b[167]+b[168] == 0.0)
@constraint(m, e121, -b[95]+b[169]+b[170]+b[171]+b[172]+b[173]+b[174]+b[175] == 0.0)
@constraint(m, e122, -b[96]+b[176]+b[177]+b[178]+b[179]+b[180]+b[181]+b[182] == 0.0)
@constraint(m, e123, -b[97]+b[183]+b[184]+b[185]+b[186]+b[187]+b[188]+b[189] == 0.0)
@constraint(m, e124, -b[98]+b[190]+b[191]+b[192]+b[193]+b[194]+b[195]+b[196] == 0.0)
@constraint(m, e125, x[1]+x[15]-0.0176041976445841*b[99]-0.0686820348432157*b[100]-0.240338257044582*b[101]-0.708118780382974*b[102]-2*b[103]-2*b[104]-2*b[105] <= 0.0)
@constraint(m, e126, x[2]+x[16]-0.0192122784105588*b[106]-0.0749558941482069*b[107]-0.262292300976835*b[108]-0.772802909347502*b[109]-2*b[110]-2*b[111]-2*b[112] <= 0.0)
@constraint(m, e127, x[3]+x[17]-0.0137502828767635*b[113]-0.0536461488738445*b[114]-0.187723353667753*b[115]-0.553097263345606*b[116]-2*b[117]-2*b[118]-2*b[119] <= 0.0)
@constraint(m, e128, x[4]+x[18]-0.0153698320860398*b[120]-0.0599647518268192*b[121]-0.209833968534382*b[122]-0.618242703881818*b[123]-2*b[124]-2*b[125]-2*b[126] <= 0.0)
@constraint(m, e129, x[5]+x[19]-0.0142414920290718*b[127]-0.0555625806701283*b[128]-0.194429501479406*b[129]-0.572855870518057*b[130]-2*b[131]-2*b[132]-2*b[133] <= 0.0)
@constraint(m, e130, x[6]+x[20]-0.0190758342372385*b[134]-0.0744235629590588*b[135]-0.260429520550158*b[136]-0.767314520523847*b[137]-2*b[138]-2*b[139]-2*b[140] <= 0.0)
@constraint(m, e131, x[7]+x[21]-0.0188299954674205*b[141]-0.0734644333642121*b[142]-0.257073249355929*b[143]-0.757425796631457*b[144]-2*b[145]-2*b[146]-2*b[147] <= 0.0)
@constraint(m, e132, x[8]+x[22]-0.0194226083350049*b[148]-0.0757764874800376*b[149]-0.265163793814297*b[150]-0.781263310246409*b[151]-2*b[152]-2*b[153]-2*b[154] <= 0.0)
@constraint(m, e133, x[9]+x[23]-0.0174381887671401*b[155]-0.0680343582075014*b[156]-0.238071849619242*b[157]-0.701441168247406*b[158]-2*b[159]-2*b[160]-2*b[161] <= 0.0)
@constraint(m, e134, x[10]+x[24]-0.0190758342372385*b[162]-0.0744235629590588*b[163]-0.260429520550158*b[164]-0.767314520523847*b[165]-2*b[166]-2*b[167]-2*b[168] <= 0.0)
@constraint(m, e135, x[11]+x[25]-0.0150776355652448*b[169]-0.0588247594211735*b[170]-0.205844806180028*b[171]-0.606489265973719*b[172]-2*b[173]-2*b[174]-2*b[175] <= 0.0)
@constraint(m, e136, x[12]+x[26]-0.0197779487583483*b[176]-0.0771628331590627*b[177]-0.270015017353593*b[178]-0.795556675515238*b[179]-2*b[180]-2*b[181]-2*b[182] <= 0.0)
@constraint(m, e137, x[13]+x[27]-0.02056968839856*b[183]-0.0802517719822704*b[184]-0.280824105561038*b[185]-0.827403949655566*b[186]-2*b[187]-2*b[188]-2*b[189] <= 0.0)
@constraint(m, e138, x[14]+x[28]-0.0153698320860398*b[190]-0.0599647518268192*b[191]-0.209833968534382*b[192]-0.618242703881818*b[193]-2*b[194]-2*b[195]-2*b[196] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)
m = m 		 # model get returned when including this script. 