using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36]
@variable(m, x[x_Idx])
setlowerbound(x[1], -2.0)
setupperbound(x[1], 2.0)
setlowerbound(x[2], -2.0)
setupperbound(x[2], 2.0)
setlowerbound(x[3], -2.0)
setupperbound(x[3], 2.0)
setlowerbound(x[4], -2.0)
setupperbound(x[4], 2.0)
setlowerbound(x[5], -2.0)
setupperbound(x[5], 2.0)
setlowerbound(x[6], -2.0)
setupperbound(x[6], 2.0)
setlowerbound(x[7], -2.0)
setupperbound(x[7], 2.0)
setlowerbound(x[8], -2.0)
setupperbound(x[8], 2.0)
setlowerbound(x[9], -2.0)
setupperbound(x[9], 2.0)
setlowerbound(x[10], -2.0)
setupperbound(x[10], 2.0)
setlowerbound(x[11], -2.0)
setupperbound(x[11], 2.0)
setlowerbound(x[12], -2.0)
setupperbound(x[12], 2.0)
setlowerbound(x[13], -2.0)
setupperbound(x[13], 2.0)
setlowerbound(x[14], -2.0)
setupperbound(x[14], 2.0)
setlowerbound(x[15], -2.0)
setupperbound(x[15], 2.0)
setlowerbound(x[16], -2.0)
setupperbound(x[16], 2.0)
setlowerbound(x[17], -2.0)
setupperbound(x[17], 2.0)
setlowerbound(x[18], -2.0)
setupperbound(x[18], 2.0)
setlowerbound(x[19], -2.0)
setupperbound(x[19], 2.0)
setlowerbound(x[20], -2.0)
setupperbound(x[20], 2.0)
setlowerbound(x[21], -2.0)
setupperbound(x[21], 2.0)
setlowerbound(x[22], -2.0)
setupperbound(x[22], 2.0)
setlowerbound(x[23], -2.0)
setupperbound(x[23], 2.0)
setlowerbound(x[24], -2.0)
setupperbound(x[24], 2.0)
setlowerbound(x[25], -2.0)
setupperbound(x[25], 2.0)
setlowerbound(x[26], -2.0)
setupperbound(x[26], 2.0)
setlowerbound(x[27], -2.0)
setupperbound(x[27], 2.0)
setlowerbound(x[28], -2.0)
setupperbound(x[28], 2.0)
setlowerbound(x[29], -2.0)
setupperbound(x[29], 2.0)
setlowerbound(x[30], -2.0)
setupperbound(x[30], 2.0)
setlowerbound(x[31], -2.0)
setupperbound(x[31], 2.0)
setlowerbound(x[32], -2.0)
setupperbound(x[32], 2.0)
setlowerbound(x[33], -2.0)
setupperbound(x[33], 2.0)
setlowerbound(x[34], -2.0)
setupperbound(x[34], 2.0)
setlowerbound(x[35], -2.0)
setupperbound(x[35], 2.0)
setlowerbound(x[36], -2.0)
setupperbound(x[36], 2.0)


