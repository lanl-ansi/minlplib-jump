using JuMP

m = Model()

# ----- Variables ----- #
b_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53]
@variable(m, b[b_Idx],  Bin)
x_Idx = Any[54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73]
@variable(m, x[x_Idx])
set_lower_bound(x[62], 0.0)
set_lower_bound(x[56], 0.0)
set_lower_bound(x[59], 0.0)
set_lower_bound(x[69], 0.0)
set_lower_bound(x[71], 0.0)
set_lower_bound(x[54], 0.0)
set_lower_bound(x[58], 0.0)
set_lower_bound(x[63], 0.0)
set_lower_bound(x[57], 0.0)
set_lower_bound(x[55], 0.0)
set_lower_bound(x[67], 0.0)
set_lower_bound(x[66], 0.0)
set_lower_bound(x[61], 0.0)
set_lower_bound(x[68], 0.0)
set_lower_bound(x[64], 0.0)
set_lower_bound(x[60], 0.0)
set_lower_bound(x[70], 0.0)
set_lower_bound(x[65], 0.0)


# ----- Constraints ----- #
@constraint(m, e1, -0.44911*b[1]-0.44911*b[2]-0.43985*b[3]-0.43985*b[4]-0.40744*b[5]-0.32873*b[6]-0.43522*b[7]-0.40744*b[8]-0.28706*b[9]-0.40744*b[10]-0.4167*b[11]-0.36114*b[12]-0.43985*b[13]-0.463*b[14]+x[56] == 0.0)
@constraint(m, e2, -0.0664*b[1]-0.1494*b[2]-0.15438*b[3]-0.15438*b[4]-0.03154*b[5]-0.01826*b[6]-0.15604*b[7]-0.14608*b[8]-0.10292*b[9]-0.01328*b[10]-0.0083*b[11]-0.0166*b[12]-0.0166*b[13]-0.166*b[14]+x[57] == 0.0)
@constraint(m, e3, -0.00463*b[5]-0.09723*b[6]-0.02778*b[10]-0.0463*b[11]-0.0463*b[12]-0.02315*b[13]+x[54] == 0.0)
@constraint(m, e4, -0.083*b[1]-0.08632*b[5]-0.1411*b[6]-0.05312*b[10]-0.11952*b[11]-0.09296*b[12]-0.07636*b[13]+x[55] == 0.0)
@NLconstraint(m, e5, -(b[1]*(0.82*b[16]+0.6*b[17]+0.95*b[18]+0.82*b[21]+0.6*b[22]+0.95*b[23]+0.82*b[24]+0.6*b[25]+0.95*b[26]+0.82*b[28]+0.82*b[29]+0.95*b[30]+0.6*b[31]+0.82*b[32])+b[2]*(b[16]+0.6*b[17]+0.95*b[18]+b[21]+0.6*b[22]+0.95*b[23]+b[24]+0.6*b[25]+0.95*b[26]+b[28]+b[29]+0.95*b[30]+0.6*b[31]+b[32])+b[3]*(0.9*b[16]+0.6*b[17]+0.95*b[18]+0.9*b[21]+0.6*b[22]+0.95*b[23]+0.9*b[24]+0.6*b[25]+0.95*b[26]+0.9*b[28]+0.9*b[29]+0.95*b[30]+0.6*b[31]+0.9*b[32])+b[4]*(0.07*b[16]+0.6*b[17]+0.95*b[18]+0.07*b[21]+0.6*b[22]+0.95*b[23]+0.07*b[24]+0.6*b[25]+0.95*b[26]+0.07*b[28]+0.07*b[29]+0.95*b[30]+0.6*b[31]+0.07*b[32])+b[5]*(0.95*b[16]+0.6*b[17]+0.95*b[18]+0.95*b[21]+0.6*b[22]+0.95*b[23]+0.95*b[24]+0.6*b[25]+0.95*b[26]+0.95*b[28]+0.95*b[29]+0.95*b[30]+0.6*b[31]+0.95*b[32])+b[6]*(0.95*b[16]+0.6*b[17]+0.95*b[18]+0.95*b[21]+0.6*b[22]+0.95*b[23]+0.95*b[24]+0.6*b[25]+0.95*b[26]+0.95*b[28]+0.95*b[29]+0.95*b[30]+0.6*b[31]+0.95*b[32])+b[7]*(0.28*b[16]+0.6*b[17]+0.95*b[18]+0.28*b[21]+0.6*b[22]+0.95*b[23]+0.28*b[24]+0.6*b[25]+0.95*b[26]+0.28*b[28]+0.28*b[29]+0.95*b[30]+0.6*b[31]+0.28*b[32])+b[8]*(0.63*b[16]+0.6*b[17]+0.95*b[18]+0.63*b[21]+0.6*b[22]+0.95*b[23]+0.63*b[24]+0.6*b[25]+0.95*b[26]+0.63*b[28]+0.63*b[29]+0.95*b[30]+0.6*b[31]+0.63*b[32])+b[9]*(0.7*b[16]+0.6*b[17]+0.95*b[18]+0.7*b[21]+0.6*b[22]+0.95*b[23]+0.7*b[24]+0.6*b[25]+0.95*b[26]+0.7*b[28]+0.7*b[29]+0.95*b[30]+0.6*b[31]+0.7*b[32])+b[10]*(0.75*b[16]+0.6*b[17]+0.95*b[18]+0.75*b[21]+0.6*b[22]+0.95*b[23]+0.75*b[24]+0.6*b[25]+0.95*b[26]+0.75*b[28]+0.6*b[29]+0.95*b[30]+0.6*b[31]+0.75*b[32])+b[11]*(0.8*b[16]+0.6*b[17]+0.95*b[18]+0.8*b[21]+0.6*b[22]+0.95*b[23]+0.8*b[24]+0.6*b[25]+0.95*b[26]+0.8*b[28]+0.6*b[29]+0.95*b[30]+0.6*b[31]+0.8*b[32])+b[12]*(0.8*b[16]+0.6*b[17]+0.95*b[18]+0.8*b[21]+0.6*b[22]+0.95*b[23]+0.8*b[24]+0.6*b[25]+0.95*b[26]+0.8*b[28]+0.8*b[29]+0.95*b[30]+0.6*b[31]+0.8*b[32])+b[13]*(0.9*b[16]+0.6*b[17]+0.95*b[18]+0.9*b[21]+0.6*b[22]+0.95*b[23]+0.9*b[24]+0.6*b[25]+0.95*b[26]+0.9*b[28]+0.9*b[29]+0.95*b[30]+0.6*b[31]+0.9*b[32])+b[14]*(0.6*b[17]+0.95*b[18]+0.6*b[22]+0.95*b[23]+0.6*b[25]+0.95*b[26]+0.95*b[30]+0.6*b[31]))+x[58] == 0.0)
@NLconstraint(m, e6, -(b[1]*(0.67*b[19]+0.66*b[20]+0.67*b[21]+0.67*b[22]+0.67*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.67*b[27]+0.67*b[29]+0.1*b[30]+0.1*b[31]+0.67*b[32])+b[2]*(0.7*b[19]+0.66*b[20]+0.7*b[21]+0.7*b[22]+0.7*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.7*b[27]+0.7*b[29]+0.1*b[30]+0.1*b[31]+0.7*b[32])+b[3]*(0.69*b[19]+0.66*b[20]+0.69*b[21]+0.69*b[22]+0.69*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.69*b[27]+0.69*b[29]+0.1*b[30]+0.1*b[31]+0.69*b[32])+b[4]*(0.07*b[19]+0.66*b[20]+0.07*b[21]+0.07*b[22]+0.07*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.07*b[27]+0.07*b[29]+0.1*b[30]+0.1*b[31]+0.07*b[32])+b[5]*(0.9*b[19]+0.66*b[20]+0.9*b[21]+0.9*b[22]+0.9*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.9*b[27]+0.9*b[29]+0.1*b[30]+0.1*b[31]+0.9*b[32])+b[6]*(0.9*b[19]+0.66*b[20]+0.9*b[21]+0.9*b[22]+0.9*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.9*b[27]+0.9*b[29]+0.1*b[30]+0.1*b[31]+0.9*b[32])+b[7]*(0.28*b[19]+0.66*b[20]+0.28*b[21]+0.28*b[22]+0.28*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.28*b[27]+0.28*b[29]+0.1*b[30]+0.1*b[31]+0.28*b[32])+b[8]*(0.63*b[19]+0.66*b[20]+0.63*b[21]+0.63*b[22]+0.63*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.63*b[27]+0.63*b[29]+0.1*b[30]+0.1*b[31]+0.63*b[32])+b[9]*(0.7*b[19]+0.66*b[20]+0.7*b[21]+0.7*b[22]+0.7*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.7*b[27]+0.7*b[29]+0.1*b[30]+0.1*b[31]+0.7*b[32])+b[10]*(0.6*b[19]+0.66*b[20]+0.6*b[21]+0.6*b[22]+0.6*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.6*b[27]+0.6*b[29]+0.1*b[30]+0.1*b[31]+0.6*b[32])+b[11]*(0.6*b[19]+0.66*b[20]+0.6*b[21]+0.6*b[22]+0.6*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.6*b[27]+0.6*b[29]+0.1*b[30]+0.1*b[31]+0.6*b[32])+b[12]*(0.8*b[19]+0.66*b[20]+0.8*b[21]+0.8*b[22]+0.8*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.8*b[27]+0.8*b[29]+0.1*b[30]+0.1*b[31]+0.8*b[32])+b[13]*(0.9*b[19]+0.66*b[20]+0.9*b[21]+0.9*b[22]+0.9*b[23]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.9*b[27]+0.9*b[29]+0.1*b[30]+0.1*b[31]+0.9*b[32])+b[14]*(0.66*b[20]+0.66*b[24]+0.66*b[25]+0.66*b[26]+0.1*b[30]+0.1*b[31]))+x[59] == 0.0)
@constraint(m, e7, -b[33]-0.75*b[34]-0.95*b[35]-0.9*b[36]+x[60] == 0.0)
@constraint(m, e8, -b[33]-0.75*b[34]-0.95*b[35]-0.9*b[36]+x[61] == 0.0)
@constraint(m, e9, -0.1*b[10]-0.15*b[11]-0.15*b[12]-0.15*b[13]-0.85*b[17]-0.57*b[18]-0.85*b[20]-0.85*b[22]-0.57*b[23]-0.85*b[24]-0.85*b[25]-0.85*b[26]-0.85*b[30]-0.85*b[31]+x[65] == 0.0)
@constraint(m, e10, -b[33]-0.2*b[34]-0.1*b[35]-0.4*b[36]+x[66] == 0.0)
@NLconstraint(m, e11, -x[65]*x[66]+x[67] == 0.0)
@NLconstraint(m, e12, -(b[39]*(0.48-0.3*x[67])-0.3*b[37]*x[67]+b[41]*(0.48-0.2*x[67])+b[42]*(0.48-0.2*x[67])+b[43]*(0.48-0.4*x[67])+b[44]*(0.48-0.4*x[67]))-0.48*b[38]-0.48*b[40]+x[62] == 0.0)
@NLconstraint(m, e13, -(b[37]*(0.41-0.3*x[67])+b[39]*(0.41-0.3*x[67])+b[41]*(0.41-0.2*x[67])+b[42]*(0.41-0.2*x[67])+b[43]*(0.41-0.4*x[67])+b[44]*(0.41-0.4*x[67]))+x[63] == 0.0)
@NLconstraint(m, e14, -1000*(1.1111*x[56]*x[58]*x[60]*x[62]+1.1363*x[57]*x[59]*x[61]*x[63]+1.111*x[54]*x[60]*x[62]+1.1363*x[55]*x[61]*x[63])+x[64] == 0.0)
@constraint(m, e15, -6.69*b[1]-19.67*b[2]-6.46*b[3]-15.59*b[4]-2.2*b[5]-9.25*b[6]-8*b[7]-8*b[8]-8*b[9]-1.52*b[10]-1.89*b[11]-2.47*b[12]-2.99*b[13]-2.84*b[16]-1.56*b[17]-14.38*b[18]-1.51*b[19]-0.91*b[20]-4.2*b[21]-2.96*b[22]-8.87*b[23]-3.71*b[24]-2.41*b[25]-8.82*b[26]-4.05*b[27]-3*b[28]-4.68*b[29]-5.42*b[30]-3.18*b[31]-4.07*b[32]-0.96*b[34]-0.11*b[35]-1.14*b[36]-1.87*b[40]-4.5*b[41]-2.87*b[42]-2.78*b[43]-3.87*b[44]-0.49*b[45]-0.4*b[46]-0.37*b[47]+x[68] == 0.0)
@constraint(m, e16, -5*b[1]-5*b[2]-5*b[3]-5*b[4]-8*b[5]-8*b[6]-6*b[7]-6*b[8]-6*b[9]-8*b[10]-8*b[11]-8*b[12]-9*b[13]-10*b[14]-10*b[33]-8*b[34]-7*b[35]-10*b[36]-10*b[40]-7*b[41]-7*b[43]-5*b[44]-10*b[45]-10*b[46]-10*b[47]-10*b[48]-5*b[49]-10*b[50]-10*b[51]-10*b[52]+x[69] == 0.0)
@NLconstraint(m, e17, -(b[45]*(1.06*b[48]+14.67*b[49]+1.5*b[50]+2.16*b[51]+1.48*b[52]+1.4*b[53])+b[46]*(0.59*b[48]+5.16*b[49]+0.49*b[50]+1.21*b[51]+0.82*b[52]+0.77*b[53])+b[47]*(0.28*b[48]+0.82*b[49]+0.31*b[50]+0.57*b[51]+0.39*b[52]+0.36*b[53]))+x[70] == 0.0)
@NLconstraint(m, e18, -(b[1]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[2]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[3]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[4]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+10*b[25]+5*b[26]+5*b[30]+10*b[31])+b[5]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[6]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[7]*(10*b[17]+5*b[18]+10*b[20]+10*b[25]+5*b[26]+5*b[30]+10*b[31])+b[8]*(5*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+5*b[24]+10*b[25]+5*b[26]+5*b[27]+5*b[28]+5*b[30]+10*b[31]+5*b[32])+b[9]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[10]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[11]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[12]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[13]*(10*b[16]+10*b[17]+5*b[18]+10*b[20]+5*b[21]+5*b[22]+5*b[23]+10*b[24]+10*b[25]+5*b[26]+5*b[27]+7*b[28]+5*b[30]+10*b[31]+5*b[32])+b[14]*(10*b[16]+10*b[17]+5*b[18]+10*b[19]+10*b[20]+10*b[21]+10*b[22]+10*b[23]+10*b[24]+10*b[25]+5*b[26]+10*b[27]+10*b[28]+10*b[29]+5*b[30]+10*b[31]+10*b[32]))+x[71] == 0.0)
@constraint(m, e19, b[1]+b[2]+b[3]+b[4]+b[5]+b[6]+b[7]+b[8]+b[9]+b[10]+b[11]+b[12]+b[13]+b[14] == 1.0)
@constraint(m, e20, b[15]+b[16]+b[17]+b[18]+b[19]+b[20]+b[21]+b[22]+b[23]+b[24]+b[25]+b[26]+b[27]+b[28]+b[29]+b[30]+b[31]+b[32] == 1.0)
@constraint(m, e21, b[33]+b[34]+b[35]+b[36] == 1.0)
@constraint(m, e22, b[37]+b[38]+b[39]+b[40]+b[41]+b[42]+b[43]+b[44] == 1.0)
@constraint(m, e23, b[45]+b[46]+b[47] == 1.0)
@constraint(m, e24, b[48]+b[49]+b[50]+b[51]+b[52]+b[53] == 1.0)
@constraint(m, e25, -x[68]-x[70]+x[72] == 0.0)
@constraint(m, e26, -x[69]-x[71]+x[73] == 0.0)
@constraint(m, e27, x[64] >= 280.0)
@constraint(m, e28, x[73] >= 60.0)
@constraint(m, e29, b[28]-b[38] == 0.0)
@constraint(m, e30, b[27]-b[37] == 0.0)
@constraint(m, e31, b[29]-b[39] == 0.0)
@constraint(m, e32, -0.094*b[9] >= 0.0)
@constraint(m, e33, 0.076*b[8] >= 0.0)
@constraint(m, e34, 0.236*b[7] >= 0.0)
@constraint(m, e35, -b[25]-b[33] >= -1.0)
@constraint(m, e36, -b[31]-b[33] >= -1.0)
@constraint(m, e37, -b[30]-b[33] >= -1.0)
@constraint(m, e38, -b[17]-b[33] >= -1.0)


# ----- Objective ----- #
@objective(m, Min, x[72])

m = m 		 # model get returned when including this script. 
