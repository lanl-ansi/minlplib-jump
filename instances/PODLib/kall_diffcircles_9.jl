using JuMP

m = Model()

# ----- Variables ----- #
@variable(m, objvar)
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[20], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[1], 4.0)
setupperbound(x[1], 72.0)
setlowerbound(x[2], 1.2)
setupperbound(x[2], 16.8)
setlowerbound(x[3], 1.2)
setupperbound(x[3], 2.8)
setlowerbound(x[4], 0.6)
setupperbound(x[4], 17.4)
setlowerbound(x[5], 0.6)
setupperbound(x[5], 3.4)
setlowerbound(x[6], 0.8)
setupperbound(x[6], 17.2)
setlowerbound(x[7], 0.8)
setupperbound(x[7], 3.2)
setlowerbound(x[8], 1.7)
setupperbound(x[8], 16.3)
setlowerbound(x[9], 1.7)
setupperbound(x[9], 2.3)
setlowerbound(x[10], 0.5)
setupperbound(x[10], 17.5)
setlowerbound(x[11], 0.5)
setupperbound(x[11], 3.5)
setlowerbound(x[12], 1.3)
setupperbound(x[12], 16.7)
setlowerbound(x[13], 1.3)
setupperbound(x[13], 2.7)
setlowerbound(x[14], 2.0)
setupperbound(x[14], 16.0)
setlowerbound(x[15], 2.0)
setupperbound(x[15], 2.0)
setlowerbound(x[16], 1.3)
setupperbound(x[16], 16.7)
setlowerbound(x[17], 1.3)
setupperbound(x[17], 2.7)
setlowerbound(x[18], 0.6)
setupperbound(x[18], 17.4)
setlowerbound(x[19], 0.6)
setupperbound(x[19], 3.4)
setupperbound(x[20], 18.0)
setupperbound(x[21], 4.0)
setlowerbound(objvar, 0.0)
setupperbound(objvar, 72.0)


