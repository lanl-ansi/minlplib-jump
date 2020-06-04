using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.6053*x[2]*x[4]-0.866*x[3]*x[10]-0.0778*x[6]*x[13]+0.8526*x[10]*x[19]+0.3982*x[16]*x[18]-0.3968*x[2]-0.8883*x[3]+0.9223*x[4]-0.1242*x[6]+0.4734*x[10]-0.5849*x[13]+0.4833*x[16]-0.108*x[18]-0.2282*x[19]+0.7148*x[2]*x[3]*x[12]-0.0199*x[2]*x[7]*x[12]+0.632*x[2]*x[8]*x[13]-0.0962*x[2]*x[11]*x[13]-0.7783*x[3]*x[4]*x[17]-0.294*x[3]*x[5]*x[11]+0.2373*x[3]*x[5]*x[12]+0.9371*x[3]*x[6]*x[11]+0.7411*x[3]*x[7]*x[8]+0.5616*x[3]*x[10]*x[12]+0.4194*x[3]*x[15]*x[17]+0.2808*x[5]*x[7]*x[14]-0.5932*x[5]*x[9]*x[17]+0.9605*x[5]*x[12]*x[14]-0.695*x[7]*x[8]*x[10]-0.6273*x[7]*x[13]*x[15]+0.1359*x[8]*x[11]*x[12]-0.1416*x[9]*x[14]*x[19]+0.3055*x[9]*x[16]*x[17]-0.8268*x[10]*x[14]*x[17]-0.8125*x[10]*x[14]*x[18]-0.9707*x[11]*x[12]*x[19]+0.2334*x[12]*x[14]*x[17]+0.8305*x[12]*x[15]*x[17]+0.8709*x[13]*x[14]*x[16]-0.8347*x[16]*x[17]*x[20]+0.8947*x[5]+0.5406*x[7]+0.4109*x[8]-0.6351*x[9]-0.9397*x[11]+0.9497*x[12]-0.506*x[14]+0.0759*x[15]-0.2194*x[17]-0.9304*x[20]+0.789*x[1]*x[2]*x[5]*x[15]-0.0819*x[1]*x[2]*x[14]*x[18]+0.7788*x[1]*x[3]*x[6]*x[15]-0.8308*x[1]*x[4]*x[9]*x[17]-0.1585*x[1]*x[4]*x[9]*x[20]-0.4542*x[1]*x[8]*x[12]*x[18]-0.4002*x[1]*x[11]*x[13]*x[15]+0.1217*x[2]*x[3]*x[13]*x[19]-0.8003*x[2]*x[4]*x[7]*x[17]+0.2725*x[2]*x[4]*x[8]*x[16]-0.5358*x[2]*x[4]*x[8]*x[18]-0.8294*x[2]*x[5]*x[9]*x[15]-0.5149*x[2]*x[5]*x[19]*x[20]+0.5242*x[2]*x[6]*x[7]*x[15]+0.5158*x[2]*x[6]*x[9]*x[16]-0.8103*x[2]*x[6]*x[10]*x[17]+0.6895*x[2]*x[7]*x[10]*x[15]-0.4442*x[2]*x[8]*x[13]*x[17]-0.574*x[2]*x[8]*x[14]*x[15]+0.4763*x[2]*x[9]*x[10]*x[19]+0.303*x[2]*x[12]*x[14]*x[15]+0.711*x[2]*x[16]*x[17]*x[19]+0.401*x[3]*x[4]*x[5]*x[15]-0.4159*x[3]*x[4]*x[6]*x[8]-0.9097*x[3]*x[4]*x[8]*x[17]+0.0599*x[3]*x[4]*x[10]*x[18]-0.3791*x[3]*x[4]*x[13]*x[20]-0.0629*x[3]*x[4]*x[14]*x[19]-0.9488*x[3]*x[5]*x[6]*x[16]+0.115*x[3]*x[5]*x[6]*x[19]+0.9675*x[3]*x[5]*x[8]*x[16]+0.6176*x[3]*x[5]*x[10]*x[11]+0.6919*x[3]*x[5]*x[13]*x[19]-0.4613*x[3]*x[5]*x[13]*x[20]+0.4171*x[3]*x[6]*x[19]*x[20]+0.3127*x[3]*x[7]*x[8]*x[20]+0.1843*x[3]*x[7]*x[11]*x[20]-0.6616*x[3]*x[8]*x[11]*x[19]-0.5081*x[3]*x[9]*x[11]*x[13]+0.369*x[3]*x[9]*x[11]*x[15]-0.1686*x[3]*x[13]*x[16]*x[18]+0.062*x[4]*x[5]*x[6]*x[11]+0.461*x[4]*x[5]*x[14]*x[17]-0.453*x[4]*x[5]*x[17]*x[18]-0.6757*x[4]*x[6]*x[7]*x[17]-0.9767*x[4]*x[7]*x[9]*x[17]+0.8519*x[4]*x[8]*x[9]*x[13]+0.3214*x[4]*x[8]*x[9]*x[15]+0.6466*x[4]*x[8]*x[13]*x[15]-0.2978*x[4]*x[9]*x[12]*x[13]+0.9923*x[4]*x[9]*x[18]*x[20]+0.3643*x[5]*x[6]*x[8]*x[17]-0.9951*x[5]*x[6]*x[12]*x[19]+0.5327*x[5]*x[6]*x[14]*x[18]+0.4142*x[5]*x[7]*x[10]*x[15]+0.5343*x[5]*x[7]*x[12]*x[17]-0.1625*x[5]*x[8]*x[11]*x[17]+0.5132*x[5]*x[8]*x[15]*x[16]-0.5612*x[5]*x[9]*x[10]*x[13]-0.6621*x[5]*x[9]*x[11]*x[17]+0.6861*x[5]*x[9]*x[13]*x[20]+0.5069*x[5]*x[10]*x[14]*x[15]-0.2354*x[5]*x[10]*x[14]*x[18]+0.9804*x[6]*x[7]*x[9]*x[19]+0.0669*x[6]*x[9]*x[10]*x[20]-0.3472*x[6]*x[10]*x[14]*x[18]+0.3094*x[6]*x[10]*x[18]*x[19]+0.3263*x[6]*x[13]*x[18]*x[20]+0.4593*x[6]*x[14]*x[16]*x[18]-0.0273*x[7]*x[8]*x[11]*x[15]+0.9962*x[7]*x[9]*x[10]*x[12]+0.1262*x[7]*x[9]*x[12]*x[15]-0.0409*x[7]*x[10]*x[13]*x[18]+0.581*x[7]*x[10]*x[15]*x[17]-0.9333*x[7]*x[14]*x[16]*x[19]-0.7036*x[8]*x[10]*x[11]*x[13]-0.4601*x[8]*x[11]*x[12]*x[18]-0.042*x[9]*x[12]*x[14]*x[15]-0.8275*x[9]*x[13]*x[16]*x[17]-0.7653*x[9]*x[15]*x[16]*x[17]-0.0249*x[9]*x[18]*x[19]*x[20]-0.1642*x[10]*x[11]*x[14]*x[15]-0.4916*x[10]*x[11]*x[14]*x[16]-0.612*x[10]*x[12]*x[14]*x[16]+0.209*x[10]*x[12]*x[16]*x[19]-0.4976*x[10]*x[16]*x[18]*x[20]+0.0388*x[11]*x[12]*x[15]*x[19]+0.943*x[11]*x[13]*x[15]*x[17]+0.0168*x[11]*x[14]*x[17]*x[18]+0.4788*x[12]*x[13]*x[17]*x[18]+0.726*x[14]*x[15]*x[16]*x[17]+0.3067*x[14]*x[15]*x[17]*x[18]-0.4454*x[1])+obj == 0.0)
@NLconstraint(m, e2, 0.962*x[2]*x[9]-0.9735*x[1]*x[8]-0.3998*x[5]*x[15]+0.646*x[5]*x[17]+0.0874*x[5]*x[19]-0.2795*x[6]*x[15]+0.8755*x[12]*x[19]-0.5229*x[14]*x[15]+0.7311*x[1]-0.6949*x[2]+0.8541*x[5]-0.2311*x[6]-0.0638*x[8]-0.0849*x[9]-0.8073*x[12]-0.0337*x[14]+0.2775*x[15]-0.8226*x[17]-0.2061*x[19]+0.5168*x[1]*x[4]*x[12]+0.1936*x[1]*x[7]*x[13]+0.9325*x[2]*x[5]*x[10]+0.9767*x[2]*x[7]*x[12]-0.3205*x[2]*x[16]*x[20]-0.6254*x[3]*x[5]*x[15]-0.3411*x[3]*x[8]*x[14]+0.3382*x[3]*x[8]*x[19]-0.581*x[3]*x[12]*x[17]-0.2676*x[4]*x[6]*x[8]+0.2131*x[4]*x[6]*x[18]-0.5451*x[4]*x[8]*x[16]+0.8336*x[5]*x[6]*x[7]-0.3224*x[5]*x[8]*x[9]+0.6217*x[5]*x[10]*x[15]+0.4651*x[5]*x[13]*x[19]+0.6625*x[6]*x[16]*x[18]-0.6354*x[10]*x[11]*x[18]-0.3068*x[10]*x[12]*x[16]-0.0092*x[3]-0.6192*x[4]-0.7485*x[7]-0.2575*x[10]+0.4078*x[11]-0.2331*x[13]-0.0262*x[16]-0.4413*x[18]+0.3945*x[20]+(-0.8592*x[1]*x[2]*x[5]*x[7])-0.4504*x[1]*x[2]*x[7]*x[16]+0.6866*x[1]*x[2]*x[10]*x[18]+0.2037*x[1]*x[2]*x[12]*x[14]+0.3102*x[1]*x[3]*x[5]*x[12]-0.8097*x[1]*x[3]*x[5]*x[19]-0.4703*x[1]*x[3]*x[11]*x[15]-0.3555*x[1]*x[3]*x[15]*x[18]+0.8317*x[1]*x[4]*x[5]*x[10]+0.6929*x[1]*x[5]*x[10]*x[17]-0.4005*x[1]*x[6]*x[13]*x[16]-0.608*x[1]*x[7]*x[16]*x[20]-0.9091*x[1]*x[9]*x[16]*x[19]-0.5442*x[1]*x[12]*x[14]*x[17]+0.6155*x[1]*x[13]*x[17]*x[18]-0.7398*x[1]*x[15]*x[17]*x[18]+0.5255*x[1]*x[17]*x[19]*x[20]-0.4531*x[2]*x[3]*x[7]*x[9]-0.4899*x[2]*x[3]*x[10]*x[19]+0.1404*x[2]*x[3]*x[15]*x[17]-0.1072*x[2]*x[4]*x[5]*x[8]+0.5817*x[2]*x[4]*x[5]*x[10]-0.9526*x[2]*x[4]*x[7]*x[12]+0.6305*x[2]*x[4]*x[7]*x[15]-0.9996*x[2]*x[5]*x[9]*x[10]-0.6712*x[2]*x[6]*x[9]*x[12]-0.1267*x[2]*x[6]*x[12]*x[15]-0.0713*x[2]*x[8]*x[9]*x[12]+0.6391*x[2]*x[8]*x[9]*x[18]+0.6041*x[2]*x[8]*x[10]*x[19]-0.0724*x[2]*x[8]*x[16]*x[18]-0.2894*x[2]*x[9]*x[14]*x[20]-0.1142*x[2]*x[9]*x[18]*x[20]-0.7583*x[2]*x[10]*x[13]*x[17]-0.8456*x[2]*x[11]*x[12]*x[17]-0.4408*x[2]*x[12]*x[15]*x[19]-0.5487*x[3]*x[4]*x[5]*x[6]-0.9902*x[3]*x[4]*x[11]*x[12]+0.85*x[3]*x[4]*x[11]*x[15]+0.4369*x[3]*x[4]*x[14]*x[15]-0.6016*x[3]*x[5]*x[6]*x[18]-0.9933*x[3]*x[5]*x[7]*x[15]-0.5285*x[3]*x[5]*x[10]*x[16]+0.8047*x[3]*x[5]*x[12]*x[15]+0.381*x[3]*x[5]*x[17]*x[19]-0.0079*x[3]*x[7]*x[8]*x[9]-0.6588*x[3]*x[8]*x[9]*x[20]+0.5725*x[3]*x[8]*x[10]*x[19]-0.442*x[3]*x[11]*x[15]*x[18]-0.851*x[3]*x[12]*x[13]*x[18]-0.0142*x[3]*x[15]*x[16]*x[18]-0.4163*x[4]*x[5]*x[9]*x[15]-0.4846*x[4]*x[5]*x[17]*x[18]-0.9152*x[4]*x[6]*x[7]*x[15]+0.8632*x[4]*x[6]*x[8]*x[18]+0.2211*x[4]*x[6]*x[15]*x[20]-0.0389*x[4]*x[8]*x[10]*x[18]+0.4535*x[4]*x[8]*x[13]*x[18]-0.2609*x[4]*x[9]*x[10]*x[19]-0.8261*x[4]*x[9]*x[12]*x[16]+0.5635*x[4]*x[10]*x[11]*x[14]-0.4759*x[4]*x[10]*x[11]*x[19]+0.3215*x[4]*x[13]*x[18]*x[19]-0.4268*x[4]*x[14]*x[15]*x[17]+0.1004*x[4]*x[14]*x[16]*x[18]+0.2601*x[5]*x[6]*x[14]*x[15]+0.8775*x[5]*x[7]*x[13]*x[19]-0.8783*x[5]*x[8]*x[14]*x[18]+0.2355*x[5]*x[8]*x[15]*x[18]+0.6137*x[5]*x[10]*x[12]*x[15]+0.8365*x[5]*x[11]*x[12]*x[17]+0.598*x[5]*x[11]*x[18]*x[20]-0.4716*x[5]*x[12]*x[17]*x[19]-0.6181*x[5]*x[13]*x[14]*x[19]+0.0186*x[6]*x[7]*x[9]*x[10]+0.9922*x[6]*x[8]*x[10]*x[20]+0.0601*x[6]*x[9]*x[18]*x[19]+0.4636*x[6]*x[10]*x[15]*x[20]+0.8188*x[6]*x[13]*x[14]*x[17]+0.9468*x[7]*x[11]*x[13]*x[15]-0.1294*x[7]*x[12]*x[13]*x[14]+0.6278*x[7]*x[14]*x[16]*x[19]+0.8367*x[8]*x[10]*x[14]*x[20]+0.8204*x[8]*x[11]*x[16]*x[19]+0.247*x[9]*x[10]*x[13]*x[16]-0.6065*x[9]*x[11]*x[12]*x[14]+0.3191*x[10]*x[11]*x[12]*x[16]-0.7018*x[10]*x[14]*x[15]*x[17]-0.9257*x[10]*x[14]*x[15]*x[18]-0.3585*x[11]*x[12]*x[16]*x[17]-0.2493*x[11]*x[13]*x[14]*x[19]-0.0686*x[11]*x[13]*x[15]*x[16]+0.8787*x[11]*x[13]*x[17]*x[18]+0.1481*x[12]*x[13]*x[14]*x[16]+0.4228*x[12]*x[16]*x[17]*x[18]+0.1454*x[13]*x[15]*x[16]*x[18] <= 42.596)
@NLconstraint(m, e3, (-0.3624*x[1]*x[14])-0.5223*x[2]*x[3]+0.8792*x[4]*x[17]+0.767*x[5]*x[10]-0.1034*x[5]*x[18]+0.7485*x[6]*x[8]+0.091*x[6]*x[9]-0.4341*x[10]*x[18]-0.567*x[13]*x[17]-0.6744*x[1]+0.0228*x[2]+0.1739*x[3]-0.9427*x[4]-0.3949*x[5]+0.7939*x[6]+0.2777*x[8]+0.0149*x[9]-0.6892*x[10]-0.0705*x[13]+0.1491*x[14]+0.1648*x[17]+0.2213*x[18]+0.6385*x[2]*x[7]*x[8]-0.2758*x[2]*x[5]*x[16]+0.892*x[2]*x[9]*x[14]-0.7281*x[2]*x[10]*x[15]+0.1687*x[2]*x[12]*x[17]+0.5745*x[3]*x[10]*x[18]-0.3416*x[4]*x[6]*x[15]+0.1126*x[4]*x[6]*x[19]-0.0094*x[4]*x[14]*x[15]+0.3387*x[5]*x[6]*x[10]+0.7296*x[6]*x[13]*x[17]+0.4127*x[8]*x[9]*x[18]-0.7297*x[9]*x[10]*x[20]-0.4384*x[9]*x[11]*x[16]+0.9862*x[9]*x[12]*x[19]-0.3341*x[12]*x[14]*x[18]-0.6582*x[14]*x[19]*x[20]-0.5345*x[7]-0.7995*x[11]-0.6042*x[12]-0.7368*x[15]-0.3531*x[16]-0.5844*x[19]-0.8356*x[20]+0.5278*x[1]*x[3]*x[7]*x[11]-0.7543*x[1]*x[2]*x[19]*x[20]+0.4153*x[1]*x[6]*x[11]*x[17]-0.8947*x[1]*x[7]*x[9]*x[16]-0.0736*x[1]*x[7]*x[10]*x[15]+0.5707*x[1]*x[7]*x[10]*x[17]+0.5808*x[1]*x[7]*x[14]*x[15]-0.1762*x[1]*x[8]*x[9]*x[11]-0.3266*x[1]*x[8]*x[15]*x[18]+0.6354*x[2]*x[3]*x[4]*x[17]+0.6918*x[2]*x[3]*x[8]*x[9]-0.716*x[2]*x[3]*x[9]*x[14]+0.5703*x[2]*x[3]*x[17]*x[18]+0.2718*x[2]*x[4]*x[11]*x[12]+0.3688*x[2]*x[4]*x[12]*x[14]-0.0869*x[2]*x[4]*x[13]*x[18]+0.3682*x[2]*x[5]*x[7]*x[15]+0.0593*x[2]*x[5]*x[7]*x[19]-0.5055*x[2]*x[5]*x[12]*x[14]-0.3284*x[2]*x[5]*x[13]*x[19]-0.2468*x[2]*x[6]*x[10]*x[19]-0.7298*x[2]*x[7]*x[12]*x[13]-0.5204*x[2]*x[8]*x[10]*x[13]+0.8347*x[2]*x[9]*x[10]*x[17]-0.6896*x[2]*x[10]*x[11]*x[14]-0.5552*x[2]*x[10]*x[18]*x[19]-0.0521*x[2]*x[16]*x[18]*x[19]-0.7192*x[3]*x[6]*x[11]*x[17]+0.4562*x[3]*x[7]*x[17]*x[19]-0.4849*x[3]*x[8]*x[10]*x[16]+0.7727*x[3]*x[10]*x[11]*x[13]+0.472*x[3]*x[13]*x[15]*x[20]+0.5512*x[3]*x[13]*x[17]*x[19]+0.434*x[4]*x[5]*x[6]*x[14]+0.054*x[4]*x[5]*x[7]*x[8]-0.7674*x[4]*x[6]*x[10]*x[15]-0.6368*x[4]*x[7]*x[10]*x[11]-0.4931*x[4]*x[7]*x[10]*x[18]+0.1387*x[4]*x[8]*x[9]*x[17]+0.5638*x[4]*x[8]*x[9]*x[18]+0.9874*x[4]*x[8]*x[10]*x[19]+0.45*x[4]*x[8]*x[12]*x[14]-0.6423*x[4]*x[9]*x[14]*x[19]-0.1595*x[4]*x[10]*x[11]*x[12]+0.353*x[4]*x[10]*x[15]*x[17]-0.5355*x[4]*x[10]*x[17]*x[18]-0.0721*x[4]*x[11]*x[13]*x[16]+0.7599*x[5]*x[6]*x[8]*x[15]+0.8109*x[5]*x[6]*x[11]*x[14]+0.2964*x[5]*x[6]*x[15]*x[19]-0.4608*x[5]*x[7]*x[8]*x[16]-0.1295*x[5]*x[7]*x[9]*x[13]-0.6986*x[5]*x[7]*x[10]*x[17]+0.7661*x[5]*x[7]*x[13]*x[14]+0.944*x[5]*x[7]*x[13]*x[20]-0.8159*x[5]*x[9]*x[14]*x[16]-0.4053*x[6]*x[7]*x[11]*x[13]+0.2074*x[6]*x[7]*x[13]*x[20]-0.4934*x[6]*x[9]*x[10]*x[18]-0.9771*x[6]*x[11]*x[12]*x[16]-0.9588*x[6]*x[12]*x[15]*x[16]+0.6373*x[6]*x[12]*x[16]*x[18]-0.2817*x[7]*x[8]*x[10]*x[19]-0.9569*x[7]*x[8]*x[14]*x[17]-0.5162*x[7]*x[10]*x[11]*x[16]+0.419*x[7]*x[10]*x[12]*x[18]-0.4979*x[7]*x[10]*x[13]*x[15]+0.1934*x[7]*x[10]*x[15]*x[17]+0.9055*x[7]*x[11]*x[13]*x[16]-0.2995*x[7]*x[13]*x[15]*x[20]-0.3067*x[7]*x[13]*x[16]*x[17]+0.8302*x[7]*x[14]*x[15]*x[17]+0.1597*x[7]*x[16]*x[18]*x[19]-0.9123*x[8]*x[9]*x[12]*x[14]-0.6576*x[8]*x[9]*x[13]*x[19]+0.6859*x[8]*x[10]*x[13]*x[17]-0.151*x[8]*x[13]*x[15]*x[17]-0.9278*x[8]*x[16]*x[17]*x[18]+0.7485*x[9]*x[11]*x[13]*x[15]-0.7808*x[9]*x[11]*x[15]*x[19]+0.2788*x[9]*x[13]*x[14]*x[18]-0.0015*x[9]*x[13]*x[16]*x[17]-0.5659*x[9]*x[15]*x[17]*x[18]+0.6348*x[9]*x[15]*x[18]*x[20]-0.7353*x[9]*x[16]*x[17]*x[18]+0.4922*x[10]*x[11]*x[12]*x[20]-0.9189*x[10]*x[11]*x[15]*x[16]-0.5605*x[10]*x[15]*x[16]*x[17]+0.5894*x[11]*x[12]*x[13]*x[17]-0.1559*x[11]*x[12]*x[15]*x[18]-0.5731*x[11]*x[13]*x[14]*x[17]+0.7468*x[11]*x[14]*x[15]*x[19]-0.5869*x[11]*x[14]*x[17]*x[19]-0.0473*x[12]*x[15]*x[16]*x[17]+0.469*x[13]*x[15]*x[17]*x[18]-0.436*x[14]*x[15]*x[16]*x[18]-0.4536*x[14]*x[16]*x[17]*x[20] <= 43.274)
@NLconstraint(m, e4, 0.5727*x[2]*x[4]-0.0917*x[1]*x[15]+0.3112*x[2]*x[6]+0.9131*x[3]*x[17]+0.4679*x[4]*x[7]-0.3846*x[4]*x[13]-0.4531*x[5]*x[15]-0.4153*x[7]*x[19]+0.3075*x[1]-0.6163*x[2]-0.0034*x[3]-0.63*x[4]-0.2754*x[5]+0.5121*x[6]+0.2152*x[7]+0.213*x[13]-0.067*x[15]+0.7167*x[17]-0.8775*x[19]+(-0.2999*x[2]*x[3]*x[16])-0.0122*x[2]*x[6]*x[10]+0.6629*x[2]*x[10]*x[18]-0.0082*x[3]*x[6]*x[7]+0.9275*x[3]*x[6]*x[18]-0.3261*x[3]*x[7]*x[18]+0.9505*x[3]*x[17]*x[18]-0.5944*x[4]*x[10]*x[12]+0.3784*x[4]*x[12]*x[18]-0.334*x[5]*x[11]*x[19]-0.2012*x[6]*x[11]*x[14]-0.1002*x[6]*x[15]*x[18]+0.2591*x[6]*x[16]*x[20]+0.3977*x[7]*x[13]*x[14]-0.9916*x[7]*x[17]*x[20]-0.5945*x[8]*x[9]*x[18]+0.8737*x[8]*x[12]*x[13]+0.8489*x[8]*x[15]*x[16]-0.7251*x[8]*x[15]*x[18]-0.8383*x[9]*x[11]*x[16]+0.5275*x[9]*x[17]*x[18]-0.4685*x[9]*x[17]*x[19]+0.1299*x[10]*x[11]*x[14]-0.795*x[10]*x[14]*x[18]+0.37*x[11]*x[13]*x[18]-0.0487*x[12]*x[16]*x[17]+0.7514*x[13]*x[16]*x[17]-0.1023*x[14]*x[16]*x[20]+0.8094*x[8]-0.3689*x[9]-0.0813*x[10]+0.5033*x[11]-0.0404*x[12]-0.3378*x[14]-0.2157*x[16]-0.9263*x[18]+0.6956*x[20]+0.8432*x[1]*x[2]*x[12]*x[15]-0.7012*x[1]*x[2]*x[4]*x[8]+0.5543*x[1]*x[4]*x[8]*x[12]+0.9226*x[1]*x[5]*x[11]*x[18]+0.0919*x[1]*x[7]*x[16]*x[18]+0.7142*x[1]*x[8]*x[17]*x[20]+0.2495*x[1]*x[12]*x[14]*x[17]+0.6881*x[2]*x[3]*x[6]*x[16]-0.5795*x[2]*x[3]*x[7]*x[17]-0.208*x[2]*x[3]*x[8]*x[11]-0.0141*x[2]*x[3]*x[8]*x[16]+0.8574*x[2]*x[3]*x[10]*x[13]-0.1293*x[2]*x[5]*x[7]*x[8]+0.0602*x[2]*x[5]*x[9]*x[15]+0.3822*x[2]*x[5]*x[13]*x[16]-0.6684*x[2]*x[6]*x[10]*x[16]+0.9552*x[2]*x[6]*x[11]*x[16]-0.9848*x[2]*x[7]*x[8]*x[16]+0.4508*x[2]*x[13]*x[18]*x[19]+0.5434*x[3]*x[4]*x[9]*x[15]+0.3612*x[3]*x[5]*x[9]*x[16]+0.1233*x[3]*x[5]*x[13]*x[19]+0.4703*x[3]*x[5]*x[16]*x[17]-0.9888*x[3]*x[6]*x[7]*x[11]-0.1486*x[3]*x[6]*x[16]*x[17]+0.4542*x[3]*x[7]*x[8]*x[16]+0.5057*x[3]*x[7]*x[8]*x[19]-0.0297*x[3]*x[7]*x[10]*x[17]+0.1751*x[3]*x[7]*x[14]*x[18]-0.6037*x[3]*x[8]*x[12]*x[15]+0.3111*x[3]*x[8]*x[13]*x[18]+0.0146*x[3]*x[9]*x[14]*x[18]+0.2736*x[3]*x[9]*x[17]*x[19]+0.5106*x[3]*x[11]*x[12]*x[16]-0.0377*x[3]*x[13]*x[17]*x[19]-0.177*x[3]*x[13]*x[18]*x[19]-0.6056*x[3]*x[16]*x[18]*x[19]-0.6378*x[4]*x[5]*x[8]*x[10]-0.1354*x[4]*x[5]*x[14]*x[18]-0.8757*x[4]*x[6]*x[7]*x[18]-0.6855*x[4]*x[7]*x[8]*x[10]+0.7133*x[4]*x[8]*x[11]*x[15]+0.1419*x[4]*x[8]*x[12]*x[16]+0.8148*x[4]*x[8]*x[12]*x[18]-0.1282*x[4]*x[8]*x[13]*x[19]-0.5477*x[4]*x[9]*x[17]*x[19]-0.1972*x[4]*x[10]*x[15]*x[16]+0.6236*x[4]*x[12]*x[13]*x[18]-0.4935*x[4]*x[12]*x[15]*x[16]+0.0527*x[5]*x[6]*x[9]*x[10]+0.2493*x[5]*x[7]*x[8]*x[14]-0.358*x[5]*x[7]*x[10]*x[11]-0.706*x[5]*x[7]*x[16]*x[17]-0.898*x[5]*x[8]*x[9]*x[15]-0.2923*x[5]*x[8]*x[12]*x[14]-0.6236*x[5]*x[8]*x[13]*x[15]+0.8637*x[5]*x[8]*x[14]*x[18]+0.9365*x[5]*x[12]*x[16]*x[20]-0.0426*x[6]*x[7]*x[10]*x[19]-0.8612*x[6]*x[8]*x[9]*x[10]-0.3856*x[6]*x[8]*x[11]*x[16]+0.9308*x[6]*x[8]*x[16]*x[18]+0.9139*x[6]*x[9]*x[16]*x[19]+0.8791*x[6]*x[10]*x[11]*x[12]+0.2858*x[6]*x[10]*x[12]*x[14]-0.8796*x[6]*x[11]*x[17]*x[20]+0.8281*x[6]*x[14]*x[17]*x[20]+0.385*x[7]*x[8]*x[11]*x[19]+0.6825*x[7]*x[8]*x[12]*x[16]-0.7997*x[7]*x[14]*x[18]*x[19]+0.2339*x[8]*x[10]*x[12]*x[18]+0.8962*x[8]*x[10]*x[18]*x[19]-0.1497*x[8]*x[11]*x[18]*x[19]+0.4128*x[8]*x[15]*x[16]*x[18]-0.7144*x[9]*x[11]*x[12]*x[17]-0.1821*x[9]*x[11]*x[14]*x[19]-0.0655*x[9]*x[12]*x[18]*x[20]+0.1876*x[9]*x[14]*x[16]*x[17]+0.0028*x[10]*x[11]*x[18]*x[19]+0.6343*x[10]*x[11]*x[19]*x[20]+0.2294*x[10]*x[12]*x[14]*x[15]-0.8842*x[10]*x[12]*x[14]*x[17]+0.752*x[10]*x[14]*x[15]*x[17]-0.9689*x[10]*x[14]*x[16]*x[19]+0.3751*x[10]*x[16]*x[17]*x[18]+0.4637*x[11]*x[13]*x[14]*x[20]-0.8089*x[12]*x[13]*x[16]*x[19] <= 30.251)
@NLconstraint(m, e5, 0.8302*x[3]*x[11]-0.4464*x[4]*x[15]-0.4972*x[17]*x[18]+0.8455*x[3]-0.1464*x[4]-0.4668*x[11]-0.8566*x[15]-0.0565*x[17]+0.6892*x[18]+(-0.5291*x[1]*x[4]*x[7])-0.8621*x[1]*x[5]*x[9]+0.3238*x[2]*x[3]*x[6]+0.2361*x[2]*x[5]*x[7]-0.0466*x[2]*x[6]*x[13]+0.1704*x[2]*x[13]*x[14]+0.7911*x[3]*x[5]*x[8]-0.2866*x[3]*x[12]*x[15]+0.2237*x[3]*x[13]*x[18]+0.2791*x[4]*x[7]*x[8]-0.3959*x[4]*x[11]*x[15]-0.4188*x[4]*x[12]*x[18]-0.5918*x[5]*x[16]*x[18]-0.8093*x[6]*x[9]*x[12]+0.7855*x[6]*x[14]*x[19]+0.3002*x[7]*x[10]*x[17]-0.8768*x[8]*x[17]*x[20]+0.9598*x[9]*x[12]*x[16]+0.6314*x[11]*x[12]*x[16]-0.649*x[11]*x[16]*x[17]+0.13*x[12]*x[13]*x[17]+0.3214*x[12]*x[17]*x[19]+0.7044*x[15]*x[16]*x[17]+0.9009*x[1]+0.9747*x[2]-0.2557*x[5]+0.5424*x[6]-0.2344*x[7]-0.6199*x[8]+0.8047*x[9]+0.2132*x[10]+0.0168*x[12]+0.4419*x[13]-0.4028*x[14]-0.1176*x[16]-0.3161*x[19]-0.8049*x[20]+0.7994*x[1]*x[3]*x[6]*x[9]-0.1326*x[1]*x[2]*x[6]*x[7]-0.0411*x[1]*x[3]*x[9]*x[18]+0.7529*x[1]*x[4]*x[7]*x[13]+0.6773*x[1]*x[4]*x[12]*x[13]+0.3825*x[1]*x[6]*x[8]*x[15]+0.3327*x[1]*x[6]*x[8]*x[17]+0.2605*x[1]*x[7]*x[8]*x[13]+0.767*x[1]*x[7]*x[9]*x[13]+0.6182*x[1]*x[7]*x[11]*x[14]-0.2636*x[1]*x[7]*x[12]*x[15]-0.5373*x[1]*x[8]*x[15]*x[20]-0.4777*x[1]*x[9]*x[12]*x[19]-0.7741*x[1]*x[9]*x[13]*x[14]+0.2741*x[1]*x[9]*x[17]*x[18]+0.5771*x[1]*x[15]*x[16]*x[18]-0.058*x[1]*x[16]*x[17]*x[18]-0.6964*x[2]*x[3]*x[4]*x[12]+0.7093*x[2]*x[3]*x[6]*x[17]-0.4074*x[2]*x[4]*x[8]*x[18]+0.8549*x[2]*x[4]*x[13]*x[16]-0.3033*x[2]*x[4]*x[15]*x[19]-0.8145*x[2]*x[5]*x[9]*x[11]-0.4512*x[2]*x[5]*x[12]*x[20]-0.3432*x[2]*x[6]*x[10]*x[13]+0.7685*x[2]*x[6]*x[11]*x[15]-0.3797*x[2]*x[7]*x[9]*x[18]+0.8432*x[2]*x[7]*x[10]*x[12]-0.4902*x[2]*x[7]*x[10]*x[18]+0.4298*x[2]*x[7]*x[11]*x[16]+0.2578*x[2]*x[9]*x[10]*x[14]-0.0274*x[2]*x[9]*x[12]*x[13]-0.6376*x[2]*x[10]*x[11]*x[15]+0.8696*x[2]*x[11]*x[14]*x[15]-0.9144*x[2]*x[12]*x[16]*x[20]+0.9699*x[3]*x[4]*x[9]*x[13]-0.9749*x[3]*x[5]*x[7]*x[16]+0.5811*x[3]*x[5]*x[10]*x[19]+0.872*x[3]*x[5]*x[14]*x[20]-0.7675*x[3]*x[5]*x[16]*x[17]-0.9417*x[3]*x[6]*x[8]*x[9]-0.3309*x[3]*x[8]*x[10]*x[13]-0.1484*x[3]*x[8]*x[12]*x[14]+0.6425*x[3]*x[8]*x[13]*x[16]-0.6116*x[3]*x[10]*x[11]*x[19]+0.2838*x[3]*x[11]*x[12]*x[13]+0.5418*x[3]*x[11]*x[15]*x[20]-0.3075*x[3]*x[15]*x[17]*x[18]+0.4416*x[4]*x[5]*x[9]*x[16]-0.7463*x[4]*x[5]*x[9]*x[18]+0.2386*x[4]*x[5]*x[17]*x[19]-0.7197*x[4]*x[6]*x[7]*x[12]+0.6566*x[4]*x[6]*x[7]*x[17]+0.4413*x[4]*x[6]*x[8]*x[20]+0.8894*x[4]*x[6]*x[11]*x[19]-0.0337*x[4]*x[8]*x[9]*x[11]-0.8363*x[4]*x[10]*x[11]*x[18]-0.4026*x[4]*x[11]*x[13]*x[16]-0.5577*x[4]*x[13]*x[14]*x[16]-0.2656*x[4]*x[16]*x[17]*x[18]+0.3721*x[5]*x[6]*x[16]*x[19]-0.7101*x[5]*x[7]*x[9]*x[14]+0.1051*x[5]*x[7]*x[11]*x[17]+0.2508*x[5]*x[8]*x[18]*x[19]+0.314*x[5]*x[9]*x[17]*x[19]-0.7102*x[5]*x[10]*x[12]*x[16]-0.2534*x[5]*x[13]*x[14]*x[19]+0.1786*x[6]*x[8]*x[11]*x[17]+0.1648*x[6]*x[8]*x[18]*x[19]-0.2505*x[6]*x[9]*x[10]*x[19]-0.6845*x[6]*x[9]*x[12]*x[17]+0.9867*x[6]*x[9]*x[13]*x[19]+0.8248*x[6]*x[10]*x[12]*x[18]+0.2198*x[6]*x[10]*x[14]*x[18]+0.6974*x[6]*x[11]*x[14]*x[15]+0.4188*x[7]*x[8]*x[10]*x[12]+0.132*x[7]*x[8]*x[10]*x[19]-0.7216*x[7]*x[8]*x[12]*x[18]+0.6464*x[7]*x[8]*x[16]*x[17]-0.1025*x[7]*x[8]*x[17]*x[20]-0.4547*x[7]*x[9]*x[11]*x[17]-0.9133*x[7]*x[9]*x[14]*x[15]+0.046*x[7]*x[13]*x[14]*x[15]+0.9019*x[8]*x[11]*x[14]*x[17]-0.8243*x[8]*x[12]*x[18]*x[19]+0.6607*x[8]*x[13]*x[14]*x[18]+0.9544*x[8]*x[13]*x[16]*x[17]+0.8266*x[8]*x[15]*x[16]*x[18]+0.7078*x[8]*x[17]*x[18]*x[19]-0.1858*x[9]*x[11]*x[16]*x[20]-0.4105*x[9]*x[12]*x[13]*x[18]-0.3839*x[9]*x[13]*x[18]*x[19]+0.6478*x[9]*x[14]*x[15]*x[20]+0.0689*x[9]*x[16]*x[17]*x[18]+0.5463*x[9]*x[16]*x[18]*x[20]-0.2724*x[10]*x[14]*x[15]*x[17]+0.7015*x[16]*x[17]*x[19]*x[20] <= 14.828)

m = m 		 # model get returned when including this script. 
