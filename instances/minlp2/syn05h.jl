using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38]
@variable(m, x[x_Idx])
b_Idx = Any[39, 40, 41, 42, 43]
@variable(m, b[b_Idx], Bin)
setlowerbound(x[36], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[27], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[32], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[25], 0.0)
setlowerbound(x[38], 0.0)
setlowerbound(x[30], 0.0)
setlowerbound(x[26], 0.0)
setlowerbound(x[23], 0.0)
setlowerbound(x[34], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[29], 0.0)
setlowerbound(x[22], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[37], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[24], 0.0)
setlowerbound(x[31], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[33], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[28], 0.0)
setlowerbound(x[35], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[2], 10.0)
setupperbound(x[13], 7.0)


# ----- Constraints ----- #
@constraint(m, e1, objvar-5*x[8]+2*x[13]-200*x[14]-250*x[15]-300*x[16]+5*b[39]+8*b[40]+6*b[41]+10*b[42]+6*b[43] == 0.0)
@constraint(m, e2, x[2]-x[3]-x[4] == 0.0)
@constraint(m, e3, -x[5]-x[6]+x[7] == 0.0)
@constraint(m, e4, x[7]-x[8]-x[9] == 0.0)
@constraint(m, e5, x[9]-x[10]-x[11]-x[12] == 0.0)
@NLconstraint(m, e6, (x[21]/(1e-6+b[39])-log(1+x[17]/(1e-6+b[39])))*(1e-6+b[39]) <= 0.0)
@constraint(m, e7, x[18] == 0.0)
@constraint(m, e8, x[22] == 0.0)
@constraint(m, e9, x[3]-x[17]-x[18] == 0.0)
@constraint(m, e10, x[5]-x[21]-x[22] == 0.0)
@constraint(m, e11, x[17]-10*b[39] <= 0.0)
@constraint(m, e12, x[18]+10*b[39] <= 10.0)
@constraint(m, e13, x[21]-2.39789527279837*b[39] <= 0.0)
@constraint(m, e14, x[22]+2.39789527279837*b[39] <= 2.39789527279837)
@NLconstraint(m, e15, (x[23]/(1e-6+b[40])-1.2*log(1+x[19]/(1e-6+b[40])))*(1e-6+b[40]) <= 0.0)
@constraint(m, e16, x[20] == 0.0)
@constraint(m, e17, x[24] == 0.0)
@constraint(m, e18, x[4]-x[19]-x[20] == 0.0)
@constraint(m, e19, x[6]-x[23]-x[24] == 0.0)
@constraint(m, e20, x[19]-10*b[40] <= 0.0)
@constraint(m, e21, x[20]+10*b[40] <= 10.0)
@constraint(m, e22, x[23]-2.87747432735804*b[40] <= 0.0)
@constraint(m, e23, x[24]+2.87747432735804*b[40] <= 2.87747432735804)
@constraint(m, e24, -0.75*x[25]+x[33] == 0.0)
@constraint(m, e25, x[26] == 0.0)
@constraint(m, e26, x[34] == 0.0)
@constraint(m, e27, x[10]-x[25]-x[26] == 0.0)
@constraint(m, e28, x[14]-x[33]-x[34] == 0.0)
@constraint(m, e29, x[25]-2.87747432735804*b[41] <= 0.0)
@constraint(m, e30, x[26]+2.87747432735804*b[41] <= 2.87747432735804)
@constraint(m, e31, x[33]-2.15810574551853*b[41] <= 0.0)
@constraint(m, e32, x[34]+2.15810574551853*b[41] <= 2.15810574551853)
@NLconstraint(m, e33, (x[35]/(1e-6+b[42])-1.5*log(1+x[27]/(1e-6+b[42])))*(1e-6+b[42]) <= 0.0)
@constraint(m, e34, x[28] == 0.0)
@constraint(m, e35, x[36] == 0.0)
@constraint(m, e36, x[11]-x[27]-x[28] == 0.0)
@constraint(m, e37, x[15]-x[35]-x[36] == 0.0)
@constraint(m, e38, x[27]-2.87747432735804*b[42] <= 0.0)
@constraint(m, e39, x[28]+2.87747432735804*b[42] <= 2.87747432735804)
@constraint(m, e40, x[35]-2.03277599268042*b[42] <= 0.0)
@constraint(m, e41, x[36]+2.03277599268042*b[42] <= 2.03277599268042)
@constraint(m, e42, -x[29]+x[37] == 0.0)
@constraint(m, e43, -0.5*x[31]+x[37] == 0.0)
@constraint(m, e44, x[30] == 0.0)
@constraint(m, e45, x[32] == 0.0)
@constraint(m, e46, x[38] == 0.0)
@constraint(m, e47, x[12]-x[29]-x[30] == 0.0)
@constraint(m, e48, x[13]-x[31]-x[32] == 0.0)
@constraint(m, e49, x[16]-x[37]-x[38] == 0.0)
@constraint(m, e50, x[29]-2.87747432735804*b[43] <= 0.0)
@constraint(m, e51, x[30]+2.87747432735804*b[43] <= 2.87747432735804)
@constraint(m, e52, x[31]-7*b[43] <= 0.0)
@constraint(m, e53, x[32]+7*b[43] <= 7.0)
@constraint(m, e54, x[37]-3.5*b[43] <= 0.0)
@constraint(m, e55, x[38]+3.5*b[43] <= 3.5)
@constraint(m, e56, b[39]+b[40] == 1.0)
@constraint(m, e57, b[39]+b[40]-b[41] >= 0.0)
@constraint(m, e58, b[39]+b[40]-b[42] >= 0.0)
@constraint(m, e59, b[39]+b[40]-b[43] >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m 		 # model get returned when including this script. 
