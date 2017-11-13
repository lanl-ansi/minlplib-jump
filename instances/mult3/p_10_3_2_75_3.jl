using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
@variable(m, x[x_Idx])
setlowerbound(x[5], 0.0)
setlowerbound(x[9], 0.0)
setlowerbound(x[1], 0.0)
setlowerbound(x[7], 0.0)
setlowerbound(x[8], 0.0)
setlowerbound(x[4], 0.0)
setlowerbound(x[2], 0.0)
setlowerbound(x[6], 0.0)
setlowerbound(x[10], 0.0)
setlowerbound(x[3], 0.0)
setupperbound(x[1], 1.0)
setupperbound(x[2], 1.0)
setupperbound(x[3], 1.0)
setupperbound(x[4], 1.0)
setupperbound(x[5], 1.0)
setupperbound(x[6], 1.0)
setupperbound(x[7], 1.0)
setupperbound(x[8], 1.0)
setupperbound(x[9], 1.0)
setupperbound(x[10], 1.0)


# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.6545*x[2]^2+0.7861*x[2]+0.8551*x[3]^3-0.5046*x[3]+0.3074*x[5]^2+0.8556*x[5]+0.53*x[6]^3+0.8199*x[6]^2+0.0273*x[6]+0.8344*x[7]^2-0.0524*x[7]+0.057*x[9]^2-0.4081*x[9]+0.0216*x[10]^2+0.9513*x[10]+0.8909*x[1]*x[2]+0.7414*x[1]*x[3]+0.7389*x[1]*x[4]-0.0679*x[1]*x[5]-0.3321*x[1]*x[7]-0.3114*x[1]*x[8]-0.6898*x[1]*x[9]+0.3819*x[2]*x[3]-0.8835*x[2]*x[4]-0.0587*x[2]*x[5]+0.1818*x[2]*x[6]+0.1038*x[2]*x[7]-0.977*x[2]*x[8]+0.292*x[2]*x[9]+0.1866*x[3]*x[4]-0.9844*x[3]*x[5]+0.7607*x[3]*x[6]+0.5768*x[3]*x[7]-0.623*x[3]*x[8]+0.1732*x[3]*x[9]-0.2759*x[4]*x[5]+0.1122*x[4]*x[6]+0.5059*x[4]*x[7]-0.4248*x[4]*x[8]+0.4571*x[4]*x[9]+0.7343*x[5]*x[6]-0.7807*x[5]*x[7]-0.7356*x[5]*x[8]-0.8454*x[5]*x[9]-0.7548*x[5]*x[10]-0.6842*x[6]*x[7]+0.3917*x[6]*x[8]-0.3625*x[6]*x[9]+0.7388*x[7]*x[8]+0.3336*x[7]*x[9]-0.2359*x[8]*x[9]+0.7762*x[8]*x[10]-0.6141*x[1]-0.2539*x[4]-0.3206*x[8]+0.6963*x[1]^2*x[3]-0.933*x[1]^2*x[4]+0.1185*x[1]^2*x[6]+0.7492*x[1]^2*x[8]+0.3234*x[2]^2*x[1]+0.5872*x[2]^2*x[4]-0.6824*x[2]^2*x[6]-0.6011*x[2]^2*x[7]-0.1357*x[2]^2*x[9]-0.0223*x[2]^2*x[10]-0.1545*x[3]^2*x[1]-0.5724*x[3]^2*x[4]-0.5412*x[3]^2*x[5]-0.9664*x[3]^2*x[7]-0.1594*x[3]^2*x[8]+0.8131*x[3]^2*x[10]-0.4258*x[4]^2*x[2]-0.2523*x[4]^2*x[3]+0.3752*x[4]^2*x[5]-0.7762*x[4]^2*x[6]-0.2842*x[4]^2*x[8]-0.3807*x[5]^2*x[1]-0.6837*x[5]^2*x[3]-0.1727*x[5]^2*x[4]-0.6148*x[5]^2*x[6]-0.8058*x[5]^2*x[7]-0.6922*x[5]^2*x[8]-0.7792*x[5]^2*x[9]-0.9265*x[5]^2*x[10]+0.868*x[6]^2*x[1]-0.7488*x[6]^2*x[2]+0.3077*x[6]^2*x[3]+0.4594*x[6]^2*x[4]-0.9747*x[6]^2*x[5]-0.8688*x[6]^2*x[7]+0.4927*x[6]^2*x[8]+0.8368*x[7]^2*x[1]-0.6991*x[7]^2*x[2]+0.1466*x[7]^2*x[3]-0.0333*x[7]^2*x[4]-0.5072*x[7]^2*x[5]+0.106*x[7]^2*x[8]+0.2547*x[7]^2*x[10]+0.8767*x[8]^2*x[1]+0.0828*x[8]^2*x[2]-0.3124*x[8]^2*x[4]+0.5357*x[8]^2*x[5]+0.3433*x[8]^2*x[6]-0.4325*x[8]^2*x[7]-0.757*x[8]^2*x[10]-0.4604*x[9]^2*x[5]-0.0146*x[9]^2*x[6]-0.0059*x[9]^2*x[7]+0.4879*x[9]^2*x[10]-0.3762*x[10]^2*x[4]+(-0.3899*x[1]*x[2]*x[3])-0.5559*x[1]*x[2]*x[4]-0.7252*x[1]*x[2]*x[5]+0.7841*x[1]*x[2]*x[6]-0.8729*x[1]*x[2]*x[8]+0.9295*x[1]*x[3]*x[4]-0.8417*x[1]*x[3]*x[6]+0.2264*x[1]*x[3]*x[7]-0.3939*x[1]*x[3]*x[9]+0.5407*x[1]*x[4]*x[5]-0.3833*x[1]*x[4]*x[6]+0.413*x[1]*x[4]*x[7]+0.9011*x[1]*x[4]*x[8]-0.5342*x[1]*x[5]*x[6]+0.8711*x[1]*x[5]*x[7]-0.8511*x[1]*x[5]*x[8]+0.4632*x[1]*x[5]*x[9]-0.4213*x[1]*x[6]*x[7]-0.2486*x[1]*x[6]*x[9]+0.2965*x[1]*x[6]*x[10]+0.4653*x[1]*x[7]*x[8]-0.2245*x[1]*x[7]*x[9]+0.0777*x[1]*x[8]*x[9]+0.8713*x[1]*x[9]*x[10]-0.0141*x[2]*x[3]*x[4]-0.2537*x[2]*x[3]*x[5]+0.9914*x[2]*x[3]*x[6]-0.9346*x[2]*x[3]*x[7]+0.9689*x[2]*x[3]*x[8]-0.0859*x[2]*x[3]*x[9]+0.801*x[2]*x[3]*x[10]-0.589*x[2]*x[4]*x[5]-0.4816*x[2]*x[4]*x[7]-0.4233*x[2]*x[4]*x[8]+0.1721*x[2]*x[4]*x[9]-0.2638*x[2]*x[4]*x[10]-0.4405*x[2]*x[5]*x[6]-0.3714*x[2]*x[5]*x[7]+0.1276*x[2]*x[5]*x[8]+0.0216*x[2]*x[5]*x[9]-0.8981*x[2]*x[5]*x[10]+0.744*x[2]*x[6]*x[7]+0.3319*x[2]*x[6]*x[8]-0.433*x[2]*x[6]*x[9]+0.9555*x[2]*x[6]*x[10]+0.3938*x[2]*x[7]*x[8]+0.3928*x[2]*x[7]*x[9]-0.853*x[2]*x[8]*x[9]-0.1144*x[2]*x[8]*x[10]+0.9635*x[2]*x[9]*x[10]+0.4879*x[3]*x[4]*x[5]+0.2736*x[3]*x[4]*x[6]-0.1787*x[3]*x[4]*x[7]-0.8829*x[3]*x[4]*x[8]+0.7308*x[3]*x[4]*x[9]+0.0552*x[3]*x[5]*x[6]+0.923*x[3]*x[5]*x[7]+0.135*x[3]*x[5]*x[8]-0.5571*x[3]*x[5]*x[9]+0.7438*x[3]*x[5]*x[10]+0.6411*x[3]*x[6]*x[7]-0.6977*x[3]*x[6]*x[9]+0.377*x[3]*x[6]*x[10]-0.0094*x[3]*x[7]*x[8]-0.7917*x[3]*x[7]*x[9]+0.9131*x[3]*x[7]*x[10]+0.9232*x[3]*x[8]*x[9]+0.7182*x[3]*x[8]*x[10]+0.0246*x[3]*x[9]*x[10]-0.158*x[4]*x[5]*x[6]-0.8659*x[4]*x[5]*x[7]+0.1699*x[4]*x[5]*x[8]-0.0609*x[4]*x[5]*x[9]-0.5666*x[4]*x[6]*x[7]-0.9142*x[4]*x[6]*x[8]-0.8604*x[4]*x[6]*x[9]-0.446*x[4]*x[6]*x[10]+0.6542*x[4]*x[7]*x[8]-0.3336*x[4]*x[7]*x[9]+0.7759*x[4]*x[7]*x[10]-0.9811*x[4]*x[8]*x[9]+0.5263*x[4]*x[8]*x[10]+0.6028*x[5]*x[6]*x[7]+0.7464*x[5]*x[6]*x[8]+0.7842*x[5]*x[6]*x[9]-0.3716*x[5]*x[6]*x[10]+0.7663*x[5]*x[7]*x[8]-0.5559*x[5]*x[7]*x[9]-0.5338*x[5]*x[7]*x[10]-0.6253*x[5]*x[8]*x[9]-0.1552*x[5]*x[8]*x[10]-0.1863*x[5]*x[9]*x[10]+0.2481*x[6]*x[7]*x[8]+0.5669*x[6]*x[7]*x[9]+0.0319*x[6]*x[7]*x[10]+0.0222*x[6]*x[8]*x[9]-0.0345*x[6]*x[8]*x[10]-0.4136*x[6]*x[9]*x[10]+0.4431*x[7]*x[8]*x[9]+0.7634*x[7]*x[9]*x[10]-0.8899*x[8]*x[9]*x[10])+x[11] == 0.0)
@NLconstraint(m, e2, 0.6483*x[2]^3-0.2519*x[2]+0.4183*x[3]^2-0.9202*x[3]^3+0.4765*x[3]+0.8665*x[4]^3-0.8406*x[4]^2+0.6699*x[4]+0.6005*x[5]^3-0.4995*x[5]^2+0.2583*x[5]+0.604*x[6]^3-0.151*x[6]+0.8575*x[7]-0.852*x[7]^2+0.3005*x[8]^3-0.5532*x[8]^2+0.0858*x[8]+0.04*x[9]-0.8776*x[9]^2+0.1274*x[1]*x[2]-0.3293*x[1]*x[3]-0.7245*x[1]*x[4]+0.789*x[1]*x[8]+0.5783*x[1]*x[9]-0.5149*x[1]*x[10]-0.3713*x[2]*x[3]+0.3045*x[2]*x[4]-0.8346*x[2]*x[7]+0.8093*x[2]*x[10]-0.5353*x[3]*x[4]+0.4768*x[3]*x[5]-0.2878*x[3]*x[6]-0.0778*x[3]*x[7]-0.9488*x[3]*x[8]+0.9911*x[3]*x[9]-0.7903*x[4]*x[5]-0.4088*x[4]*x[8]-0.6204*x[4]*x[9]+0.5916*x[5]*x[6]+0.6781*x[5]*x[7]-0.2296*x[5]*x[9]-0.2918*x[5]*x[10]-0.612*x[6]*x[8]-0.1007*x[6]*x[10]-0.5911*x[7]*x[8]+0.1217*x[7]*x[9]-0.7012*x[8]*x[9]+0.6791*x[8]*x[10]-0.5235*x[1]+0.6599*x[10]+(-0.1114*x[1]^2*x[3])-0.9735*x[1]^2*x[4]+0.7359*x[1]^2*x[5]+0.8772*x[2]^2*x[1]+0.9087*x[2]^2*x[3]-0.2051*x[2]^2*x[4]+0.0437*x[2]^2*x[5]-0.394*x[2]^2*x[6]-0.4902*x[2]^2*x[7]+0.4888*x[2]^2*x[9]+0.3678*x[3]^2*x[2]-0.067*x[3]^2*x[4]-0.3883*x[3]^2*x[5]+0.8109*x[3]^2*x[6]-0.2427*x[3]^2*x[7]-0.6343*x[3]^2*x[8]-0.2197*x[3]^2*x[9]+0.0759*x[3]^2*x[10]-0.0118*x[4]^2*x[1]+0.902*x[4]^2*x[2]+0.8336*x[4]^2*x[3]+0.052*x[4]^2*x[7]-0.9007*x[4]^2*x[8]-0.7869*x[4]^2*x[9]+0.3034*x[5]^2*x[1]-0.9408*x[5]^2*x[2]+0.875*x[5]^2*x[3]+0.1871*x[5]^2*x[4]-0.6142*x[5]^2*x[7]+0.8294*x[5]^2*x[9]-0.8286*x[5]^2*x[10]+0.9265*x[6]^2*x[1]-0.6472*x[6]^2*x[2]-0.5308*x[6]^2*x[3]+0.7605*x[6]^2*x[4]-0.4245*x[6]^2*x[5]+0.8131*x[6]^2*x[7]-0.0371*x[6]^2*x[8]+0.0388*x[6]^2*x[10]-0.5905*x[7]^2*x[1]+0.7277*x[7]^2*x[3]+0.1255*x[7]^2*x[4]-0.638*x[7]^2*x[5]+0.8917*x[7]^2*x[6]+0.4142*x[7]^2*x[8]+0.127*x[7]^2*x[9]+0.2467*x[7]^2*x[10]-0.7255*x[8]^2*x[2]-0.8722*x[8]^2*x[3]+0.808*x[8]^2*x[5]+0.124*x[8]^2*x[7]-0.7769*x[8]^2*x[9]-0.3207*x[8]^2*x[10]-0.6452*x[9]^2*x[2]-0.6555*x[9]^2*x[3]+0.1836*x[9]^2*x[5]-0.9381*x[9]^2*x[6]-0.6493*x[9]^2*x[7]-0.6818*x[9]^2*x[10]+0.5406*x[10]^2*x[5]+0.7956*x[10]^2*x[6]+0.5255*x[10]^2*x[9]+0.7788*x[1]*x[2]*x[3]-0.4871*x[1]*x[2]*x[4]+0.1265*x[1]*x[2]*x[5]+0.6391*x[1]*x[2]*x[6]-0.621*x[1]*x[2]*x[8]-0.4899*x[1]*x[2]*x[9]+0.5164*x[1]*x[3]*x[4]+0.6929*x[1]*x[3]*x[5]-0.5153*x[1]*x[3]*x[6]-0.3084*x[1]*x[3]*x[8]+0.9931*x[1]*x[3]*x[9]-0.5626*x[1]*x[3]*x[10]+0.6386*x[1]*x[4]*x[5]+0.9056*x[1]*x[4]*x[6]-0.4011*x[1]*x[4]*x[7]-0.2111*x[1]*x[4]*x[8]+0.127*x[1]*x[4]*x[10]+0.9092*x[1]*x[5]*x[6]+0.4969*x[1]*x[5]*x[7]-0.7559*x[1]*x[5]*x[8]+0.3086*x[1]*x[5]*x[9]-0.3568*x[1]*x[6]*x[7]-0.5442*x[1]*x[6]*x[9]+0.0124*x[1]*x[7]*x[8]-0.8098*x[1]*x[7]*x[9]-0.8465*x[1]*x[7]*x[10]+0.5816*x[1]*x[8]*x[9]+0.6761*x[1]*x[9]*x[10]-0.6757*x[2]*x[3]*x[4]-0.9539*x[2]*x[3]*x[5]+0.3782*x[2]*x[3]*x[6]-0.2828*x[2]*x[3]*x[7]-0.8294*x[2]*x[3]*x[8]+0.0599*x[2]*x[3]*x[9]-0.4613*x[2]*x[3]*x[10]-0.6588*x[2]*x[4]*x[5]+0.1885*x[2]*x[4]*x[6]+0.8836*x[2]*x[4]*x[7]+0.5291*x[2]*x[4]*x[8]-0.1151*x[2]*x[4]*x[9]+0.858*x[2]*x[5]*x[6]-0.895*x[2]*x[5]*x[7]+0.0167*x[2]*x[5]*x[8]-0.0206*x[2]*x[5]*x[9]+0.4148*x[2]*x[5]*x[10]+0.6024*x[2]*x[6]*x[7]-0.4408*x[2]*x[6]*x[8]+0.0784*x[2]*x[6]*x[9]-0.7807*x[2]*x[6]*x[10]+0.4994*x[2]*x[7]*x[8]-0.146*x[2]*x[7]*x[9]-0.6821*x[2]*x[7]*x[10]+0.3156*x[2]*x[8]*x[9]-0.4637*x[2]*x[8]*x[10]-0.1921*x[2]*x[9]*x[10]-0.6075*x[3]*x[4]*x[5]-0.0873*x[3]*x[4]*x[6]+0.4885*x[3]*x[4]*x[7]-0.2386*x[3]*x[4]*x[8]+0.6996*x[3]*x[4]*x[9]-0.1883*x[3]*x[4]*x[10]+0.503*x[3]*x[5]*x[6]+0.6861*x[3]*x[5]*x[7]+0.3709*x[3]*x[5]*x[8]+0.8857*x[3]*x[5]*x[9]+0.3995*x[3]*x[6]*x[7]-0.8165*x[3]*x[6]*x[8]+0.882*x[3]*x[6]*x[9]-0.5519*x[3]*x[6]*x[10]+0.1442*x[3]*x[7]*x[8]-0.0838*x[3]*x[7]*x[9]+0.2717*x[3]*x[7]*x[10]+0.7103*x[3]*x[8]*x[9]-0.4625*x[3]*x[8]*x[10]-0.9437*x[4]*x[5]*x[6]+0.8959*x[4]*x[5]*x[7]-0.93*x[4]*x[5]*x[8]-0.2535*x[4]*x[5]*x[9]-0.6954*x[4]*x[6]*x[7]-0.5555*x[4]*x[6]*x[9]-0.0284*x[4]*x[6]*x[10]+0.0701*x[4]*x[7]*x[8]+0.9207*x[4]*x[7]*x[9]-0.5979*x[4]*x[7]*x[10]+0.2743*x[4]*x[8]*x[9]+0.2852*x[4]*x[8]*x[10]-0.4518*x[4]*x[9]*x[10]-0.522*x[5]*x[6]*x[8]-0.4078*x[5]*x[6]*x[10]-0.9509*x[5]*x[7]*x[8]-0.0409*x[5]*x[7]*x[9]+0.6299*x[5]*x[8]*x[10]-0.5249*x[5]*x[9]*x[10]+0.3374*x[6]*x[7]*x[8]+0.943*x[6]*x[7]*x[9]+0.4353*x[6]*x[8]*x[9]-0.8913*x[6]*x[8]*x[10]+0.4593*x[7]*x[8]*x[9]+0.8717*x[7]*x[8]*x[10]+0.8724*x[7]*x[9]*x[10]-0.6859*x[8]*x[9]*x[10] <= 56.818)
@NLconstraint(m, e3, 0.0228*x[2]^2+0.1337*x[2]+0.0073*x[3]^2-0.19*x[3]+0.6804*x[5]^3+0.8163*x[5]+0.6397*x[7]^2+0.5463*x[7]+0.9068*x[8]^3+0.6636*x[8]+0.4508*x[9]^3-0.28*x[9]^2-0.8137*x[9]+0.1771*x[10]-0.8865*x[10]^3+0.7618*x[1]*x[2]+0.0122*x[1]*x[6]-0.0917*x[1]*x[7]+0.2809*x[1]*x[9]+0.5951*x[2]*x[3]-0.255*x[2]*x[4]-0.0105*x[2]*x[6]-0.0236*x[2]*x[7]+0.005*x[2]*x[8]+0.643*x[2]*x[9]+0.7485*x[3]*x[4]-0.557*x[3]*x[5]+0.0136*x[3]*x[6]+0.7661*x[3]*x[7]-0.4531*x[3]*x[8]+0.872*x[3]*x[10]+0.2213*x[4]*x[6]+0.8374*x[4]*x[9]-0.6815*x[5]*x[6]+0.0602*x[5]*x[7]+0.8347*x[5]*x[9]-0.4827*x[6]*x[7]-0.0215*x[6]*x[8]+0.6469*x[6]*x[9]-0.5629*x[7]*x[10]-0.3945*x[8]*x[9]-0.4654*x[8]*x[10]+0.9889*x[9]*x[10]+0.7015*x[1]+0.551*x[4]+0.993*x[6]+(-0.5223*x[1]^2*x[2])-0.8457*x[1]^2*x[4]-0.6225*x[1]^2*x[5]+0.8432*x[1]^2*x[6]+0.5727*x[2]^2*x[1]-0.0239*x[2]^2*x[3]-0.1649*x[2]^2*x[4]+0.3995*x[2]^2*x[5]+0.1309*x[2]^2*x[6]-0.2999*x[2]^2*x[8]-0.1399*x[2]^2*x[9]-0.4043*x[3]^2*x[1]+0.5837*x[3]^2*x[2]-0.3058*x[3]^2*x[4]-0.5974*x[3]^2*x[5]-0.7963*x[3]^2*x[6]-0.3557*x[3]^2*x[7]+0.2122*x[4]^2*x[1]-0.045*x[4]^2*x[2]-0.8662*x[4]^2*x[3]-0.6048*x[4]^2*x[5]+0.8993*x[4]^2*x[6]-0.387*x[4]^2*x[7]-0.9718*x[4]^2*x[8]+0.5057*x[4]^2*x[9]-0.8586*x[5]^2*x[3]-0.3203*x[5]^2*x[4]+0.3277*x[5]^2*x[6]+0.5434*x[5]^2*x[7]+0.5687*x[5]^2*x[8]+0.6935*x[5]^2*x[9]-0.9725*x[5]^2*x[10]-0.5774*x[6]^2*x[2]-0.1834*x[6]^2*x[3]+0.403*x[6]^2*x[4]+0.8065*x[6]^2*x[5]-0.2554*x[6]^2*x[7]+0.6314*x[6]^2*x[8]+0.5563*x[6]^2*x[9]-0.6604*x[7]^2*x[2]-0.0539*x[7]^2*x[3]+0.2178*x[7]^2*x[4]-0.6236*x[7]^2*x[5]-0.3299*x[7]^2*x[8]-0.9987*x[7]^2*x[9]+0.4637*x[7]^2*x[10]+0.095*x[8]^2*x[1]-0.4538*x[8]^2*x[2]-0.0607*x[8]^2*x[3]-0.561*x[8]^2*x[4]+0.8432*x[8]^2*x[5]+0.1942*x[8]^2*x[6]+0.7514*x[8]^2*x[7]-0.0199*x[8]^2*x[9]-0.8675*x[9]^2*x[1]+0.2237*x[9]^2*x[2]-0.8351*x[9]^2*x[3]+0.2829*x[9]^2*x[4]-0.7318*x[9]^2*x[5]-0.2389*x[9]^2*x[6]-0.2145*x[9]^2*x[8]-0.1282*x[10]^2*x[2]+0.7098*x[10]^2*x[4]-0.939*x[10]^2*x[5]+0.0743*x[10]^2*x[7]+0.4679*x[1]*x[2]*x[4]-0.3567*x[1]*x[2]*x[3]+0.5303*x[1]*x[2]*x[5]+0.6627*x[1]*x[2]*x[6]-0.395*x[1]*x[2]*x[9]+0.4472*x[1]*x[3]*x[4]+0.7457*x[1]*x[3]*x[5]-0.3846*x[1]*x[3]*x[7]-0.9718*x[1]*x[3]*x[8]-0.1034*x[1]*x[3]*x[9]+0.6358*x[1]*x[3]*x[10]+0.026*x[1]*x[4]*x[5]+0.9968*x[1]*x[4]*x[6]+0.4364*x[1]*x[4]*x[7]-0.2669*x[1]*x[4]*x[8]-0.3266*x[1]*x[4]*x[9]-0.3574*x[1]*x[4]*x[10]-0.3866*x[1]*x[5]*x[6]+0.3225*x[1]*x[5]*x[8]+0.5707*x[1]*x[5]*x[9]-0.5552*x[1]*x[5]*x[10]+0.3639*x[1]*x[6]*x[7]-0.3663*x[1]*x[6]*x[8]-0.7129*x[1]*x[7]*x[10]-0.9144*x[1]*x[8]*x[10]+0.535*x[2]*x[3]*x[4]+0.883*x[2]*x[3]*x[5]+0.8024*x[2]*x[3]*x[6]+0.1839*x[2]*x[3]*x[7]+0.6662*x[2]*x[3]*x[8]+0.9275*x[2]*x[3]*x[9]+0.8085*x[2]*x[3]*x[10]-0.2468*x[2]*x[4]*x[5]-0.5932*x[2]*x[4]*x[6]-0.8097*x[2]*x[4]*x[7]+0.1455*x[2]*x[4]*x[8]-0.1356*x[2]*x[4]*x[9]+0.0291*x[2]*x[4]*x[10]+0.7796*x[2]*x[5]*x[6]+0.2578*x[2]*x[5]*x[7]-0.2991*x[2]*x[5]*x[8]-0.7671*x[2]*x[5]*x[9]-0.2899*x[2]*x[5]*x[10]-0.5055*x[2]*x[6]*x[7]-0.9108*x[2]*x[6]*x[8]-0.4188*x[2]*x[6]*x[9]+0.615*x[2]*x[6]*x[10]-0.9207*x[2]*x[7]*x[8]+0.958*x[2]*x[7]*x[9]+0.4742*x[2]*x[7]*x[10]+0.1118*x[2]*x[8]*x[9]-0.177*x[2]*x[9]*x[10]-0.0441*x[3]*x[4]*x[5]+0.306*x[3]*x[4]*x[6]+0.2074*x[3]*x[4]*x[7]-0.4679*x[3]*x[4]*x[8]+0.8015*x[3]*x[4]*x[9]+0.2147*x[3]*x[4]*x[10]+0.4889*x[3]*x[5]*x[6]-0.3493*x[3]*x[5]*x[7]+0.2047*x[3]*x[5]*x[8]+0.0742*x[3]*x[5]*x[9]-0.0393*x[3]*x[5]*x[10]-0.6892*x[3]*x[6]*x[7]+0.6033*x[3]*x[6]*x[8]+0.9152*x[3]*x[6]*x[9]-0.5816*x[3]*x[7]*x[8]-0.1823*x[3]*x[7]*x[9]+0.4406*x[3]*x[8]*x[9]-0.4172*x[3]*x[8]*x[10]-0.6753*x[4]*x[5]*x[6]+0.2142*x[4]*x[5]*x[7]-0.5162*x[4]*x[5]*x[8]-0.373*x[4]*x[5]*x[9]-0.4961*x[4]*x[6]*x[7]+0.6825*x[4]*x[6]*x[8]-0.4924*x[4]*x[6]*x[9]+0.0178*x[4]*x[6]*x[10]+0.6514*x[4]*x[7]*x[8]-0.0381*x[4]*x[7]*x[9]-0.1306*x[4]*x[8]*x[9]+0.6341*x[4]*x[9]*x[10]+0.8737*x[5]*x[6]*x[7]-0.8477*x[5]*x[6]*x[8]+0.2788*x[5]*x[6]*x[9]+0.4056*x[5]*x[6]*x[10]+0.1819*x[5]*x[7]*x[8]-0.795*x[5]*x[7]*x[9]+0.3021*x[5]*x[7]*x[10]-0.6471*x[5]*x[8]*x[9]+0.3078*x[5]*x[8]*x[10]-0.3825*x[5]*x[9]*x[10]+0.9107*x[6]*x[7]*x[8]+0.4464*x[6]*x[7]*x[9]+0.776*x[6]*x[7]*x[10]-0.0347*x[6]*x[8]*x[9]+0.2057*x[6]*x[8]*x[10]+0.3874*x[6]*x[9]*x[10]-0.0015*x[7]*x[8]*x[9]-0.9689*x[7]*x[8]*x[10]-0.8197*x[7]*x[9]*x[10]+0.9019*x[8]*x[9]*x[10] <= 70.311)


# ----- Objective ----- #
@objective(m, Min, x[11])
m = m 		 # model get returned when including this script. 