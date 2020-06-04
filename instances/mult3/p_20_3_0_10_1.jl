using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.8783*x[14]^2-0.9025*x[14]+0.8937*x[15]^2+0.3264*x[15]+0.3616*x[2]*x[16]-0.8533*x[3]*x[5]-0.2488*x[3]*x[11]-0.6084*x[5]*x[6]+0.9307*x[6]*x[8]-0.5914*x[7]*x[18]+0.2399*x[9]*x[13]+0.5051*x[11]*x[14]-0.2455*x[11]*x[17]+0.4525*x[11]*x[20]-0.5344*x[12]*x[14]+0.5472*x[13]*x[16]-0.5125*x[18]*x[20]+0.2912*x[2]+0.3298*x[3]+0.4593*x[5]+0.3926*x[6]+0.0687*x[7]+0.4976*x[8]+0.6535*x[9]-0.5502*x[11]-0.1718*x[12]+0.2573*x[13]-0.6443*x[16]+0.1642*x[17]+0.9221*x[18]-0.4399*x[20]+(-0.6563*x[2]^2*x[10])-0.1454*x[2]^2*x[17]+0.0692*x[4]^2*x[7]-0.2863*x[4]^2*x[8]-0.2574*x[4]^2*x[19]+0.3813*x[5]^2*x[9]-0.8237*x[5]^2*x[17]+0.5998*x[5]^2*x[18]+0.9871*x[5]^2*x[19]+0.2361*x[6]^2*x[7]-0.1766*x[7]^2*x[8]+0.6076*x[9]^2*x[1]+0.3767*x[9]^2*x[10]+0.5194*x[10]^2*x[15]+0.1753*x[11]^2*x[9]+0.1005*x[11]^2*x[19]-0.354*x[13]^2*x[1]-0.7225*x[13]^2*x[3]-0.2037*x[13]^2*x[5]-0.4768*x[14]^2*x[11]-0.2086*x[15]^2*x[7]+0.6579*x[15]^2*x[8]+0.48*x[15]^2*x[18]+0.4931*x[17]^2*x[3]+0.73*x[17]^2*x[9]+0.0383*x[18]^2*x[6]-0.4014*x[18]^2*x[7]+0.2666*x[19]^2*x[11]+0.2233*x[20]^2*x[1]+0.1017*x[20]^2*x[6]+0.9075*x[20]^2*x[15]+0.5065*x[1]+0.7586*x[4]-0.9917*x[10]-0.428*x[19]+(-0.3155*x[1]*x[2]*x[8])-0.4008*x[1]*x[2]*x[9]-0.043*x[1]*x[2]*x[15]-0.3314*x[1]*x[3]*x[5]-0.3753*x[1]*x[4]*x[5]+0.6154*x[1]*x[4]*x[6]+0.8973*x[1]*x[5]*x[7]+0.3144*x[1]*x[5]*x[17]-0.8836*x[1]*x[7]*x[10]+0.4957*x[1]*x[9]*x[17]+0.9495*x[1]*x[9]*x[20]+0.9722*x[1]*x[10]*x[19]+0.5135*x[1]*x[14]*x[18]-0.8836*x[2]*x[4]*x[12]-0.9096*x[2]*x[5]*x[16]+0.4563*x[2]*x[7]*x[20]+0.8385*x[2]*x[9]*x[14]+0.7456*x[2]*x[9]*x[15]-0.7123*x[2]*x[10]*x[11]-0.6571*x[2]*x[11]*x[14]+0.5353*x[2]*x[11]*x[15]+0.3885*x[2]*x[12]*x[15]-0.0392*x[2]*x[12]*x[16]+0.1639*x[2]*x[14]*x[17]+0.743*x[2]*x[17]*x[18]-0.9062*x[2]*x[18]*x[19]+0.046*x[3]*x[4]*x[5]+0.6789*x[3]*x[5]*x[8]+0.6364*x[3]*x[6]*x[18]+0.5109*x[3]*x[7]*x[10]-0.9037*x[3]*x[7]*x[12]+0.6412*x[3]*x[7]*x[13]+0.5074*x[3]*x[8]*x[16]+0.5014*x[3]*x[8]*x[19]+0.8031*x[3]*x[9]*x[13]-0.4723*x[3]*x[10]*x[14]-0.4142*x[3]*x[11]*x[12]-0.3313*x[3]*x[13]*x[16]+0.42*x[3]*x[14]*x[19]-0.331*x[3]*x[16]*x[18]+0.2647*x[3]*x[17]*x[19]-0.6521*x[4]*x[5]*x[11]-0.9763*x[4]*x[5]*x[20]-0.7118*x[4]*x[7]*x[12]+0.5369*x[4]*x[8]*x[13]-0.109*x[4]*x[8]*x[18]+0.5119*x[4]*x[9]*x[17]+0.3491*x[4]*x[9]*x[19]-0.674*x[4]*x[10]*x[16]+0.7718*x[4]*x[11]*x[12]+0.5684*x[4]*x[11]*x[15]-0.4685*x[4]*x[11]*x[16]+0.5499*x[4]*x[12]*x[14]+0.4118*x[4]*x[13]*x[17]-0.9943*x[4]*x[14]*x[20]+0.4626*x[4]*x[15]*x[17]+0.4191*x[4]*x[17]*x[20]-0.8262*x[4]*x[19]*x[20]+0.7971*x[5]*x[6]*x[14]+0.5528*x[5]*x[6]*x[19]-0.067*x[5]*x[7]*x[11]+0.6888*x[5]*x[7]*x[12]-0.1419*x[5]*x[7]*x[14]-0.5216*x[5]*x[8]*x[9]-0.9514*x[5]*x[9]*x[12]+0.5938*x[5]*x[9]*x[15]+0.1968*x[5]*x[9]*x[19]+0.23*x[5]*x[10]*x[13]+0.8146*x[5]*x[10]*x[15]+0.6454*x[5]*x[11]*x[13]-0.3714*x[5]*x[11]*x[17]+0.4888*x[5]*x[14]*x[17]+0.0723*x[5]*x[14]*x[19]-0.9745*x[5]*x[18]*x[19]+0.6956*x[5]*x[19]*x[20]-0.5229*x[6]*x[8]*x[10]+0.1237*x[6]*x[8]*x[13]-0.3698*x[6]*x[8]*x[18]+0.3242*x[6]*x[8]*x[20]+0.7953*x[6]*x[9]*x[12]+0.9132*x[6]*x[9]*x[16]+0.4716*x[6]*x[9]*x[19]+0.617*x[6]*x[10]*x[19]-0.9568*x[6]*x[11]*x[12]-0.679*x[6]*x[12]*x[17]+0.7479*x[6]*x[13]*x[15]-0.3513*x[6]*x[13]*x[16]-0.9346*x[6]*x[15]*x[20]+0.5786*x[6]*x[19]*x[20]+0.4909*x[7]*x[8]*x[12]+0.152*x[7]*x[8]*x[16]-0.0382*x[7]*x[9]*x[10]-0.4622*x[7]*x[10]*x[13]-0.5343*x[7]*x[11]*x[19]+0.2838*x[7]*x[14]*x[17]+0.5809*x[7]*x[14]*x[19]+0.0931*x[7]*x[18]*x[19]+0.8444*x[8]*x[9]*x[15]-0.157*x[8]*x[10]*x[15]-0.3874*x[8]*x[13]*x[15]-0.2835*x[8]*x[15]*x[20]-0.8295*x[9]*x[10]*x[13]-0.741*x[9]*x[11]*x[20]+0.1895*x[9]*x[14]*x[15]+0.5617*x[9]*x[14]*x[19]-0.9901*x[9]*x[14]*x[20]-0.5201*x[9]*x[16]*x[20]+0.5489*x[9]*x[17]*x[19]-0.5903*x[10]*x[11]*x[16]-0.6592*x[10]*x[13]*x[14]-0.2746*x[10]*x[13]*x[20]-0.4907*x[10]*x[14]*x[17]+0.9211*x[10]*x[19]*x[20]+0.758*x[11]*x[13]*x[16]-0.0184*x[11]*x[13]*x[17]-0.1788*x[11]*x[14]*x[15]+0.3277*x[11]*x[14]*x[17]+0.2226*x[11]*x[16]*x[17]+0.1189*x[12]*x[14]*x[17]+0.3888*x[12]*x[15]*x[16]-0.2652*x[12]*x[15]*x[19]+0.3158*x[12]*x[18]*x[20]+0.9805*x[13]*x[14]*x[19]+0.4481*x[13]*x[15]*x[17]+0.2199*x[13]*x[17]*x[19]-0.6986*x[14]*x[15]*x[18]-0.4451*x[14]*x[17]*x[19]-0.2751*x[14]*x[18]*x[20]-0.5555*x[17]*x[18]*x[19])+obj == 0.0)

m = m 		 # model get returned when including this script. 