# ----- Constraints ----- #
@constraint(m, e1,  (x[1])^2+ (x[2])^2+ (x[3])^2 == 4.0)
@constraint(m, e2,  (x[4])^2+ (x[5])^2+ (x[6])^2 == 4.0)
@constraint(m, e3,  (x[7])^2+ (x[8])^2+ (x[9])^2 == 4.0)
@constraint(m, e4,  (x[10])^2+ (x[11])^2+ (x[12])^2 == 4.0)
@constraint(m, e5,  (x[13])^2+ (x[14])^2+ (x[15])^2 == 4.0)
@constraint(m, e6,  (x[16])^2+ (x[17])^2+ (x[18])^2 == 4.0)
@constraint(m, e7,  (x[19])^2+ (x[20])^2+ (x[21])^2 == 4.0)
@constraint(m, e8,  (x[22])^2+ (x[23])^2+ (x[24])^2 == 4.0)
@constraint(m, e9,  (x[25])^2+ (x[26])^2+ (x[27])^2 == 4.0)
@constraint(m, e10,  (x[28])^2+ (x[29])^2+ (x[30])^2 == 4.0)
@constraint(m, e11,  (x[31])^2+ (x[32])^2+ (x[33])^2 == 4.0)
@constraint(m, e12,  (x[34])^2+ (x[35])^2+ (x[36])^2 == 4.0)
@constraint(m, e13,  (x[1]-x[4])^2+ (x[2]-x[5])^2+ (x[3]-x[6])^2-4*objvar >= 0.0)
@constraint(m, e14,  (x[1]-x[7])^2+ (x[2]-x[8])^2+ (x[3]-x[9])^2-4*objvar >= 0.0)
@constraint(m, e15,  (x[1]-x[10])^2+ (x[2]-x[11])^2+ (x[3]-x[12])^2-4*objvar >= 0.0)
@constraint(m, e16,  (x[1]-x[13])^2+ (x[2]-x[14])^2+ (x[3]-x[15])^2-4*objvar >= 0.0)
@constraint(m, e17,  (x[1]-x[16])^2+ (x[2]-x[17])^2+ (x[3]-x[18])^2-4*objvar >= 0.0)
@constraint(m, e18,  (x[1]-x[19])^2+ (x[2]-x[20])^2+ (x[3]-x[21])^2-4*objvar >= 0.0)
@constraint(m, e19,  (x[1]-x[22])^2+ (x[2]-x[23])^2+ (x[3]-x[24])^2-4*objvar >= 0.0)
@constraint(m, e20,  (x[1]-x[25])^2+ (x[2]-x[26])^2+ (x[3]-x[27])^2-4*objvar >= 0.0)
@constraint(m, e21,  (x[1]-x[28])^2+ (x[2]-x[29])^2+ (x[3]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e22,  (x[1]-x[31])^2+ (x[2]-x[32])^2+ (x[3]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e23,  (x[1]-x[34])^2+ (x[2]-x[35])^2+ (x[3]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e24,  (x[4]-x[7])^2+ (x[5]-x[8])^2+ (x[6]-x[9])^2-4*objvar >= 0.0)
@constraint(m, e25,  (x[4]-x[10])^2+ (x[5]-x[11])^2+ (x[6]-x[12])^2-4*objvar >= 0.0)
@constraint(m, e26,  (x[4]-x[13])^2+ (x[5]-x[14])^2+ (x[6]-x[15])^2-4*objvar >= 0.0)
@constraint(m, e27,  (x[4]-x[16])^2+ (x[5]-x[17])^2+ (x[6]-x[18])^2-4*objvar >= 0.0)
@constraint(m, e28,  (x[4]-x[19])^2+ (x[5]-x[20])^2+ (x[6]-x[21])^2-4*objvar >= 0.0)
@constraint(m, e29,  (x[4]-x[22])^2+ (x[5]-x[23])^2+ (x[6]-x[24])^2-4*objvar >= 0.0)
@constraint(m, e30,  (x[4]-x[25])^2+ (x[5]-x[26])^2+ (x[6]-x[27])^2-4*objvar >= 0.0)
@constraint(m, e31,  (x[4]-x[28])^2+ (x[5]-x[29])^2+ (x[6]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e32,  (x[4]-x[31])^2+ (x[5]-x[32])^2+ (x[6]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e33,  (x[4]-x[34])^2+ (x[5]-x[35])^2+ (x[6]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e34,  (x[7]-x[10])^2+ (x[8]-x[11])^2+ (x[9]-x[12])^2-4*objvar >= 0.0)
@constraint(m, e35,  (x[7]-x[13])^2+ (x[8]-x[14])^2+ (x[9]-x[15])^2-4*objvar >= 0.0)
@constraint(m, e36,  (x[7]-x[16])^2+ (x[8]-x[17])^2+ (x[9]-x[18])^2-4*objvar >= 0.0)
@constraint(m, e37,  (x[7]-x[19])^2+ (x[8]-x[20])^2+ (x[9]-x[21])^2-4*objvar >= 0.0)
@constraint(m, e38,  (x[7]-x[22])^2+ (x[8]-x[23])^2+ (x[9]-x[24])^2-4*objvar >= 0.0)
@constraint(m, e39,  (x[7]-x[25])^2+ (x[8]-x[26])^2+ (x[9]-x[27])^2-4*objvar >= 0.0)
@constraint(m, e40,  (x[7]-x[28])^2+ (x[8]-x[29])^2+ (x[9]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e41,  (x[7]-x[31])^2+ (x[8]-x[32])^2+ (x[9]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e42,  (x[7]-x[34])^2+ (x[8]-x[35])^2+ (x[9]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e43,  (x[10]-x[13])^2+ (x[11]-x[14])^2+ (x[12]-x[15])^2-4*objvar >= 0.0)
@constraint(m, e44,  (x[10]-x[16])^2+ (x[11]-x[17])^2+ (x[12]-x[18])^2-4*objvar >= 0.0)
@constraint(m, e45,  (x[10]-x[19])^2+ (x[11]-x[20])^2+ (x[12]-x[21])^2-4*objvar >= 0.0)
@constraint(m, e46,  (x[10]-x[22])^2+ (x[11]-x[23])^2+ (x[12]-x[24])^2-4*objvar >= 0.0)
@constraint(m, e47,  (x[10]-x[25])^2+ (x[11]-x[26])^2+ (x[12]-x[27])^2-4*objvar >= 0.0)
@constraint(m, e48,  (x[10]-x[28])^2+ (x[11]-x[29])^2+ (x[12]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e49,  (x[10]-x[31])^2+ (x[11]-x[32])^2+ (x[12]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e50,  (x[10]-x[34])^2+ (x[11]-x[35])^2+ (x[12]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e51,  (x[13]-x[16])^2+ (x[14]-x[17])^2+ (x[15]-x[18])^2-4*objvar >= 0.0)
@constraint(m, e52,  (x[13]-x[19])^2+ (x[14]-x[20])^2+ (x[15]-x[21])^2-4*objvar >= 0.0)
@constraint(m, e53,  (x[13]-x[22])^2+ (x[14]-x[23])^2+ (x[15]-x[24])^2-4*objvar >= 0.0)
@constraint(m, e54,  (x[13]-x[25])^2+ (x[14]-x[26])^2+ (x[15]-x[27])^2-4*objvar >= 0.0)
@constraint(m, e55,  (x[13]-x[28])^2+ (x[14]-x[29])^2+ (x[15]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e56,  (x[13]-x[31])^2+ (x[14]-x[32])^2+ (x[15]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e57,  (x[13]-x[34])^2+ (x[14]-x[35])^2+ (x[15]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e58,  (x[16]-x[19])^2+ (x[17]-x[20])^2+ (x[18]-x[21])^2-4*objvar >= 0.0)
@constraint(m, e59,  (x[16]-x[22])^2+ (x[17]-x[23])^2+ (x[18]-x[24])^2-4*objvar >= 0.0)
@constraint(m, e60,  (x[16]-x[25])^2+ (x[17]-x[26])^2+ (x[18]-x[27])^2-4*objvar >= 0.0)
@constraint(m, e61,  (x[16]-x[28])^2+ (x[17]-x[29])^2+ (x[18]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e62,  (x[16]-x[31])^2+ (x[17]-x[32])^2+ (x[18]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e63,  (x[16]-x[34])^2+ (x[17]-x[35])^2+ (x[18]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e64,  (x[19]-x[22])^2+ (x[20]-x[23])^2+ (x[21]-x[24])^2-4*objvar >= 0.0)
@constraint(m, e65,  (x[19]-x[25])^2+ (x[20]-x[26])^2+ (x[21]-x[27])^2-4*objvar >= 0.0)
@constraint(m, e66,  (x[19]-x[28])^2+ (x[20]-x[29])^2+ (x[21]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e67,  (x[19]-x[31])^2+ (x[20]-x[32])^2+ (x[21]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e68,  (x[19]-x[34])^2+ (x[20]-x[35])^2+ (x[21]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e69,  (x[22]-x[25])^2+ (x[23]-x[26])^2+ (x[24]-x[27])^2-4*objvar >= 0.0)
@constraint(m, e70,  (x[22]-x[28])^2+ (x[23]-x[29])^2+ (x[24]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e71,  (x[22]-x[31])^2+ (x[23]-x[32])^2+ (x[24]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e72,  (x[22]-x[34])^2+ (x[23]-x[35])^2+ (x[24]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e73,  (x[25]-x[28])^2+ (x[26]-x[29])^2+ (x[27]-x[30])^2-4*objvar >= 0.0)
@constraint(m, e74,  (x[25]-x[31])^2+ (x[26]-x[32])^2+ (x[27]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e75,  (x[25]-x[34])^2+ (x[26]-x[35])^2+ (x[27]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e76,  (x[28]-x[31])^2+ (x[29]-x[32])^2+ (x[30]-x[33])^2-4*objvar >= 0.0)
@constraint(m, e77,  (x[28]-x[34])^2+ (x[29]-x[35])^2+ (x[30]-x[36])^2-4*objvar >= 0.0)
@constraint(m, e78,  (x[31]-x[34])^2+ (x[32]-x[35])^2+ (x[33]-x[36])^2-4*objvar >= 0.0)


# ----- Objective ----- #
@objective(m, Max, objvar)

m = m
