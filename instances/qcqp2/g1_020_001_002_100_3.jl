using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21]
@variable(m, x[x_Idx])
setlowerbound(x[4], 0.0)
setlowerbound(x[16], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[14], 0.0)
setlowerbound(x[17], 0.0)
setlowerbound(x[3], 0.0)
setlowerbound(x[11], 0.0)
setlowerbound(x[12], 0.0)
setlowerbound(x[5], 0.0)
setlowerbound(x[19], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[20], 0.0)
setlowerbound(x[18], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[15], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[13], 0.0)
setlowerbound(x[21], 0.0)
setlowerbound(x[10], 0.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)
setupperbound(x[11], 1.0)
setupperbound(x[12], 1.0)
setupperbound(x[13], 1.0)
setupperbound(x[14], 1.0)
setupperbound(x[15], 1.0)
setupperbound(x[16], 1.0)
setupperbound(x[17], 1.0)
setupperbound(x[18], 1.0)
setupperbound(x[19], 1.0)
setupperbound(x[20], 1.0)
setupperbound(x[21], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(1.44*x[2]*x[5]-0.48*x[2]*x[3]+0.72*x[2]*x[6]+0.12*x[2]*x[7]+0.44*x[2]*x[8]+0.3*x[2]*x[9]-1.9*x[2]*x[10]-1.28*x[2]*x[11]+1.42*x[2]*x[12]+1.56*x[2]*x[13]+0.98*x[2]*x[14]+0.26*x[2]*x[15]+0.46*x[2]*x[16]-1.2*x[2]*x[17]-1.68*x[2]*x[19]-0.94*x[2]*x[21]+1.78*x[3]*x[5]-1.38*x[3]*x[4]-0.86*x[3]*x[6]+1.04*x[3]*x[7]+1.72*x[3]*x[8]-0.1*x[3]*x[9]+0.42*x[3]*x[10]-0.38*x[3]*x[11]+0.22*x[3]*x[12]-0.78*x[3]*x[13]+1.36*x[3]*x[14]+0.72*x[3]*x[15]+1.98*x[3]*x[16]-1.34*x[3]*x[17]-0.7*x[3]*x[18]-0.08*x[3]*x[19]+1.98*x[3]*x[20]+0.94*x[3]*x[21]+(-0.86*x[4]*x[6])-1.18*x[4]*x[7]-1.72*x[4]*x[8]+0.58*x[4]*x[9]-1.98*x[4]*x[10]-2*x[4]*x[11]+1.92*x[4]*x[12]+1.38*x[4]*x[13]-0.38*x[4]*x[14]-x[4]*x[15]-1.68*x[4]*x[16]-1.34*x[4]*x[17]+1.98*x[4]*x[19]-1.38*x[4]*x[20]+1.14*x[4]*x[21]+(-0.78*x[5]*x[7])-0.66*x[5]*x[8]+0.82*x[5]*x[9]-0.56*x[5]*x[10]-1.66*x[5]*x[11]+1.26*x[5]*x[12]-1.8*x[5]*x[13]+0.12*x[5]*x[14]-1.5*x[5]*x[15]-1.76*x[5]*x[16]-0.06*x[5]*x[17]+0.16*x[5]*x[18]+1.2*x[5]*x[19]-1.46*x[5]*x[20]-0.56*x[5]*x[21]+1.4*x[6]*x[8]-0.02*x[6]*x[7]+0.58*x[6]*x[9]+1.16*x[6]*x[10]-1.98*x[6]*x[11]+0.56*x[6]*x[12]+0.8*x[6]*x[13]-0.92*x[6]*x[14]+0.96*x[6]*x[15]+1.84*x[6]*x[16]-0.78*x[6]*x[17]-0.58*x[6]*x[18]-0.6*x[6]*x[19]+0.64*x[6]*x[20]+0.62*x[6]*x[21]+0.18*x[7]*x[8]-0.58*x[7]*x[9]-0.36*x[7]*x[10]+1.3*x[7]*x[11]+0.76*x[7]*x[12]-1.1*x[7]*x[13]+0.88*x[7]*x[14]-1.48*x[7]*x[15]-0.62*x[7]*x[16]-0.66*x[7]*x[17]-1.1*x[7]*x[18]-1.92*x[7]*x[19]-0.58*x[7]*x[20]-1.16*x[7]*x[21]+0.74*x[8]*x[9]+1.02*x[8]*x[10]-0.22*x[8]*x[11]+0.34*x[8]*x[12]+0.42*x[8]*x[13]+1.36*x[8]*x[14]+1.08*x[8]*x[15]+0.7*x[8]*x[16]+0.12*x[8]*x[17]-1.4*x[8]*x[18]+0.08*x[8]*x[19]+1.38*x[8]*x[20]-0.68*x[8]*x[21]+0.68*x[9]*x[10]+1.42*x[9]*x[11]-1.2*x[9]*x[12]+1.48*x[9]*x[13]-1.14*x[9]*x[14]+1.86*x[9]*x[15]-0.62*x[9]*x[16]-0.9*x[9]*x[17]-0.86*x[9]*x[18]+0.98*x[9]*x[19]+1.02*x[9]*x[20]+0.36*x[9]*x[21]+0.46*x[10]*x[11]+0.22*x[10]*x[12]+0.98*x[10]*x[13]+0.18*x[10]*x[14]-1.52*x[10]*x[15]+0.54*x[10]*x[16]+0.42*x[10]*x[17]+0.6*x[10]*x[18]+0.36*x[10]*x[19]-1.5*x[10]*x[20]+0.72*x[10]*x[21]+0.28*x[11]*x[13]-1.1*x[11]*x[14]-0.04*x[11]*x[15]-1.12*x[11]*x[16]-0.02*x[11]*x[17]+0.38*x[11]*x[18]-1.56*x[11]*x[19]-1.64*x[11]*x[20]+0.06*x[11]*x[21]+x[12]*x[13]+0.28*x[12]*x[14]-1.36*x[12]*x[15]-0.24*x[12]*x[16]-0.4*x[12]*x[17]+0.62*x[12]*x[18]-0.96*x[12]*x[19]-0.78*x[12]*x[20]-0.6*x[12]*x[21]+1.14*x[13]*x[15]-1.08*x[13]*x[14]+1.54*x[13]*x[16]-0.02*x[13]*x[17]-0.84*x[13]*x[18]+0.74*x[13]*x[19]+1.92*x[13]*x[20]-1.98*x[13]*x[21]+0.06*x[14]*x[15]-1.54*x[14]*x[16]-1.4*x[14]*x[17]+1.74*x[14]*x[18]+0.9*x[14]*x[19]+1.6*x[14]*x[20]-0.3*x[14]*x[21]+1.78*x[15]*x[16]+1.12*x[15]*x[17]-1.34*x[15]*x[18]-0.64*x[15]*x[19]+1.7*x[15]*x[20]+0.74*x[15]*x[21]+0.86*x[16]*x[18]-0.04*x[16]*x[17]-0.4*x[16]*x[19]-1.44*x[16]*x[20]-1.36*x[16]*x[21]+0.7*x[17]*x[19]+1.62*x[17]*x[20]+1.1*x[17]*x[21]+(-1.12*x[18]*x[20])-0.22*x[18]*x[21]+(-0.76*x[19]*x[20])-0.62*x[19]*x[21]-0.78*x[20]*x[21]+0.92*x[4]*x[4]-0.97*x[2]*x[2]-0.39*x[5]*x[5]+0.11*x[6]*x[6]+0.37*x[7]*x[7]+0.35*x[8]*x[8]+0.64*x[9]*x[9]+0.14*x[10]*x[10]-0.44*x[11]*x[11]+0.94*x[12]*x[12]-0.76*x[13]*x[13]-0.75*x[14]*x[14]-0.06*x[15]*x[15]+0.16*x[16]*x[16]-0.76*x[17]*x[17]-0.88*x[19]*x[19]+0.26*x[20]*x[20]+0.25*x[21]*x[21]-0.79*x[2]-0.44*x[3]+0.94*x[4]+0.28*x[5]+0.17*x[6]+0.74*x[7]+0.75*x[8]+0.38*x[9]+0.5*x[10]-0.81*x[11]+0.79*x[12]+0.74*x[13]-0.91*x[14]+0.01*x[15]+0.53*x[16]-0.1*x[17]+0.87*x[18]-0.01*x[19]-0.97*x[20]+0.42*x[21])+x[1] == 0.0)
@NLconstraint(m, e2, 0.22*x[2]*x[3]-1.92*x[2]*x[4]-0.96*x[2]*x[6]-0.52*x[2]*x[7]-1.88*x[2]*x[8]+1.58*x[2]*x[9]-0.1*x[2]*x[10]-1.3*x[2]*x[11]+0.52*x[2]*x[12]+1.12*x[2]*x[13]-0.36*x[2]*x[14]-0.16*x[2]*x[15]+1.62*x[2]*x[16]+1.02*x[2]*x[17]-1.02*x[2]*x[18]-0.28*x[2]*x[19]+0.22*x[2]*x[20]-1.9*x[2]*x[21]+0.34*x[3]*x[4]-1.46*x[3]*x[5]-0.68*x[3]*x[6]+0.08*x[3]*x[7]+0.72*x[3]*x[8]+1.74*x[3]*x[9]+0.82*x[3]*x[10]-0.7*x[3]*x[11]+1.5*x[3]*x[12]-0.08*x[3]*x[13]+0.84*x[3]*x[14]+1.22*x[3]*x[16]-1.1*x[3]*x[18]-1.42*x[3]*x[19]-1.46*x[3]*x[20]+1.16*x[3]*x[21]+(-1.02*x[4]*x[5])-0.04*x[4]*x[6]+0.7*x[4]*x[7]+1.26*x[4]*x[8]+2*x[4]*x[9]-0.98*x[4]*x[10]+0.56*x[4]*x[11]+1.84*x[4]*x[12]-0.34*x[4]*x[13]+0.6*x[4]*x[14]+1.82*x[4]*x[15]+1.72*x[4]*x[16]+0.68*x[4]*x[17]+0.88*x[4]*x[19]-0.72*x[4]*x[20]+1.14*x[4]*x[21]+1.2*x[5]*x[6]-1.72*x[5]*x[7]+1.08*x[5]*x[8]+1.2*x[5]*x[9]+2*x[5]*x[10]-0.12*x[5]*x[11]-0.06*x[5]*x[12]+0.06*x[5]*x[13]+0.52*x[5]*x[14]-0.38*x[5]*x[15]+0.62*x[5]*x[16]+0.44*x[5]*x[17]+0.16*x[5]*x[18]-1.3*x[5]*x[19]+1.36*x[5]*x[20]+2*x[5]*x[21]+1.28*x[6]*x[7]+0.64*x[6]*x[8]+1.8*x[6]*x[9]-0.74*x[6]*x[10]+0.14*x[6]*x[11]-1.76*x[6]*x[12]+1.36*x[6]*x[13]+1.92*x[6]*x[14]-0.52*x[6]*x[15]+0.6*x[6]*x[16]+0.88*x[6]*x[17]-1.68*x[6]*x[18]+0.12*x[6]*x[19]-1.78*x[6]*x[20]+(-1.3*x[7]*x[8])-1.32*x[7]*x[9]-1.58*x[7]*x[10]-1.44*x[7]*x[11]-0.48*x[7]*x[12]+0.16*x[7]*x[13]+0.52*x[7]*x[14]-0.24*x[7]*x[16]-0.2*x[7]*x[17]-0.32*x[7]*x[18]+1.12*x[7]*x[20]-1.7*x[7]*x[21]+0.3*x[8]*x[10]-1.94*x[8]*x[9]-1.58*x[8]*x[11]-1.7*x[8]*x[12]+1.74*x[8]*x[13]-0.74*x[8]*x[14]+0.08*x[8]*x[15]+0.7*x[8]*x[16]+0.38*x[8]*x[17]-1.52*x[8]*x[18]-1.82*x[8]*x[19]-1.98*x[8]*x[21]+0.24*x[9]*x[10]+1.66*x[9]*x[11]-1.38*x[9]*x[12]+1.84*x[9]*x[13]+0.2*x[9]*x[14]-1.38*x[9]*x[16]-0.14*x[9]*x[17]+1.62*x[9]*x[18]-0.06*x[9]*x[19]-0.38*x[9]*x[20]+1.88*x[10]*x[11]+0.68*x[10]*x[12]+0.8*x[10]*x[13]-0.9*x[10]*x[14]-0.74*x[10]*x[15]-1.86*x[10]*x[16]-0.06*x[10]*x[17]-0.04*x[10]*x[18]+1.5*x[10]*x[19]-1.26*x[10]*x[20]+1.76*x[10]*x[21]+(-1.7*x[11]*x[12])-0.58*x[11]*x[13]+0.38*x[11]*x[14]-0.26*x[11]*x[15]+1.86*x[11]*x[16]+1.36*x[11]*x[17]+0.32*x[11]*x[18]-1.16*x[11]*x[19]-1.4*x[11]*x[20]-0.04*x[11]*x[21]+(-0.86*x[12]*x[13])-0.48*x[12]*x[14]+0.9*x[12]*x[15]-x[12]*x[16]+0.16*x[12]*x[17]-1.62*x[12]*x[19]-0.02*x[12]*x[20]+0.7*x[12]*x[21]+0.54*x[13]*x[14]+1.38*x[13]*x[15]-0.64*x[13]*x[16]+1.98*x[13]*x[17]+1.2*x[13]*x[18]+1.74*x[13]*x[19]-0.58*x[13]*x[21]+0.3*x[14]*x[15]-1.68*x[14]*x[16]-0.02*x[14]*x[17]-1.66*x[14]*x[18]+1.7*x[14]*x[19]-1.32*x[14]*x[20]-0.32*x[14]*x[21]+0.48*x[15]*x[17]-1.58*x[15]*x[16]+1.94*x[15]*x[18]-0.98*x[15]*x[19]+1.64*x[15]*x[20]-0.54*x[15]*x[21]+1.6*x[16]*x[18]-1.38*x[16]*x[17]-x[16]*x[19]-0.44*x[16]*x[20]+0.64*x[16]*x[21]+1.44*x[17]*x[19]-1.18*x[17]*x[18]-0.8*x[17]*x[20]-0.46*x[17]*x[21]+(-2*x[18]*x[19])-1.12*x[18]*x[20]+1.34*x[18]*x[21]+1.82*x[19]*x[20]+0.86*x[19]*x[21]-0.28*x[20]*x[21]+(-0.77*x[2]*x[2])-0.94*x[3]*x[3]-0.8*x[4]*x[4]-0.78*x[5]*x[5]-0.37*x[6]*x[6]-0.8*x[7]*x[7]-0.57*x[8]*x[8]+0.98*x[9]*x[9]+0.84*x[10]*x[10]+0.33*x[11]*x[11]-0.56*x[12]*x[12]-0.3*x[13]*x[13]+0.47*x[14]*x[14]-0.88*x[15]*x[15]-0.29*x[16]*x[16]+0.34*x[17]*x[17]+0.95*x[18]*x[18]+0.09*x[19]*x[19]-0.64*x[20]*x[20]+0.39*x[21]*x[21]-0.75*x[2]-0.06*x[3]+0.72*x[4]-0.92*x[5]-0.21*x[6]-0.68*x[7]+0.29*x[8]-0.59*x[9]-0.32*x[10]+0.1*x[11]-0.88*x[12]-0.97*x[13]-0.67*x[14]-0.14*x[15]+0.7*x[16]-0.65*x[17]-0.49*x[18]+0.61*x[19]-0.61*x[20]-0.57*x[21] <= 71.16)
@constraint(m, e3, -0.43*x[2]-0.85*x[4]-0.29*x[5]+0.24*x[6]+0.35*x[7]+0.54*x[8]+0.08*x[9]-0.22*x[10]+0.96*x[11]+0.96*x[12]+0.41*x[13]+0.9*x[14]-0.31*x[15]-0.33*x[16]+0.54*x[17]-0.35*x[18]+0.42*x[19]-0.81*x[20]-0.12*x[21] == 0.06)
@constraint(m, e4, -0.91*x[2]-0.41*x[3]+0.54*x[4]-0.79*x[5]+0.65*x[6]+0.89*x[7]-0.04*x[8]-0.33*x[9]+0.09*x[10]-0.11*x[11]+0.07*x[12]+0.33*x[13]-0.77*x[14]+0.78*x[15]-0.26*x[16]+0.17*x[17]-0.89*x[18]-0.63*x[19]+0.47*x[20]-0.14*x[21] == 0.53)


# ----- Objective ----- #
@objective(m, Min, x[1])

m = m 		 # model get returned when including this script. 