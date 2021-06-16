using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 52]
@variable(m, x[x_Idx])
b_Idx = Any[32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51]
@variable(m, b[b_Idx],  Bin)
set_lower_bound(x[16], 0.0)
set_lower_bound(x[14], 0.0)
set_lower_bound(x[22], 0.0)
set_lower_bound(x[2], 0.0)
set_lower_bound(x[9], 0.0)
set_lower_bound(x[8], 0.0)
set_lower_bound(x[4], 0.0)
set_lower_bound(x[27], 0.0)
set_lower_bound(x[3], 0.0)
set_lower_bound(x[25], 0.0)
set_lower_bound(x[30], 0.0)
set_lower_bound(x[11], 0.0)
set_lower_bound(x[29], 0.0)
set_lower_bound(x[5], 0.0)
set_lower_bound(x[24], 0.0)
set_lower_bound(x[18], 0.0)
set_lower_bound(x[1], 0.0)
set_lower_bound(x[7], 0.0)
set_lower_bound(x[13], 0.0)
set_lower_bound(x[21], 0.0)
set_lower_bound(x[10], 0.0)
set_lower_bound(x[26], 0.0)
set_lower_bound(x[12], 0.0)
set_lower_bound(x[31], 0.0)
set_lower_bound(x[28], 0.0)
set_lower_bound(x[6], 0.0)
set_lower_bound(x[17], 0.0)
set_lower_bound(x[23], 0.0)
set_lower_bound(x[19], 0.0)
set_lower_bound(x[20], 0.0)
set_lower_bound(x[15], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -20*x[12]-50*b[32]+x[52] == 0.0)
@constraint(m, e2, x[2] >= 4000.0)
@constraint(m, e3, x[3] >= 4000.0)
@constraint(m, e4, x[4] >= 4000.0)
@constraint(m, e5, x[5] >= 4000.0)
@constraint(m, e6, x[6] >= 4000.0)
@constraint(m, e7, x[7] >= 4000.0)
@constraint(m, e8, x[8] >= 4000.0)
@constraint(m, e9, x[9] >= 4000.0)
@constraint(m, e10, x[10] >= 4000.0)
@constraint(m, e11, x[11] >= 4000.0)
@constraint(m, e12, x[2] <= 7500.0)
@constraint(m, e13, x[3] <= 7500.0)
@constraint(m, e14, x[4] <= 7500.0)
@constraint(m, e15, x[5] <= 7500.0)
@constraint(m, e16, x[6] <= 7500.0)
@constraint(m, e17, x[7] <= 7500.0)
@constraint(m, e18, x[8] <= 7500.0)
@constraint(m, e19, x[9] <= 7500.0)
@constraint(m, e20, x[10] <= 7500.0)
@constraint(m, e21, x[11] <= 7500.0)
@constraint(m, e22, x[1] == 7500.0)
@constraint(m, e23, b[32]+b[44] <= 1.0)
@constraint(m, e24, b[33]+b[36] <= 1.0)
@constraint(m, e25, b[34]+b[40] <= 1.0)
@constraint(m, e26, b[35]+b[49] <= 1.0)
@constraint(m, e27, b[33]+b[36] <= 1.0)
@constraint(m, e28, b[37]+b[39] <= 1.0)
@constraint(m, e29, b[38]+b[41] <= 1.0)
@constraint(m, e30, b[37]+b[39] <= 1.0)
@constraint(m, e31, b[34]+b[40] <= 1.0)
@constraint(m, e32, b[38]+b[41] <= 1.0)
@constraint(m, e33, b[42]+b[45] <= 1.0)
@constraint(m, e34, b[43]+b[47] <= 1.0)
@constraint(m, e35, b[32]+b[44] <= 1.0)
@constraint(m, e36, b[42]+b[45] <= 1.0)
@constraint(m, e37, b[46]+b[48] <= 1.0)
@constraint(m, e38, b[43]+b[47] <= 1.0)
@constraint(m, e39, b[46]+b[48] <= 1.0)
@constraint(m, e40, b[35]+b[49] <= 1.0)
@constraint(m, e41, b[50]+b[51] <= 1.0)
@constraint(m, e42, b[50]+b[51] <= 1.0)
@constraint(m, e43, x[12]-100000000*b[32] <= 0.0)
@constraint(m, e44, x[13]-100000000*b[33] <= 0.0)
@constraint(m, e45, x[14]-100000000*b[34] <= 0.0)
@constraint(m, e46, x[15]-100000000*b[35] <= 0.0)
@constraint(m, e47, x[16]-100000000*b[36] <= 0.0)
@constraint(m, e48, x[17]-100000000*b[37] <= 0.0)
@constraint(m, e49, x[18]-100000000*b[38] <= 0.0)
@constraint(m, e50, x[19]-100000000*b[39] <= 0.0)
@constraint(m, e51, x[20]-100000000*b[40] <= 0.0)
@constraint(m, e52, x[21]-100000000*b[41] <= 0.0)
@constraint(m, e53, x[22]-100000000*b[42] <= 0.0)
@constraint(m, e54, x[23]-100000000*b[43] <= 0.0)
@constraint(m, e55, x[24]-100000000*b[44] <= 0.0)
@constraint(m, e56, x[25]-100000000*b[45] <= 0.0)
@constraint(m, e57, x[26]-100000000*b[46] <= 0.0)
@constraint(m, e58, x[27]-100000000*b[47] <= 0.0)
@constraint(m, e59, x[28]-100000000*b[48] <= 0.0)
@constraint(m, e60, x[29]-100000000*b[49] <= 0.0)
@constraint(m, e61, x[30]-100000000*b[50] <= 0.0)
@constraint(m, e62, x[31]-100000000*b[51] <= 0.0)
@constraint(m, e63, -100000000*x[12]+b[32] <= 0.0)
@constraint(m, e64, -100000000*x[13]+b[33] <= 0.0)
@constraint(m, e65, -100000000*x[14]+b[34] <= 0.0)
@constraint(m, e66, -100000000*x[15]+b[35] <= 0.0)
@constraint(m, e67, -100000000*x[16]+b[36] <= 0.0)
@constraint(m, e68, -100000000*x[17]+b[37] <= 0.0)
@constraint(m, e69, -100000000*x[18]+b[38] <= 0.0)
@constraint(m, e70, -100000000*x[19]+b[39] <= 0.0)
@constraint(m, e71, -100000000*x[20]+b[40] <= 0.0)
@constraint(m, e72, -100000000*x[21]+b[41] <= 0.0)
@constraint(m, e73, -100000000*x[22]+b[42] <= 0.0)
@constraint(m, e74, -100000000*x[23]+b[43] <= 0.0)
@constraint(m, e75, -100000000*x[24]+b[44] <= 0.0)
@constraint(m, e76, -100000000*x[25]+b[45] <= 0.0)
@constraint(m, e77, -100000000*x[26]+b[46] <= 0.0)
@constraint(m, e78, -100000000*x[27]+b[47] <= 0.0)
@constraint(m, e79, -100000000*x[28]+b[48] <= 0.0)
@constraint(m, e80, -100000000*x[29]+b[49] <= 0.0)
@constraint(m, e81, -100000000*x[30]+b[50] <= 0.0)
@constraint(m, e82, -100000000*x[31]+b[51] <= 0.0)
@constraint(m, e83, x[1]-x[7]-100000000*b[32] <= 0.0)
@constraint(m, e84, x[2]-x[3]-100000000*b[33] <= 0.0)
@constraint(m, e85, x[2]-x[5]-100000000*b[34] <= 0.0)
@constraint(m, e86, x[2]-x[10]-100000000*b[35] <= 0.0)
@constraint(m, e87, -x[2]+x[3]-100000000*b[36] <= 0.0)
@constraint(m, e88, x[3]-x[4]-100000000*b[37] <= 0.0)
@constraint(m, e89, x[3]-x[6]-100000000*b[38] <= 0.0)
@constraint(m, e90, -x[3]+x[4]-100000000*b[39] <= 0.0)
@constraint(m, e91, -x[2]+x[5]-100000000*b[40] <= 0.0)
@constraint(m, e92, -x[3]+x[6]-100000000*b[41] <= 0.0)
@constraint(m, e93, x[6]-x[7]-100000000*b[42] <= 0.0)
@constraint(m, e94, x[6]-x[8]-100000000*b[43] <= 0.0)
@constraint(m, e95, -x[1]+x[7]-100000000*b[44] <= 0.0)
@constraint(m, e96, -x[6]+x[7]-100000000*b[45] <= 0.0)
@constraint(m, e97, x[7]-x[9]-100000000*b[46] <= 0.0)
@constraint(m, e98, -x[6]+x[8]-100000000*b[47] <= 0.0)
@constraint(m, e99, -x[7]+x[9]-100000000*b[48] <= 0.0)
@constraint(m, e100, -x[2]+x[10]-100000000*b[49] <= 0.0)
@constraint(m, e101, x[10]-x[11]-100000000*b[50] <= 0.0)
@constraint(m, e102, -x[10]+x[11]-100000000*b[51] <= 0.0)
@constraint(m, e103, -x[1]+x[7]+100000000*b[32] <= 1.0e8)
@constraint(m, e104, -x[2]+x[3]+100000000*b[33] <= 1.0e8)
@constraint(m, e105, -x[2]+x[5]+100000000*b[34] <= 1.0e8)
@constraint(m, e106, -x[2]+x[10]+100000000*b[35] <= 1.0e8)
@constraint(m, e107, x[2]-x[3]+100000000*b[36] <= 1.0e8)
@constraint(m, e108, -x[3]+x[4]+100000000*b[37] <= 1.0e8)
@constraint(m, e109, -x[3]+x[6]+100000000*b[38] <= 1.0e8)
@constraint(m, e110, x[3]-x[4]+100000000*b[39] <= 1.0e8)
@constraint(m, e111, x[2]-x[5]+100000000*b[40] <= 1.0e8)
@constraint(m, e112, x[3]-x[6]+100000000*b[41] <= 1.0e8)
@constraint(m, e113, -x[6]+x[7]+100000000*b[42] <= 1.0e8)
@constraint(m, e114, -x[6]+x[8]+100000000*b[43] <= 1.0e8)
@constraint(m, e115, x[1]-x[7]+100000000*b[44] <= 1.0e8)
@constraint(m, e116, x[6]-x[7]+100000000*b[45] <= 1.0e8)
@constraint(m, e117, -x[7]+x[9]+100000000*b[46] <= 1.0e8)
@constraint(m, e118, x[6]-x[8]+100000000*b[47] <= 1.0e8)
@constraint(m, e119, x[7]-x[9]+100000000*b[48] <= 1.0e8)
@constraint(m, e120, x[2]-x[10]+100000000*b[49] <= 1.0e8)
@constraint(m, e121, -x[10]+x[11]+100000000*b[50] <= 1.0e8)
@constraint(m, e122, x[10]-x[11]+100000000*b[51] <= 1.0e8)
@constraint(m, e123, x[17]-x[19] == 2.0e6)
@constraint(m, e124, x[14]-x[20] == 3.0e6)
@constraint(m, e125, x[23]-x[27] == 2.0e6)
@constraint(m, e126, x[26]-x[28] == 1.0e6)
@constraint(m, e127, x[15]-x[29]-x[30]+x[31] == 2.0e6)
@constraint(m, e128, x[30]-x[31] == 4.0e6)
@constraint(m, e129, -x[13]-x[14]-x[15]+x[16]+x[20]+x[29] == 0.0)
@constraint(m, e130, x[13]-x[16]-x[17]-x[18]+x[19]+x[21] == 0.0)
@constraint(m, e131, x[18]-x[21]-x[22]-x[23]+x[25]+x[27] == 0.0)
@constraint(m, e132, x[12]+x[22]-x[24]-x[25]-x[26]+x[28] == 0.0)
@constraint(m, e133, x[12] >= 0.0)
@constraint(m, e134, x[12] <= 2.0e7)
@NLconstraint(m, e135, (x[1]*x[1]-x[7]*x[7])*b[32]-2.49149e-7*x[12]*x[12] == 0.0)
@NLconstraint(m, e136, (x[2]*x[2]-x[3]*x[3])*b[33]-2.49149e-7*x[13]*x[13] == 0.0)
@NLconstraint(m, e137, (x[2]*x[2]-x[5]*x[5])*b[34]-2.49149e-7*x[14]*x[14] == 0.0)
@NLconstraint(m, e138, (x[2]*x[2]-x[10]*x[10])*b[35]-2.49149e-7*x[15]*x[15] == 0.0)
@NLconstraint(m, e139, (x[3]*x[3]-x[2]*x[2])*b[36]-2.49149e-7*x[16]*x[16] == 0.0)
@NLconstraint(m, e140, (x[3]*x[3]-x[4]*x[4])*b[37]-2.49149e-7*x[17]*x[17] == 0.0)
@NLconstraint(m, e141, (x[3]*x[3]-x[6]*x[6])*b[38]-2.49149e-7*x[18]*x[18] == 0.0)
@NLconstraint(m, e142, (x[4]*x[4]-x[3]*x[3])*b[39]-2.49149e-7*x[19]*x[19] == 0.0)
@NLconstraint(m, e143, (x[5]*x[5]-x[2]*x[2])*b[40]-2.49149e-7*x[20]*x[20] == 0.0)
@NLconstraint(m, e144, (x[6]*x[6]-x[3]*x[3])*b[41]-2.49149e-7*x[21]*x[21] == 0.0)
@NLconstraint(m, e145, (x[6]*x[6]-x[7]*x[7])*b[42]-2.49149e-7*x[22]*x[22] == 0.0)
@NLconstraint(m, e146, (x[6]*x[6]-x[8]*x[8])*b[43]-2.49149e-7*x[23]*x[23] == 0.0)
@NLconstraint(m, e147, (x[7]*x[7]-x[1]*x[1])*b[44]-2.49149e-7*x[24]*x[24] == 0.0)
@NLconstraint(m, e148, (x[7]*x[7]-x[6]*x[6])*b[45]-2.49149e-7*x[25]*x[25] == 0.0)
@NLconstraint(m, e149, (x[7]*x[7]-x[9]*x[9])*b[46]-2.49149e-7*x[26]*x[26] == 0.0)
@NLconstraint(m, e150, (x[8]*x[8]-x[6]*x[6])*b[47]-2.49149e-7*x[27]*x[27] == 0.0)
@NLconstraint(m, e151, (x[9]*x[9]-x[7]*x[7])*b[48]-2.49149e-7*x[28]*x[28] == 0.0)
@NLconstraint(m, e152, (x[10]*x[10]-x[2]*x[2])*b[49]-2.49149e-7*x[29]*x[29] == 0.0)
@NLconstraint(m, e153, (x[10]*x[10]-x[11]*x[11])*b[50]-2.49149e-7*x[30]*x[30] == 0.0)
@NLconstraint(m, e154, (x[11]*x[11]-x[10]*x[10])*b[51]-2.49149e-7*x[31]*x[31] == 0.0)


# ----- Objective ----- #
@objective(m, Min, x[52])

m = m 		 # model get returned when including this script. 
