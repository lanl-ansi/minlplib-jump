using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
b_Idx = Any[1, 2, 3, 4, 5, 6]
@variable(m, b[b_Idx])
i_Idx = Any[7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
@variable(m, i[i_Idx])
setcategory(i[35], :Int)
setlowerbound(i[35], 0.0)
setupperbound(i[35], 100.0)
setcategory(i[33], :Int)
setlowerbound(i[33], 0.0)
setupperbound(i[33], 100.0)
setcategory(i[41], :Int)
setlowerbound(i[41], 0.0)
setupperbound(i[41], 100.0)
setcategory(i[31], :Int)
setlowerbound(i[31], 0.0)
setupperbound(i[31], 100.0)
setcategory(i[34], :Int)
setlowerbound(i[34], 0.0)
setupperbound(i[34], 100.0)
setcategory(i[22], :Int)
setlowerbound(i[22], 0.0)
setupperbound(i[22], 100.0)
setcategory(i[14], :Int)
setlowerbound(i[14], 0.0)
setupperbound(i[14], 100.0)
setcategory(i[37], :Int)
setlowerbound(i[37], 0.0)
setupperbound(i[37], 100.0)
setcategory(i[45], :Int)
setlowerbound(i[45], 0.0)
setupperbound(i[45], 100.0)
setcategory(i[15], :Int)
setlowerbound(i[15], 0.0)
setupperbound(i[15], 100.0)
setcategory(i[25], :Int)
setlowerbound(i[25], 0.0)
setupperbound(i[25], 100.0)
setcategory(i[21], :Int)
setlowerbound(i[21], 0.0)
setupperbound(i[21], 100.0)
setcategory(i[13], :Int)
setlowerbound(i[13], 0.0)
setupperbound(i[13], 100.0)
setcategory(i[26], :Int)
setlowerbound(i[26], 0.0)
setupperbound(i[26], 100.0)
setcategory(b[5], :Bin)
setcategory(i[11], :Int)
setlowerbound(i[11], 0.0)
setupperbound(i[11], 100.0)
setcategory(i[18], :Int)
setlowerbound(i[18], 0.0)
setupperbound(i[18], 100.0)
setcategory(i[8], :Int)
setlowerbound(i[8], 0.0)
setupperbound(i[8], 100.0)
setcategory(b[2], :Bin)
setcategory(i[19], :Int)
setlowerbound(i[19], 0.0)
setupperbound(i[19], 100.0)
setcategory(i[44], :Int)
setlowerbound(i[44], 0.0)
setupperbound(i[44], 100.0)
setcategory(i[32], :Int)
setlowerbound(i[32], 0.0)
setupperbound(i[32], 100.0)
setcategory(i[46], :Int)
setlowerbound(i[46], 0.0)
setupperbound(i[46], 100.0)
setcategory(i[28], :Int)
setlowerbound(i[28], 0.0)
setupperbound(i[28], 100.0)
setcategory(i[36], :Int)
setlowerbound(i[36], 0.0)
setupperbound(i[36], 100.0)
setcategory(i[48], :Int)
setlowerbound(i[48], 0.0)
setupperbound(i[48], 100.0)
setcategory(i[40], :Int)
setlowerbound(i[40], 0.0)
setupperbound(i[40], 100.0)
setcategory(b[3], :Bin)
setcategory(i[9], :Int)
setlowerbound(i[9], 0.0)
setupperbound(i[9], 100.0)
setcategory(i[17], :Int)
setlowerbound(i[17], 0.0)
setupperbound(i[17], 100.0)
setcategory(i[7], :Int)
setlowerbound(i[7], 0.0)
setupperbound(i[7], 100.0)
setcategory(i[43], :Int)
setlowerbound(i[43], 0.0)
setupperbound(i[43], 100.0)
setcategory(i[20], :Int)
setlowerbound(i[20], 0.0)
setupperbound(i[20], 100.0)
setcategory(b[4], :Bin)
setcategory(b[6], :Bin)
setcategory(i[38], :Int)
setlowerbound(i[38], 0.0)
setupperbound(i[38], 100.0)
setcategory(b[1], :Bin)
setcategory(i[23], :Int)
setlowerbound(i[23], 0.0)
setupperbound(i[23], 100.0)
setcategory(i[47], :Int)
setlowerbound(i[47], 0.0)
setupperbound(i[47], 100.0)
setcategory(i[12], :Int)
setlowerbound(i[12], 0.0)
setupperbound(i[12], 100.0)
setcategory(i[27], :Int)
setlowerbound(i[27], 0.0)
setupperbound(i[27], 100.0)
setcategory(i[24], :Int)
setlowerbound(i[24], 0.0)
setupperbound(i[24], 100.0)
setcategory(i[29], :Int)
setlowerbound(i[29], 0.0)
setupperbound(i[29], 100.0)
setcategory(i[16], :Int)
setlowerbound(i[16], 0.0)
setupperbound(i[16], 100.0)
setcategory(i[10], :Int)
setlowerbound(i[10], 0.0)
setupperbound(i[10], 100.0)
setcategory(i[30], :Int)
setlowerbound(i[30], 0.0)
setupperbound(i[30], 100.0)
setcategory(i[39], :Int)
setlowerbound(i[39], 0.0)
setupperbound(i[39], 100.0)
setcategory(i[42], :Int)
setlowerbound(i[42], 0.0)
setupperbound(i[42], 100.0)
setupperbound(i[7], 16.0)
setupperbound(i[8], 16.0)
setupperbound(i[9], 16.0)
setupperbound(i[10], 16.0)
setupperbound(i[11], 16.0)
setupperbound(i[12], 16.0)
setupperbound(i[13], 5.0)
setupperbound(i[14], 5.0)
setupperbound(i[15], 5.0)
setupperbound(i[16], 5.0)
setupperbound(i[17], 5.0)
setupperbound(i[18], 5.0)
setupperbound(i[19], 5.0)
setupperbound(i[20], 5.0)
setupperbound(i[21], 5.0)
setupperbound(i[22], 5.0)
setupperbound(i[23], 5.0)
setupperbound(i[24], 5.0)
setupperbound(i[25], 5.0)
setupperbound(i[26], 5.0)
setupperbound(i[27], 5.0)
setupperbound(i[28], 5.0)
setupperbound(i[29], 5.0)
setupperbound(i[30], 5.0)
setupperbound(i[31], 5.0)
setupperbound(i[32], 5.0)
setupperbound(i[33], 5.0)
setupperbound(i[34], 5.0)
setupperbound(i[35], 5.0)
setupperbound(i[36], 5.0)
setupperbound(i[37], 5.0)
setupperbound(i[38], 5.0)
setupperbound(i[39], 5.0)
setupperbound(i[40], 5.0)
setupperbound(i[41], 5.0)
setupperbound(i[42], 5.0)
setupperbound(i[43], 5.0)
setupperbound(i[44], 5.0)
setupperbound(i[45], 5.0)
setupperbound(i[46], 5.0)
setupperbound(i[47], 5.0)
setupperbound(i[48], 5.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.1*b[1]-0.2*b[2]-0.3*b[3]-0.4*b[4]-0.5*b[5]-0.6*b[6]-i[7]-i[8]-i[9]-i[10]-i[11]-i[12]+objvar == 0.0)
@constraint(m, e2, 330*i[13]+360*i[19]+380*i[25]+430*i[31]+490*i[37]+530*i[43] <= 2200.0)
@constraint(m, e3, 330*i[14]+360*i[20]+380*i[26]+430*i[32]+490*i[38]+530*i[44] <= 2200.0)
@constraint(m, e4, 330*i[15]+360*i[21]+380*i[27]+430*i[33]+490*i[39]+530*i[45] <= 2200.0)
@constraint(m, e5, 330*i[16]+360*i[22]+380*i[28]+430*i[34]+490*i[40]+530*i[46] <= 2200.0)
@constraint(m, e6, 330*i[17]+360*i[23]+380*i[29]+430*i[35]+490*i[41]+530*i[47] <= 2200.0)
@constraint(m, e7, 330*i[18]+360*i[24]+380*i[30]+430*i[36]+490*i[42]+530*i[48] <= 2200.0)
@constraint(m, e8, -330*i[13]-360*i[19]-380*i[25]-430*i[31]-490*i[37]-530*i[43] <= -2100.0)
@constraint(m, e9, -330*i[14]-360*i[20]-380*i[26]-430*i[32]-490*i[38]-530*i[44] <= -2100.0)
@constraint(m, e10, -330*i[15]-360*i[21]-380*i[27]-430*i[33]-490*i[39]-530*i[45] <= -2100.0)
@constraint(m, e11, -330*i[16]-360*i[22]-380*i[28]-430*i[34]-490*i[40]-530*i[46] <= -2100.0)
@constraint(m, e12, -330*i[17]-360*i[23]-380*i[29]-430*i[35]-490*i[41]-530*i[47] <= -2100.0)
@constraint(m, e13, -330*i[18]-360*i[24]-380*i[30]-430*i[36]-490*i[42]-530*i[48] <= -2100.0)
@constraint(m, e14, i[13]+i[19]+i[25]+i[31]+i[37]+i[43] <= 5.0)
@constraint(m, e15, i[14]+i[20]+i[26]+i[32]+i[38]+i[44] <= 5.0)
@constraint(m, e16, i[15]+i[21]+i[27]+i[33]+i[39]+i[45] <= 5.0)
@constraint(m, e17, i[16]+i[22]+i[28]+i[34]+i[40]+i[46] <= 5.0)
@constraint(m, e18, i[17]+i[23]+i[29]+i[35]+i[41]+i[47] <= 5.0)
@constraint(m, e19, i[18]+i[24]+i[30]+i[36]+i[42]+i[48] <= 5.0)
@constraint(m, e20, b[1]-i[7] <= 0.0)
@constraint(m, e21, b[2]-i[8] <= 0.0)
@constraint(m, e22, b[3]-i[9] <= 0.0)
@constraint(m, e23, b[4]-i[10] <= 0.0)
@constraint(m, e24, b[5]-i[11] <= 0.0)
@constraint(m, e25, b[6]-i[12] <= 0.0)
@constraint(m, e26, -16*b[1]+i[7] <= 0.0)
@constraint(m, e27, -16*b[2]+i[8] <= 0.0)
@constraint(m, e28, -16*b[3]+i[9] <= 0.0)
@constraint(m, e29, -16*b[4]+i[10] <= 0.0)
@constraint(m, e30, -16*b[5]+i[11] <= 0.0)
@constraint(m, e31, -16*b[6]+i[12] <= 0.0)
@NLconstraint(m, e32, -(i[7]*i[13]+i[8]*i[14]+i[9]*i[15]+i[10]*i[16]+i[11]*i[17]+i[12]*i[18]) <= -8.0)
@NLconstraint(m, e33, -(i[7]*i[19]+i[8]*i[20]+i[9]*i[21]+i[10]*i[22]+i[11]*i[23]+i[12]*i[24]) <= -16.0)
@NLconstraint(m, e34, -(i[7]*i[25]+i[8]*i[26]+i[9]*i[27]+i[10]*i[28]+i[11]*i[29]+i[12]*i[30]) <= -12.0)
@NLconstraint(m, e35, -(i[7]*i[31]+i[8]*i[32]+i[9]*i[33]+i[10]*i[34]+i[11]*i[35]+i[12]*i[36]) <= -7.0)
@NLconstraint(m, e36, -(i[7]*i[37]+i[8]*i[38]+i[9]*i[39]+i[10]*i[40]+i[11]*i[41]+i[12]*i[42]) <= -14.0)
@NLconstraint(m, e37, -(i[7]*i[43]+i[8]*i[44]+i[9]*i[45]+i[10]*i[46]+i[11]*i[47]+i[12]*i[48]) <= -16.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script. 