# ----- Constraints ----- #
@constraint(m, e1, -x[1]+objvar == -41.846014145816)
@constraint(m, e2, -x[20]*x[21]+x[1] == 0.0)
@constraint(m, e3, (x[2]-x[4])*(x[2]-x[4])+(x[3]-x[5])*(x[3]-x[5]) >= 3.24)
@constraint(m, e4, (x[2]-x[6])*(x[2]-x[6])+(x[3]-x[7])*(x[3]-x[7]) >= 4.0)
@constraint(m, e5, (x[2]-x[8])*(x[2]-x[8])+(x[3]-x[9])*(x[3]-x[9]) >= 8.41)
@constraint(m, e6, (x[2]-x[10])*(x[2]-x[10])+(x[3]-x[11])*(x[3]-x[11]) >= 2.89)
@constraint(m, e7, (x[2]-x[12])*(x[2]-x[12])+(x[3]-x[13])*(x[3]-x[13]) >= 6.25)
@constraint(m, e8, (x[2]-x[14])*(x[2]-x[14])+(x[3]-x[15])*(x[3]-x[15]) >= 10.24)
@constraint(m, e9, (x[2]-x[16])*(x[2]-x[16])+(x[3]-x[17])*(x[3]-x[17]) >= 6.25)
@constraint(m, e10, (x[2]-x[18])*(x[2]-x[18])+(x[3]-x[19])*(x[3]-x[19]) >= 3.24)
@constraint(m, e11, (x[4]-x[6])*(x[4]-x[6])+(x[5]-x[7])*(x[5]-x[7]) >= 1.96)
@constraint(m, e12, (x[4]-x[8])*(x[4]-x[8])+(x[5]-x[9])*(x[5]-x[9]) >= 5.29)
@constraint(m, e13, (x[4]-x[10])*(x[4]-x[10])+(x[5]-x[11])*(x[5]-x[11]) >= 1.21)
@constraint(m, e14, (x[4]-x[12])*(x[4]-x[12])+(x[5]-x[13])*(x[5]-x[13]) >= 3.61)
@constraint(m, e15, (x[4]-x[14])*(x[4]-x[14])+(x[5]-x[15])*(x[5]-x[15]) >= 6.76)
@constraint(m, e16, (x[4]-x[16])*(x[4]-x[16])+(x[5]-x[17])*(x[5]-x[17]) >= 3.61)
@constraint(m, e17, (x[4]-x[18])*(x[4]-x[18])+(x[5]-x[19])*(x[5]-x[19]) >= 1.44)
@constraint(m, e18, (x[6]-x[8])*(x[6]-x[8])+(x[7]-x[9])*(x[7]-x[9]) >= 6.25)
@constraint(m, e19, (x[6]-x[10])*(x[6]-x[10])+(x[7]-x[11])*(x[7]-x[11]) >= 1.69)
@constraint(m, e20, (x[6]-x[12])*(x[6]-x[12])+(x[7]-x[13])*(x[7]-x[13]) >= 4.41)
@constraint(m, e21, (x[6]-x[14])*(x[6]-x[14])+(x[7]-x[15])*(x[7]-x[15]) >= 7.84)
@constraint(m, e22, (x[6]-x[16])*(x[6]-x[16])+(x[7]-x[17])*(x[7]-x[17]) >= 4.41)
@constraint(m, e23, (x[6]-x[18])*(x[6]-x[18])+(x[7]-x[19])*(x[7]-x[19]) >= 1.96)
@constraint(m, e24, (x[8]-x[10])*(x[8]-x[10])+(x[9]-x[11])*(x[9]-x[11]) >= 4.84)
@constraint(m, e25, (x[8]-x[12])*(x[8]-x[12])+(x[9]-x[13])*(x[9]-x[13]) >= 9.0)
@constraint(m, e26, (x[8]-x[14])*(x[8]-x[14])+(x[9]-x[15])*(x[9]-x[15]) >= 13.69)
@constraint(m, e27, (x[8]-x[16])*(x[8]-x[16])+(x[9]-x[17])*(x[9]-x[17]) >= 9.0)
@constraint(m, e28, (x[8]-x[18])*(x[8]-x[18])+(x[9]-x[19])*(x[9]-x[19]) >= 5.29)
@constraint(m, e29, (x[10]-x[12])*(x[10]-x[12])+(x[11]-x[13])*(x[11]-x[13]) >= 3.24)
@constraint(m, e30, (x[10]-x[14])*(x[10]-x[14])+(x[11]-x[15])*(x[11]-x[15]) >= 6.25)
@constraint(m, e31, (x[10]-x[16])*(x[10]-x[16])+(x[11]-x[17])*(x[11]-x[17]) >= 3.24)
@constraint(m, e32, (x[10]-x[18])*(x[10]-x[18])+(x[11]-x[19])*(x[11]-x[19]) >= 1.21)
@constraint(m, e33, (x[12]-x[14])*(x[12]-x[14])+(x[13]-x[15])*(x[13]-x[15]) >= 10.89)
@constraint(m, e34, (x[12]-x[16])*(x[12]-x[16])+(x[13]-x[17])*(x[13]-x[17]) >= 6.76)
@constraint(m, e35, (x[12]-x[18])*(x[12]-x[18])+(x[13]-x[19])*(x[13]-x[19]) >= 3.61)
@constraint(m, e36, (x[14]-x[16])*(x[14]-x[16])+(x[15]-x[17])*(x[15]-x[17]) >= 10.89)
@constraint(m, e37, (x[14]-x[18])*(x[14]-x[18])+(x[15]-x[19])*(x[15]-x[19]) >= 6.76)
@constraint(m, e38, (x[16]-x[18])*(x[16]-x[18])+(x[17]-x[19])*(x[17]-x[19]) >= 3.61)
@constraint(m, e39, x[2]-x[20] <= -1.2)
@constraint(m, e40, x[3]-x[21] <= -1.2)
@constraint(m, e41, x[4]-x[20] <= -0.6)
@constraint(m, e42, x[5]-x[21] <= -0.6)
@constraint(m, e43, x[6]-x[20] <= -0.8)
@constraint(m, e44, x[7]-x[21] <= -0.8)
@constraint(m, e45, x[8]-x[20] <= -1.7)
@constraint(m, e46, x[9]-x[21] <= -1.7)
@constraint(m, e47, x[10]-x[20] <= -0.5)
@constraint(m, e48, x[11]-x[21] <= -0.5)
@constraint(m, e49, x[12]-x[20] <= -1.3)
@constraint(m, e50, x[13]-x[21] <= -1.3)
@constraint(m, e51, x[14]-x[20] <= -2.0)
@constraint(m, e52, x[15]-x[21] <= -2.0)
@constraint(m, e53, x[16]-x[20] <= -1.3)
@constraint(m, e54, x[17]-x[21] <= -1.3)
@constraint(m, e55, x[18]-x[20] <= -0.6)
@constraint(m, e56, x[19]-x[21] <= -0.6)
@NLconstraint(m, e57, x[2] <= 9.0)
@constraint(m, e58, x[3] <= 2.0)
@constraint(m, e59, x[4]-x[18] <= 0.0)
@constraint(m, e60, x[12]-x[16] <= 0.0)


# ----- Objective ----- #
@objective(m, Min, objvar)

m = m 		 # model get returned when including this script.
