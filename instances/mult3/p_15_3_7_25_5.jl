using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15]

@variable(m, obj)
@variable(m, 0 <= x[x_Idx] <= 1)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.0776*x[2]^2-0.5759*x[2]+0.3027*x[7]^2-0.4862*x[7]+0.5809*x[8]^2-0.2438*x[8]+0.2417*x[9]^2-0.3023*x[9]^3-0.0826*x[9]+(-0.0718*x[12]^2)-0.3073*x[12]+0.6269*x[1]*x[3]-0.0406*x[1]*x[4]+0.0161*x[1]*x[11]-0.2346*x[2]*x[3]+0.3963*x[2]*x[5]+0.7835*x[2]*x[6]+0.2768*x[2]*x[12]+0.9245*x[3]*x[7]+0.6972*x[3]*x[11]+0.5841*x[3]*x[13]-0.3153*x[4]*x[8]+0.4156*x[4]*x[12]+0.7236*x[4]*x[13]-0.4054*x[4]*x[15]+0.1004*x[5]*x[7]-0.3074*x[5]*x[12]-0.5606*x[6]*x[8]+0.8167*x[6]*x[12]-0.4117*x[6]*x[14]-0.8271*x[7]*x[11]-0.244*x[7]*x[13]-0.9705*x[8]*x[10]+0.8667*x[8]*x[13]-0.793*x[9]*x[12]+0.5304*x[9]*x[15]-0.328*x[10]*x[11]-0.8011*x[11]*x[12]-0.7144*x[13]*x[15]+0.7862*x[1]+0.3854*x[3]-0.8599*x[4]+0.6899*x[5]-0.1102*x[6]+0.6548*x[10]+0.1371*x[11]+0.5314*x[13]+0.4786*x[14]+0.9135*x[15]+(-0.2414*x[1]^2*x[9])-0.8348*x[2]^2*x[7]-0.7858*x[2]^2*x[9]+0.3633*x[3]^2*x[1]-0.6779*x[3]^2*x[12]+0.2886*x[3]^2*x[13]+0.9695*x[4]^2*x[7]-0.2967*x[4]^2*x[15]+0.1396*x[5]^2*x[6]-0.3315*x[5]^2*x[10]+0.9581*x[6]^2*x[2]-0.8567*x[6]^2*x[5]-0.601*x[6]^2*x[9]+0.2344*x[6]^2*x[13]+0.8604*x[7]^2*x[4]+0.7127*x[7]^2*x[6]-0.5112*x[7]^2*x[8]+0.8206*x[7]^2*x[9]+0.3973*x[9]^2*x[4]+0.4445*x[9]^2*x[8]-0.1763*x[9]^2*x[12]+0.5509*x[9]^2*x[14]-0.9475*x[10]^2*x[1]-0.5282*x[10]^2*x[5]-0.1095*x[10]^2*x[6]+0.4636*x[10]^2*x[7]+0.0551*x[10]^2*x[8]+0.8773*x[10]^2*x[11]-0.485*x[10]^2*x[12]+0.0921*x[11]^2*x[7]-0.891*x[11]^2*x[14]+0.6682*x[12]^2*x[4]-0.6533*x[12]^2*x[7]+0.099*x[12]^2*x[11]+0.7457*x[13]^2*x[2]+0.5216*x[13]^2*x[5]+0.638*x[13]^2*x[6]+0.9784*x[13]^2*x[7]+0.0838*x[13]^2*x[8]-0.6207*x[13]^2*x[10]-0.4905*x[13]^2*x[12]+0.9244*x[14]^2*x[9]+0.4547*x[14]^2*x[10]-0.0261*x[14]^2*x[11]-0.3287*x[14]^2*x[13]-0.5952*x[15]^2*x[9]+0.7986*x[1]*x[3]*x[8]+0.3004*x[1]*x[3]*x[9]+0.0264*x[1]*x[3]*x[10]-0.2007*x[1]*x[4]*x[8]+0.8891*x[1]*x[4]*x[13]+0.9462*x[1]*x[4]*x[14]-0.8807*x[1]*x[5]*x[6]-0.359*x[1]*x[5]*x[10]-0.1419*x[1]*x[6]*x[7]-0.8208*x[1]*x[6]*x[11]+0.6246*x[1]*x[7]*x[11]-0.5444*x[1]*x[9]*x[10]-0.377*x[1]*x[9]*x[11]+0.5119*x[1]*x[10]*x[12]+0.7338*x[1]*x[11]*x[13]-0.1917*x[1]*x[12]*x[13]+0.4721*x[1]*x[13]*x[14]+0.8974*x[1]*x[14]*x[15]-0.8722*x[2]*x[3]*x[5]-0.2034*x[2]*x[3]*x[6]-0.4469*x[2]*x[3]*x[7]-0.1874*x[2]*x[3]*x[10]+0.3024*x[2]*x[3]*x[14]+0.1377*x[2]*x[4]*x[5]+0.2402*x[2]*x[4]*x[6]-0.1025*x[2]*x[4]*x[10]-0.3577*x[2]*x[4]*x[11]+0.3029*x[2]*x[4]*x[14]-0.1366*x[2]*x[5]*x[7]+0.0437*x[2]*x[5]*x[10]+0.1436*x[2]*x[6]*x[7]+0.9223*x[2]*x[6]*x[8]-0.5656*x[2]*x[6]*x[11]-0.118*x[2]*x[6]*x[12]+0.3676*x[2]*x[7]*x[8]+0.3997*x[2]*x[7]*x[10]-0.3505*x[2]*x[7]*x[14]+0.5661*x[2]*x[8]*x[11]-0.9256*x[2]*x[8]*x[14]-0.7944*x[2]*x[9]*x[10]+0.3996*x[2]*x[9]*x[11]-0.7092*x[2]*x[9]*x[13]+0.2471*x[2]*x[10]*x[11]-0.6746*x[2]*x[13]*x[15]+0.8969*x[3]*x[4]*x[5]+0.1515*x[3]*x[4]*x[14]-0.5967*x[3]*x[5]*x[6]+0.0492*x[3]*x[5]*x[9]-0.8026*x[3]*x[5]*x[13]-0.0518*x[3]*x[5]*x[14]-0.7508*x[3]*x[6]*x[13]+0.555*x[3]*x[7]*x[11]-0.7359*x[3]*x[7]*x[14]-0.3737*x[3]*x[8]*x[9]-0.247*x[3]*x[8]*x[10]-0.9517*x[3]*x[9]*x[12]+x[3]*x[10]*x[12]+0.1762*x[3]*x[11]*x[12]+0.0626*x[3]*x[11]*x[13]+0.4526*x[3]*x[11]*x[14]+0.5726*x[3]*x[12]*x[13]+0.2861*x[4]*x[6]*x[7]-0.1866*x[4]*x[7]*x[9]+0.4321*x[4]*x[7]*x[10]+0.5212*x[4]*x[7]*x[15]-0.001*x[4]*x[8]*x[11]-0.6844*x[4]*x[8]*x[13]+0.1338*x[4]*x[8]*x[14]+0.7204*x[4]*x[8]*x[15]-0.9356*x[4]*x[9]*x[11]+0.1623*x[4]*x[9]*x[12]+0.9346*x[4]*x[10]*x[12]+0.0156*x[4]*x[12]*x[13]-0.2801*x[5]*x[6]*x[12]-0.2088*x[5]*x[7]*x[11]+0.3081*x[5]*x[7]*x[14]-0.4338*x[5]*x[8]*x[9]-0.9512*x[5]*x[8]*x[10]-0.0824*x[5]*x[8]*x[12]-0.9254*x[5]*x[8]*x[13]-0.9173*x[5]*x[9]*x[10]+0.5733*x[5]*x[9]*x[11]+0.0025*x[5]*x[9]*x[15]+0.5815*x[5]*x[10]*x[11]-0.406*x[5]*x[11]*x[14]-0.4948*x[5]*x[12]*x[13]-0.7733*x[5]*x[12]*x[15]-0.4728*x[6]*x[7]*x[12]+0.1809*x[6]*x[7]*x[14]-0.279*x[6]*x[8]*x[9]+0.7417*x[6]*x[8]*x[14]+0.6657*x[6]*x[9]*x[12]+0.452*x[6]*x[9]*x[13]+0.5705*x[6]*x[9]*x[14]-0.0649*x[6]*x[10]*x[11]-0.3235*x[6]*x[10]*x[12]+0.0535*x[6]*x[10]*x[14]+0.7498*x[6]*x[11]*x[15]-0.7831*x[6]*x[12]*x[13]-0.0137*x[6]*x[12]*x[15]-0.8682*x[7]*x[8]*x[9]+0.2099*x[7]*x[9]*x[13]-0.5277*x[7]*x[10]*x[12]-0.7172*x[7]*x[10]*x[13]+0.5406*x[7]*x[11]*x[13]+0.3294*x[7]*x[11]*x[15]-0.7869*x[7]*x[12]*x[13]-0.0898*x[7]*x[13]*x[14]+0.8725*x[7]*x[13]*x[15]+0.6373*x[8]*x[9]*x[10]+0.3403*x[8]*x[9]*x[11]-0.2534*x[8]*x[9]*x[13]+0.2714*x[8]*x[10]*x[14]-0.5046*x[8]*x[11]*x[13]+0.8648*x[8]*x[14]*x[15]+0.6423*x[9]*x[13]*x[14]-0.98*x[10]*x[12]*x[13]+0.005*x[10]*x[13]*x[15]-0.5527*x[12]*x[13]*x[14])+obj == 0.0)
@NLconstraint(m, e2, (-0.7818*x[1]^3)-0.1499*x[1]+0.5578*x[9]-0.9683*x[9]^2+(-0.9937*x[11]^2)-0.6487*x[11]+0.0285*x[15]^2+0.7988*x[15]+(-0.2427*x[1]*x[14])-0.8122*x[1]*x[15]+0.2313*x[2]*x[3]-0.8396*x[2]*x[6]-0.4724*x[2]*x[9]+0.5195*x[2]*x[12]-0.8594*x[2]*x[13]+0.3564*x[3]*x[4]+0.8741*x[3]*x[7]-0.9482*x[3]*x[8]+0.2604*x[3]*x[9]-0.2045*x[3]*x[11]-0.7374*x[3]*x[13]-0.6925*x[4]*x[5]-0.4423*x[4]*x[7]-0.9309*x[4]*x[8]+0.8587*x[4]*x[12]+0.4169*x[4]*x[13]+0.4787*x[5]*x[8]+0.0352*x[5]*x[11]+0.1808*x[5]*x[15]-0.528*x[6]*x[8]-0.4188*x[6]*x[12]-0.9512*x[6]*x[13]-0.5902*x[6]*x[14]-0.4277*x[7]*x[10]-0.071*x[7]*x[15]-0.3963*x[8]*x[10]-0.4122*x[8]*x[12]-0.7217*x[8]*x[14]+0.8657*x[9]*x[10]+0.8714*x[9]*x[11]+0.2713*x[10]*x[11]-0.3866*x[10]*x[15]+0.3835*x[12]*x[13]+0.9823*x[13]*x[15]-0.1813*x[2]+0.4114*x[3]-0.4832*x[4]+0.3735*x[5]-0.0905*x[6]-0.9409*x[7]+0.1693*x[8]-0.8352*x[10]-0.9166*x[12]+0.5773*x[13]-0.4314*x[14]+0.2115*x[2]^2*x[3]-0.8212*x[2]^2*x[10]-0.2876*x[3]^2*x[1]-0.2843*x[3]^2*x[2]-0.9386*x[3]^2*x[4]-0.0715*x[3]^2*x[5]-0.9003*x[3]^2*x[8]-0.7462*x[3]^2*x[9]+0.1845*x[3]^2*x[11]+0.8071*x[3]^2*x[15]+0.6272*x[4]^2*x[7]-0.2402*x[4]^2*x[11]-0.4952*x[6]^2*x[10]-0.5786*x[7]^2*x[4]-0.1461*x[7]^2*x[8]+0.8499*x[7]^2*x[15]+0.6726*x[8]^2*x[3]+0.2476*x[8]^2*x[5]-0.2626*x[8]^2*x[6]-0.155*x[8]^2*x[10]-0.5533*x[9]^2*x[10]-0.0062*x[10]^2*x[6]-0.0898*x[10]^2*x[12]-0.7501*x[11]^2*x[10]-0.2449*x[11]^2*x[14]+0.0762*x[12]^2*x[2]-0.9084*x[12]^2*x[10]-0.8325*x[13]^2*x[2]+0.9755*x[14]^2*x[3]+(-0.281*x[1]*x[3]*x[4])-0.1851*x[1]*x[3]*x[5]-0.8247*x[1]*x[3]*x[7]-0.3703*x[1]*x[3]*x[10]-0.762*x[1]*x[3]*x[11]+0.1453*x[1]*x[3]*x[12]+0.1691*x[1]*x[3]*x[14]-0.8204*x[1]*x[4]*x[5]+0.2533*x[1]*x[4]*x[11]-0.0317*x[1]*x[6]*x[14]-0.8044*x[1]*x[7]*x[10]+0.6287*x[1]*x[7]*x[15]-0.3108*x[1]*x[8]*x[12]+0.9329*x[1]*x[8]*x[15]+0.1345*x[1]*x[9]*x[11]+0.5625*x[1]*x[10]*x[13]-0.5701*x[1]*x[10]*x[15]+0.0062*x[1]*x[11]*x[15]-0.5361*x[2]*x[3]*x[9]-0.9675*x[2]*x[3]*x[10]-0.0003*x[2]*x[3]*x[11]+0.8717*x[2]*x[3]*x[14]+0.1349*x[2]*x[4]*x[6]+0.0372*x[2]*x[4]*x[9]+0.7143*x[2]*x[5]*x[12]+0.4019*x[2]*x[6]*x[7]+0.4144*x[2]*x[6]*x[9]+0.4314*x[2]*x[6]*x[11]+0.2995*x[2]*x[6]*x[12]+0.1577*x[2]*x[6]*x[14]+0.3329*x[2]*x[6]*x[15]+0.0087*x[2]*x[7]*x[8]-0.6042*x[2]*x[7]*x[11]-0.641*x[2]*x[7]*x[15]-0.8605*x[2]*x[8]*x[14]+0.2587*x[2]*x[9]*x[13]+0.0283*x[2]*x[10]*x[11]-0.7107*x[2]*x[11]*x[13]-0.9419*x[2]*x[12]*x[13]-0.1935*x[2]*x[13]*x[14]+0.2919*x[3]*x[4]*x[8]+0.7764*x[3]*x[4]*x[10]-0.0161*x[3]*x[4]*x[11]+0.7663*x[3]*x[5]*x[6]-0.6265*x[3]*x[5]*x[7]+0.0435*x[3]*x[6]*x[14]+0.566*x[3]*x[7]*x[10]-0.3538*x[3]*x[7]*x[12]+0.8876*x[3]*x[7]*x[13]-0.0646*x[3]*x[7]*x[14]+0.7855*x[3]*x[8]*x[9]-0.2246*x[3]*x[8]*x[12]-0.3041*x[3]*x[8]*x[13]-0.9159*x[3]*x[8]*x[14]-0.5699*x[3]*x[9]*x[10]-0.9206*x[3]*x[9]*x[11]-0.1018*x[3]*x[9]*x[12]-0.2575*x[3]*x[10]*x[12]-0.3462*x[3]*x[10]*x[15]+0.8827*x[3]*x[11]*x[15]-0.0695*x[3]*x[12]*x[13]-0.0601*x[4]*x[5]*x[8]-0.3521*x[4]*x[5]*x[10]-0.803*x[4]*x[5]*x[12]-0.0849*x[4]*x[5]*x[14]+0.7831*x[4]*x[6]*x[7]+0.6424*x[4]*x[6]*x[9]+0.3032*x[4]*x[6]*x[10]+0.9294*x[4]*x[6]*x[11]-0.6215*x[4]*x[6]*x[13]-0.4071*x[4]*x[7]*x[10]+0.0855*x[4]*x[7]*x[11]-0.2362*x[4]*x[7]*x[12]-0.0289*x[4]*x[7]*x[13]+0.9959*x[4]*x[7]*x[14]+0.6812*x[4]*x[8]*x[9]+0.3501*x[4]*x[8]*x[13]+0.7004*x[4]*x[9]*x[10]-0.4666*x[4]*x[9]*x[14]-0.6713*x[4]*x[10]*x[12]-0.096*x[4]*x[10]*x[13]-0.4186*x[4]*x[11]*x[14]-0.4848*x[4]*x[14]*x[15]-0.1956*x[5]*x[6]*x[8]+0.9766*x[5]*x[6]*x[9]+0.728*x[5]*x[6]*x[10]+0.773*x[5]*x[6]*x[12]-0.5013*x[5]*x[7]*x[8]+0.3691*x[5]*x[8]*x[11]+0.2552*x[5]*x[8]*x[13]+0.9425*x[5]*x[8]*x[14]-0.893*x[5]*x[9]*x[11]+0.4732*x[5]*x[9]*x[12]-0.5774*x[5]*x[9]*x[14]-0.1632*x[5]*x[9]*x[15]-0.0271*x[5]*x[10]*x[14]+0.7589*x[5]*x[12]*x[13]-0.8012*x[5]*x[12]*x[15]-0.4102*x[5]*x[13]*x[14]+0.8304*x[6]*x[7]*x[9]+0.3652*x[6]*x[7]*x[10]+0.8873*x[6]*x[8]*x[10]+0.6781*x[6]*x[8]*x[11]-0.9832*x[6]*x[8]*x[12]+0.547*x[6]*x[8]*x[13]-0.7732*x[6]*x[9]*x[13]-0.4965*x[6]*x[9]*x[15]+0.1221*x[6]*x[10]*x[11]+0.9938*x[6]*x[10]*x[14]+0.0953*x[7]*x[9]*x[12]-0.0527*x[7]*x[10]*x[13]+0.2284*x[7]*x[10]*x[14]+0.2405*x[7]*x[12]*x[13]-0.2444*x[8]*x[9]*x[13]-0.6716*x[8]*x[9]*x[14]-0.4963*x[8]*x[10]*x[11]+0.0596*x[8]*x[10]*x[12]+0.9587*x[8]*x[10]*x[13]+0.638*x[8]*x[11]*x[12]+0.3817*x[8]*x[11]*x[13]-0.1393*x[8]*x[12]*x[13]-0.0704*x[9]*x[10]*x[12]+0.1059*x[9]*x[10]*x[14]+0.1861*x[9]*x[11]*x[12]-0.995*x[9]*x[14]*x[15]-0.5552*x[10]*x[11]*x[14]+0.0073*x[10]*x[12]*x[14]-0.3696*x[10]*x[13]*x[15]-0.5472*x[11]*x[13]*x[14] <= 77.591)
@NLconstraint(m, e3, 0.8665*x[15]^2-0.3723*x[15]+0.4799*x[1]*x[9]-0.0088*x[1]*x[7]-0.8587*x[1]*x[14]+0.164*x[2]*x[6]+0.4975*x[2]*x[7]-0.6769*x[2]*x[9]-0.1785*x[4]*x[8]+0.3275*x[4]*x[9]-0.3091*x[4]*x[12]-0.5247*x[4]*x[13]-0.923*x[4]*x[14]-0.8602*x[5]*x[6]+0.6494*x[5]*x[8]-0.1097*x[5]*x[12]-0.5901*x[5]*x[13]-0.114*x[6]*x[9]-0.2222*x[6]*x[10]+0.4682*x[6]*x[11]+0.9883*x[6]*x[13]-0.3191*x[7]*x[8]+0.1099*x[7]*x[9]+0.8142*x[7]*x[13]+0.3782*x[7]*x[14]-0.1401*x[8]*x[12]+0.9334*x[8]*x[14]+0.4447*x[9]*x[10]-0.6598*x[9]*x[11]-0.3891*x[9]*x[12]-0.3364*x[11]*x[14]+0.3543*x[11]*x[15]+0.6388*x[12]*x[14]-0.3008*x[1]+0.5901*x[2]+0.7212*x[4]+0.9438*x[5]+0.9375*x[6]-0.4427*x[7]-0.4899*x[8]-0.8629*x[9]+0.17*x[10]+0.6029*x[11]+0.0365*x[12]-0.8417*x[13]+0.0012*x[14]+0.2666*x[2]^2*x[6]-0.1807*x[2]^2*x[3]-0.6534*x[2]^2*x[13]+0.9345*x[3]^2*x[7]-0.4626*x[3]^2*x[9]+0.4756*x[3]^2*x[10]-0.2758*x[3]^2*x[11]-0.6259*x[3]^2*x[15]-0.5749*x[4]^2*x[6]+0.8832*x[4]^2*x[12]-0.0765*x[5]^2*x[2]-0.0029*x[6]^2*x[14]-0.0939*x[7]^2*x[3]-0.5438*x[7]^2*x[11]-0.5952*x[7]^2*x[12]-0.1333*x[8]^2*x[7]+0.9372*x[8]^2*x[9]-0.4269*x[8]^2*x[11]+0.9753*x[9]^2*x[3]+0.0114*x[9]^2*x[10]-0.4602*x[9]^2*x[12]-0.1199*x[9]^2*x[13]-0.4813*x[9]^2*x[14]+0.4609*x[10]^2*x[8]+0.0107*x[11]^2*x[9]-0.3095*x[12]^2*x[3]-0.8029*x[12]^2*x[10]+0.1144*x[14]^2*x[3]-0.8596*x[14]^2*x[9]+0.7435*x[15]^2*x[7]+0.3441*x[15]^2*x[10]-0.9384*x[3]+0.7824*x[1]*x[2]*x[7]+0.7351*x[1]*x[3]*x[10]-0.2169*x[1]*x[3]*x[13]-0.1457*x[1]*x[3]*x[14]+0.1061*x[1]*x[4]*x[7]-0.742*x[1]*x[4]*x[10]-0.6133*x[1]*x[5]*x[6]+0.5297*x[1]*x[6]*x[8]+0.8266*x[1]*x[7]*x[12]-0.4404*x[1]*x[8]*x[9]+0.8747*x[1]*x[8]*x[10]-0.5507*x[1]*x[9]*x[10]+0.7151*x[1]*x[9]*x[12]-0.5787*x[1]*x[11]*x[12]-0.4861*x[1]*x[11]*x[13]+0.5506*x[1]*x[11]*x[14]+0.1509*x[2]*x[4]*x[7]+0.2552*x[2]*x[5]*x[6]+0.4461*x[2]*x[5]*x[8]+0.4032*x[2]*x[5]*x[10]+0.9841*x[2]*x[5]*x[14]+0.9836*x[2]*x[6]*x[11]+0.47*x[2]*x[6]*x[12]+0.7919*x[2]*x[7]*x[10]-0.6032*x[2]*x[7]*x[12]-0.5835*x[2]*x[7]*x[13]+0.1658*x[2]*x[7]*x[14]-0.6007*x[2]*x[8]*x[10]-0.7075*x[2]*x[8]*x[11]-0.3561*x[2]*x[8]*x[14]-0.2255*x[2]*x[8]*x[15]-0.8406*x[2]*x[11]*x[13]-0.0541*x[2]*x[12]*x[15]-0.5039*x[2]*x[13]*x[14]-0.685*x[3]*x[4]*x[5]+0.2352*x[3]*x[4]*x[6]-0.367*x[3]*x[4]*x[10]+0.9831*x[3]*x[4]*x[13]-0.1552*x[3]*x[4]*x[14]-0.6772*x[3]*x[5]*x[6]-0.6566*x[3]*x[5]*x[10]-0.3734*x[3]*x[5]*x[11]-0.7922*x[3]*x[5]*x[13]+0.3362*x[3]*x[6]*x[9]-0.661*x[3]*x[7]*x[8]+0.5222*x[3]*x[7]*x[14]+0.7875*x[3]*x[8]*x[9]-0.0054*x[3]*x[8]*x[11]-0.6917*x[3]*x[8]*x[12]-0.052*x[3]*x[8]*x[13]+0.5073*x[3]*x[8]*x[14]+0.8983*x[3]*x[9]*x[12]+0.2605*x[3]*x[10]*x[11]-0.4486*x[3]*x[10]*x[13]+0.3143*x[3]*x[10]*x[15]+0.6398*x[3]*x[11]*x[12]+0.2062*x[3]*x[11]*x[14]+0.4093*x[3]*x[12]*x[14]-0.6968*x[3]*x[13]*x[14]-0.2909*x[4]*x[5]*x[6]+0.4426*x[4]*x[5]*x[10]+0.2466*x[4]*x[5]*x[11]+0.9359*x[4]*x[5]*x[13]-0.8986*x[4]*x[6]*x[8]+0.4952*x[4]*x[6]*x[11]-0.0575*x[4]*x[6]*x[14]-0.1425*x[4]*x[7]*x[8]+0.7556*x[4]*x[7]*x[10]-0.371*x[4]*x[7]*x[12]+0.9129*x[4]*x[7]*x[13]+0.2271*x[4]*x[8]*x[9]+0.3267*x[4]*x[8]*x[11]+0.3192*x[4]*x[9]*x[10]+0.3407*x[4]*x[9]*x[11]-0.0635*x[4]*x[9]*x[13]+0.6449*x[4]*x[10]*x[12]+0.0415*x[4]*x[12]*x[13]+0.2911*x[4]*x[14]*x[15]-0.3909*x[5]*x[6]*x[7]-0.3628*x[5]*x[6]*x[12]-0.1261*x[5]*x[6]*x[14]-0.7805*x[5]*x[6]*x[15]-0.3323*x[5]*x[7]*x[11]+0.0107*x[5]*x[8]*x[9]+0.6582*x[5]*x[9]*x[10]-0.1195*x[5]*x[9]*x[12]-0.8089*x[5]*x[9]*x[13]-0.6964*x[5]*x[10]*x[12]+0.6078*x[5]*x[10]*x[13]+0.3175*x[5]*x[10]*x[14]-0.4871*x[5]*x[11]*x[14]+0.7838*x[5]*x[12]*x[13]-0.4766*x[5]*x[12]*x[14]-0.8073*x[6]*x[7]*x[8]-0.1456*x[6]*x[7]*x[10]-0.0141*x[6]*x[7]*x[13]+0.2898*x[6]*x[7]*x[14]-0.5141*x[6]*x[7]*x[15]-0.2905*x[6]*x[8]*x[9]+0.1962*x[6]*x[8]*x[10]+0.3271*x[6]*x[8]*x[11]+0.509*x[6]*x[8]*x[12]+0.3262*x[6]*x[9]*x[11]-0.934*x[6]*x[9]*x[15]-0.9024*x[6]*x[10]*x[11]+0.4683*x[6]*x[10]*x[12]-0.3838*x[6]*x[10]*x[14]+0.7674*x[6]*x[10]*x[15]+0.0834*x[6]*x[11]*x[13]+0.8427*x[6]*x[11]*x[14]+0.0652*x[6]*x[13]*x[14]-0.2661*x[6]*x[14]*x[15]+0.7657*x[7]*x[8]*x[14]+0.7129*x[7]*x[8]*x[15]+0.1443*x[7]*x[9]*x[10]+0.2637*x[7]*x[9]*x[11]+0.0808*x[7]*x[9]*x[14]+0.5504*x[7]*x[9]*x[15]-0.279*x[7]*x[10]*x[14]-0.8543*x[7]*x[10]*x[15]-0.1822*x[7]*x[11]*x[12]-0.5087*x[7]*x[12]*x[14]+0.3072*x[7]*x[13]*x[14]+0.3275*x[8]*x[9]*x[10]-0.8077*x[8]*x[9]*x[13]-0.9912*x[8]*x[9]*x[15]-0.722*x[8]*x[10]*x[12]+0.6762*x[8]*x[13]*x[14]+0.5999*x[8]*x[13]*x[15]+0.4727*x[9]*x[10]*x[13]+0.4006*x[9]*x[10]*x[14]+0.1033*x[9]*x[11]*x[14]+0.1302*x[9]*x[12]*x[13]-0.7795*x[9]*x[14]*x[15]+0.0713*x[10]*x[14]*x[15]-0.5894*x[11]*x[12]*x[13]-0.1183*x[12]*x[13]*x[14] <= 71.23)
@NLconstraint(m, e4, (-0.7202*x[2]^3)-0.383*x[2]+(-0.8104*x[5]^2)-0.4994*x[5]+0.188*x[6]^3-0.4693*x[6]^2+0.5445*x[6]+0.7336*x[8]-0.9248*x[8]^2+0.8117*x[12]-0.5579*x[12]^3+0.5458*x[14]^3-0.1992*x[14]+0.8295*x[1]*x[4]-0.4338*x[1]*x[2]+0.4281*x[1]*x[7]+0.6694*x[1]*x[12]+0.1176*x[1]*x[13]+0.9512*x[1]*x[14]+0.6679*x[2]*x[3]+0.1246*x[2]*x[4]-0.5137*x[2]*x[6]+0.0982*x[2]*x[9]+0.2568*x[2]*x[10]+0.4823*x[2]*x[11]+0.8317*x[2]*x[14]+0.8875*x[3]*x[5]+0.0137*x[3]*x[9]+0.3551*x[3]*x[12]+0.3188*x[3]*x[13]-0.1838*x[4]*x[6]-0.7927*x[4]*x[7]+0.6038*x[4]*x[10]+0.5173*x[5]*x[6]-0.7227*x[6]*x[11]-0.7541*x[7]*x[11]-0.7316*x[7]*x[13]+0.3057*x[8]*x[12]-0.5252*x[8]*x[14]-0.5569*x[9]*x[10]+0.7311*x[10]*x[11]-0.9362*x[10]*x[14]-0.8519*x[11]*x[13]-0.3967*x[12]*x[13]+0.6659*x[13]*x[14]+0.199*x[1]+0.2239*x[3]-0.3205*x[4]-0.8031*x[7]-0.5909*x[9]-0.5938*x[10]-0.2724*x[11]-0.7573*x[13]+0.9159*x[1]^2*x[8]-0.3945*x[1]^2*x[7]-0.1742*x[2]^2*x[1]+0.7357*x[2]^2*x[8]+0.5943*x[2]^2*x[12]-0.4487*x[2]^2*x[13]-0.2345*x[4]^2*x[2]-0.8191*x[5]^2*x[8]-0.5577*x[5]^2*x[12]-0.2646*x[7]^2*x[8]-0.3701*x[7]^2*x[13]-0.7292*x[8]^2*x[5]-0.1077*x[8]^2*x[9]+0.5788*x[8]^2*x[10]-0.7706*x[8]^2*x[11]-0.5186*x[8]^2*x[14]-0.9458*x[8]^2*x[15]+0.5928*x[9]^2*x[1]+0.2158*x[9]^2*x[2]-0.2215*x[9]^2*x[11]+0.2697*x[10]^2*x[5]+0.7316*x[10]^2*x[9]-0.6513*x[10]^2*x[11]+0.3754*x[10]^2*x[13]-0.6687*x[10]^2*x[14]+0.6782*x[12]^2*x[2]-0.8464*x[12]^2*x[4]-0.4863*x[12]^2*x[6]-0.844*x[12]^2*x[9]+0.6117*x[13]^2*x[4]-0.8825*x[13]^2*x[8]-0.4891*x[13]^2*x[9]+0.3574*x[13]^2*x[14]-0.6831*x[14]^2*x[3]+0.4234*x[15]+0.6179*x[1]*x[3]*x[4]-0.0081*x[1]*x[2]*x[12]+0.3465*x[1]*x[4]*x[5]-0.4401*x[1]*x[4]*x[7]+0.0624*x[1]*x[5]*x[6]-0.1108*x[1]*x[5]*x[7]+0.4108*x[1]*x[5]*x[8]-0.5469*x[1]*x[5]*x[14]-0.8935*x[1]*x[6]*x[8]-0.725*x[1]*x[6]*x[14]-0.6446*x[1]*x[7]*x[10]+0.034*x[1]*x[8]*x[9]-0.1481*x[1]*x[9]*x[14]+0.4695*x[1]*x[10]*x[13]-0.9093*x[1]*x[10]*x[15]-0.5923*x[2]*x[3]*x[5]-0.0429*x[2]*x[3]*x[9]-0.2636*x[2]*x[3]*x[12]+0.0101*x[2]*x[3]*x[13]-0.1743*x[2]*x[3]*x[15]-0.4161*x[2]*x[4]*x[13]-0.044*x[2]*x[4]*x[14]+0.7083*x[2]*x[5]*x[11]-0.4149*x[2]*x[5]*x[14]+0.563*x[2]*x[6]*x[7]+0.5994*x[2]*x[6]*x[8]-0.1791*x[2]*x[6]*x[10]+0.1332*x[2]*x[6]*x[11]-0.33*x[2]*x[6]*x[13]+0.5163*x[2]*x[7]*x[11]-0.4579*x[2]*x[8]*x[11]+0.7477*x[2]*x[8]*x[12]+0.2593*x[2]*x[8]*x[14]-0.6338*x[2]*x[9]*x[10]+0.3888*x[2]*x[10]*x[13]+0.2193*x[2]*x[10]*x[14]-0.5192*x[2]*x[11]*x[12]-0.6536*x[2]*x[12]*x[14]+0.1861*x[2]*x[13]*x[14]+0.7913*x[2]*x[13]*x[15]-0.89*x[3]*x[4]*x[9]-0.9516*x[3]*x[4]*x[10]+0.4259*x[3]*x[4]*x[14]+0.0502*x[3]*x[4]*x[15]-0.4835*x[3]*x[5]*x[7]+0.3759*x[3]*x[5]*x[8]-0.2591*x[3]*x[6]*x[10]-0.636*x[3]*x[6]*x[14]+0.574*x[3]*x[7]*x[8]+0.6592*x[3]*x[7]*x[12]-0.534*x[3]*x[8]*x[9]-0.0951*x[3]*x[8]*x[12]-0.267*x[3]*x[8]*x[13]-0.1606*x[3]*x[9]*x[10]-0.1062*x[3]*x[9]*x[15]-0.6219*x[3]*x[10]*x[11]+0.5288*x[3]*x[11]*x[15]+0.3634*x[3]*x[12]*x[15]+0.2624*x[4]*x[5]*x[10]+0.6537*x[4]*x[5]*x[12]-0.6434*x[4]*x[5]*x[13]+0.2739*x[4]*x[6]*x[7]+0.1432*x[4]*x[6]*x[11]-0.5685*x[4]*x[7]*x[10]-0.3801*x[4]*x[7]*x[12]-0.4195*x[4]*x[7]*x[13]+0.3302*x[4]*x[9]*x[11]+0.3221*x[4]*x[9]*x[13]-0.9087*x[4]*x[9]*x[15]+0.2558*x[4]*x[10]*x[15]-0.9116*x[4]*x[11]*x[12]+0.7131*x[4]*x[11]*x[13]+0.4237*x[4]*x[11]*x[14]+0.2797*x[4]*x[12]*x[14]+0.2025*x[4]*x[13]*x[15]-0.1941*x[4]*x[14]*x[15]-0.1539*x[5]*x[6]*x[7]-0.8031*x[5]*x[6]*x[12]+0.4894*x[5]*x[7]*x[13]-0.5678*x[5]*x[7]*x[14]-0.6556*x[5]*x[8]*x[9]-0.7415*x[5]*x[8]*x[10]+0.1728*x[5]*x[8]*x[11]+0.1014*x[5]*x[8]*x[13]+0.2309*x[5]*x[8]*x[14]-0.1958*x[5]*x[9]*x[10]+0.904*x[5]*x[9]*x[11]-0.9992*x[5]*x[9]*x[13]-0.5277*x[5]*x[9]*x[15]-0.3218*x[6]*x[7]*x[8]+0.4657*x[6]*x[7]*x[9]-0.3066*x[6]*x[7]*x[12]-0.2288*x[6]*x[7]*x[13]+0.2396*x[6]*x[7]*x[15]-0.544*x[6]*x[8]*x[9]+0.0613*x[6]*x[8]*x[10]+0.9861*x[6]*x[8]*x[11]+0.903*x[6]*x[8]*x[15]-0.8874*x[6]*x[9]*x[11]-0.1893*x[6]*x[9]*x[12]+0.2355*x[6]*x[10]*x[11]+0.6849*x[6]*x[11]*x[12]-0.0651*x[6]*x[12]*x[15]+0.4408*x[6]*x[13]*x[14]-0.8986*x[7]*x[8]*x[10]-0.4969*x[7]*x[8]*x[11]-0.4778*x[7]*x[8]*x[12]-0.9332*x[7]*x[9]*x[12]-0.2349*x[7]*x[9]*x[15]-0.9709*x[7]*x[10]*x[12]-0.0258*x[7]*x[10]*x[13]+0.266*x[7]*x[10]*x[14]-0.3287*x[7]*x[11]*x[13]+0.4809*x[7]*x[14]*x[15]+0.7228*x[8]*x[11]*x[13]-0.5022*x[8]*x[11]*x[14]+0.0368*x[8]*x[11]*x[15]-0.1502*x[8]*x[12]*x[13]-0.9665*x[9]*x[10]*x[12]-0.4641*x[9]*x[10]*x[15]+0.1654*x[10]*x[11]*x[13]-0.4545*x[10]*x[13]*x[14]-0.7451*x[10]*x[13]*x[15]+0.5713*x[11]*x[14]*x[15]+0.7442*x[12]*x[14]*x[15]+0.3714*x[13]*x[14]*x[15] <= 70.981)
@NLconstraint(m, e5, 0.4805*x[2]^3-0.892*x[2]+0.8887*x[4]^2+0.7213*x[4]+0.6993*x[8]-0.9207*x[8]^2+0.9493*x[1]*x[14]+0.0771*x[2]*x[3]-0.892*x[2]*x[10]+0.039*x[2]*x[12]+0.9017*x[2]*x[15]-0.2566*x[3]*x[4]+0.0608*x[3]*x[5]-0.4316*x[3]*x[13]-0.0046*x[4]*x[7]+0.6979*x[4]*x[13]+0.9064*x[5]*x[6]+0.0824*x[5]*x[9]-0.944*x[5]*x[11]-0.5255*x[5]*x[12]-0.0922*x[5]*x[13]+0.3992*x[5]*x[15]-0.304*x[6]*x[7]+0.2919*x[6]*x[10]+0.7535*x[6]*x[11]+0.547*x[6]*x[14]-0.8988*x[6]*x[15]-0.5028*x[7]*x[11]+0.4362*x[7]*x[12]-0.1517*x[7]*x[13]+0.972*x[8]*x[11]-0.3668*x[8]*x[13]-0.8821*x[8]*x[14]-0.0133*x[10]*x[12]-0.6361*x[10]*x[14]-0.7225*x[11]*x[15]+0.6912*x[1]-0.9036*x[3]+0.6528*x[5]-0.1298*x[6]-0.0345*x[7]-0.5797*x[9]-0.4742*x[10]-0.0212*x[11]-0.8565*x[12]-0.3478*x[13]+0.4183*x[14]-0.5837*x[15]+0.3448*x[2]^2*x[7]+0.9487*x[2]^2*x[13]-0.0594*x[4]^2*x[6]+0.7268*x[4]^2*x[7]-0.6151*x[4]^2*x[13]-0.6501*x[4]^2*x[14]+0.5244*x[5]^2*x[4]+0.4241*x[5]^2*x[10]+0.2847*x[6]^2*x[3]+0.1367*x[6]^2*x[11]-0.686*x[6]^2*x[12]-0.2654*x[8]^2*x[5]-0.2951*x[8]^2*x[6]+0.0179*x[8]^2*x[9]-0.0772*x[9]^2*x[2]+0.8364*x[9]^2*x[7]+0.9153*x[9]^2*x[13]-0.0883*x[9]^2*x[14]+0.5374*x[10]^2*x[1]-0.4338*x[10]^2*x[2]+0.3099*x[11]^2*x[2]-0.8312*x[11]^2*x[5]+0.4188*x[11]^2*x[8]-0.3319*x[11]^2*x[13]+0.7841*x[12]^2*x[6]-0.3665*x[12]^2*x[10]-0.3902*x[12]^2*x[11]+0.4066*x[12]^2*x[13]-0.8954*x[13]^2*x[7]-0.0162*x[13]^2*x[10]+0.0572*x[14]^2*x[2]-0.3945*x[14]^2*x[3]+0.8011*x[14]^2*x[13]+0.769*x[1]*x[2]*x[12]-0.7119*x[1]*x[3]*x[14]-0.7909*x[1]*x[4]*x[10]-0.7062*x[1]*x[6]*x[12]-0.5244*x[1]*x[9]*x[10]+0.0097*x[1]*x[9]*x[13]-0.8324*x[1]*x[10]*x[12]-0.1257*x[2]*x[3]*x[5]+0.36*x[2]*x[3]*x[9]-0.8945*x[2]*x[3]*x[11]+0.6079*x[2]*x[3]*x[12]-0.6099*x[2]*x[4]*x[5]+0.3396*x[2]*x[4]*x[9]+0.0006*x[2]*x[4]*x[13]+0.629*x[2]*x[4]*x[14]+0.8974*x[2]*x[5]*x[8]+0.9538*x[2]*x[5]*x[9]-0.352*x[2]*x[5]*x[10]-0.0122*x[2]*x[6]*x[9]-0.3651*x[2]*x[6]*x[11]-0.0018*x[2]*x[7]*x[9]-0.4972*x[2]*x[7]*x[12]-0.5861*x[2]*x[7]*x[13]-0.3898*x[2]*x[8]*x[9]-0.5989*x[2]*x[8]*x[13]-0.1545*x[2]*x[8]*x[14]-0.5875*x[2]*x[9]*x[10]+0.0438*x[2]*x[9]*x[12]+0.204*x[2]*x[9]*x[13]+0.2515*x[2]*x[9]*x[15]+0.5877*x[2]*x[10]*x[11]-0.5075*x[2]*x[10]*x[14]-0.537*x[2]*x[12]*x[13]-0.0736*x[2]*x[13]*x[14]-0.4299*x[2]*x[14]*x[15]+0.2023*x[3]*x[4]*x[9]+0.922*x[3]*x[4]*x[11]+0.2614*x[3]*x[4]*x[12]-0.0736*x[3]*x[4]*x[14]+0.2775*x[3]*x[5]*x[6]+0.5804*x[3]*x[5]*x[7]-0.9501*x[3]*x[5]*x[8]-0.0691*x[3]*x[5]*x[9]+0.4374*x[3]*x[5]*x[11]-0.0681*x[3]*x[5]*x[13]+0.0885*x[3]*x[5]*x[14]+0.2351*x[3]*x[6]*x[7]+0.7155*x[3]*x[6]*x[14]-0.2532*x[3]*x[7]*x[9]+0.7332*x[3]*x[7]*x[11]+0.6117*x[3]*x[7]*x[12]-0.6569*x[3]*x[7]*x[13]+0.0079*x[3]*x[7]*x[15]-0.7639*x[3]*x[8]*x[10]+0.5205*x[3]*x[8]*x[15]+0.1487*x[3]*x[9]*x[10]+0.2117*x[3]*x[9]*x[13]-0.3792*x[3]*x[9]*x[14]+0.2093*x[3]*x[10]*x[15]-0.0301*x[3]*x[11]*x[12]+0.8965*x[3]*x[11]*x[13]+0.2507*x[4]*x[5]*x[9]+0.1252*x[4]*x[5]*x[10]+0.7903*x[4]*x[5]*x[11]-0.045*x[4]*x[5]*x[12]+0.9463*x[4]*x[6]*x[8]+0.1913*x[4]*x[6]*x[14]-0.0993*x[4]*x[7]*x[8]-0.4694*x[4]*x[7]*x[9]+0.789*x[4]*x[7]*x[10]-0.1132*x[4]*x[7]*x[12]+0.9687*x[4]*x[8]*x[9]-0.0105*x[4]*x[8]*x[13]-0.8619*x[4]*x[9]*x[11]-0.2592*x[4]*x[9]*x[14]+0.7392*x[4]*x[10]*x[11]-0.8208*x[4]*x[10]*x[12]+0.6858*x[4]*x[10]*x[13]+0.1785*x[4]*x[11]*x[15]+0.1919*x[4]*x[13]*x[14]+0.7182*x[5]*x[6]*x[9]-0.9962*x[5]*x[7]*x[8]+0.3463*x[5]*x[7]*x[9]+0.9045*x[5]*x[7]*x[10]+0.1492*x[5]*x[7]*x[12]+0.4264*x[5]*x[7]*x[14]-0.2277*x[5]*x[7]*x[15]-0.7771*x[5]*x[8]*x[14]-0.8026*x[5]*x[8]*x[15]+0.7055*x[5]*x[9]*x[13]-0.5451*x[5]*x[9]*x[14]+0.232*x[5]*x[9]*x[15]-0.0647*x[5]*x[10]*x[12]-0.439*x[5]*x[10]*x[14]-0.8102*x[5]*x[10]*x[15]-0.9842*x[5]*x[11]*x[13]-0.5249*x[5]*x[11]*x[14]-0.2734*x[5]*x[11]*x[15]-0.2998*x[5]*x[12]*x[14]-0.4147*x[6]*x[7]*x[12]+0.493*x[6]*x[8]*x[10]-0.9177*x[6]*x[8]*x[14]+0.7824*x[6]*x[9]*x[13]+0.9837*x[6]*x[10]*x[13]+0.7942*x[6]*x[12]*x[14]+0.9207*x[7]*x[8]*x[11]+0.2378*x[7]*x[9]*x[14]-0.1091*x[7]*x[10]*x[12]-0.8429*x[7]*x[10]*x[13]+0.2418*x[7]*x[10]*x[14]-0.2152*x[7]*x[10]*x[15]-0.9857*x[7]*x[11]*x[12]-0.1776*x[7]*x[11]*x[13]+0.468*x[7]*x[12]*x[13]-0.9863*x[8]*x[9]*x[10]+0.1741*x[8]*x[9]*x[13]+0.4324*x[8]*x[9]*x[14]+0.6615*x[8]*x[10]*x[14]-0.7291*x[8]*x[11]*x[13]+0.0842*x[8]*x[12]*x[15]-0.4125*x[8]*x[14]*x[15]-0.035*x[9]*x[10]*x[11]+0.1416*x[9]*x[10]*x[12]-0.0818*x[9]*x[10]*x[13]-0.6286*x[9]*x[11]*x[13]-0.5313*x[9]*x[13]*x[15]+0.7681*x[9]*x[14]*x[15]-0.1636*x[10]*x[11]*x[12]-0.4796*x[10]*x[12]*x[13]+0.9978*x[10]*x[13]*x[14]+0.7914*x[10]*x[13]*x[15]-0.4056*x[11]*x[12]*x[14]-0.0054*x[11]*x[14]*x[15]-0.0493*x[12]*x[13]*x[15] <= 28.741)
@NLconstraint(m, e6, (-0.0141*x[2]^2)-0.4891*x[2]+0.1705*x[4]^2-0.487*x[4]+(-0.282*x[7]^2)-0.0435*x[7]+0.0912*x[8]-0.7715*x[8]^2+0.8815*x[1]*x[3]+0.5064*x[1]*x[5]-0.7841*x[1]*x[11]+0.5677*x[1]*x[14]-0.5136*x[2]*x[5]+0.5617*x[2]*x[10]-0.1941*x[2]*x[11]-0.0946*x[2]*x[14]+0.7664*x[3]*x[5]-0.5596*x[3]*x[6]-0.3978*x[3]*x[7]-0.3763*x[3]*x[8]-0.0432*x[3]*x[11]+0.4205*x[3]*x[13]+0.7493*x[3]*x[14]-0.798*x[3]*x[15]-0.6685*x[4]*x[8]-0.6163*x[4]*x[12]+0.7628*x[4]*x[13]-0.061*x[5]*x[10]-0.2175*x[5]*x[13]+0.8849*x[6]*x[7]+0.2374*x[6]*x[11]-0.8665*x[6]*x[12]+0.371*x[7]*x[8]+0.3299*x[7]*x[9]+0.2743*x[7]*x[11]-0.9209*x[7]*x[12]+0.3168*x[7]*x[14]+0.8939*x[8]*x[14]-0.4665*x[9]*x[13]+0.0723*x[9]*x[14]-0.8718*x[10]*x[14]-0.9075*x[10]*x[15]-0.1332*x[13]*x[14]-0.5132*x[1]+0.1799*x[3]-0.2267*x[5]+0.8948*x[6]-0.258*x[9]-0.6664*x[10]+0.2008*x[11]-0.3767*x[12]-0.9524*x[13]-0.5214*x[14]-0.7878*x[15]+(-0.5471*x[2]^2*x[5])-0.9803*x[2]^2*x[6]-0.5641*x[2]^2*x[12]+0.5865*x[2]^2*x[14]+0.6817*x[2]^2*x[15]+0.2106*x[3]^2*x[9]-0.9147*x[3]^2*x[15]+0.3514*x[4]^2*x[8]-0.0762*x[4]^2*x[10]+0.4668*x[4]^2*x[13]-0.3226*x[5]^2*x[9]+0.3118*x[5]^2*x[10]+0.3331*x[5]^2*x[14]+0.1841*x[6]^2*x[1]+0.0481*x[6]^2*x[3]-0.6769*x[6]^2*x[13]-0.7378*x[7]^2*x[6]-0.7763*x[7]^2*x[11]-0.012*x[7]^2*x[13]-0.0308*x[8]^2*x[2]+0.9867*x[8]^2*x[9]-0.6291*x[8]^2*x[13]+0.1787*x[8]^2*x[14]-0.6441*x[9]^2*x[2]-0.0647*x[9]^2*x[8]-0.6267*x[10]^2*x[5]+0.8596*x[10]^2*x[11]-0.7522*x[11]^2*x[5]-0.2926*x[12]^2*x[2]+0.0696*x[12]^2*x[3]+0.3707*x[12]^2*x[6]+0.5968*x[12]^2*x[10]-0.1357*x[13]^2*x[4]-0.0566*x[13]^2*x[6]+0.6738*x[14]^2*x[4]-0.0306*x[14]^2*x[7]+0.1757*x[14]^2*x[8]-0.0407*x[14]^2*x[9]-0.093*x[14]^2*x[13]+0.1925*x[15]^2*x[9]-0.2442*x[15]^2*x[13]+0.3202*x[1]*x[2]*x[6]-0.1685*x[1]*x[2]*x[9]-0.7246*x[1]*x[3]*x[4]+0.6862*x[1]*x[3]*x[7]+0.9126*x[1]*x[3]*x[9]+0.894*x[1]*x[3]*x[13]+0.5361*x[1]*x[4]*x[9]-0.8628*x[1]*x[4]*x[11]-0.8114*x[1]*x[4]*x[13]-0.4376*x[1]*x[5]*x[8]-0.3832*x[1]*x[5]*x[12]+0.127*x[1]*x[5]*x[13]+0.7788*x[1]*x[6]*x[7]-0.9581*x[1]*x[6]*x[9]+0.2558*x[1]*x[6]*x[11]+0.4841*x[1]*x[6]*x[12]+0.583*x[1]*x[7]*x[8]+0.4888*x[1]*x[7]*x[10]-0.473*x[1]*x[7]*x[11]+0.0034*x[1]*x[9]*x[10]+0.6389*x[1]*x[9]*x[11]+0.2347*x[1]*x[9]*x[12]+0.2584*x[1]*x[12]*x[14]-0.7746*x[2]*x[3]*x[5]+0.0516*x[2]*x[3]*x[9]-0.121*x[2]*x[3]*x[15]+0.2716*x[2]*x[5]*x[6]+0.0849*x[2]*x[5]*x[12]+0.6496*x[2]*x[5]*x[14]-0.9623*x[2]*x[7]*x[11]-0.8598*x[2]*x[7]*x[14]-0.1309*x[2]*x[8]*x[9]+0.4479*x[2]*x[9]*x[10]-0.0756*x[2]*x[9]*x[11]-0.7468*x[2]*x[9]*x[12]+0.5121*x[2]*x[10]*x[11]+0.5158*x[2]*x[10]*x[13]-0.8176*x[2]*x[12]*x[14]-0.6845*x[2]*x[13]*x[14]-0.7519*x[3]*x[4]*x[7]+0.8254*x[3]*x[4]*x[8]+0.7894*x[3]*x[4]*x[11]-0.4004*x[3]*x[4]*x[12]+0.5026*x[3]*x[5]*x[11]-0.9665*x[3]*x[6]*x[7]-0.7518*x[3]*x[6]*x[13]-0.3298*x[3]*x[7]*x[9]+0.505*x[3]*x[7]*x[10]-0.6908*x[3]*x[7]*x[12]+0.7646*x[3]*x[7]*x[14]+0.7326*x[3]*x[8]*x[9]+0.9707*x[3]*x[8]*x[11]-0.7492*x[3]*x[8]*x[13]+0.6556*x[3]*x[8]*x[14]-0.4893*x[3]*x[9]*x[12]-0.5567*x[3]*x[9]*x[14]-0.9675*x[3]*x[10]*x[12]-0.0522*x[3]*x[11]*x[13]+0.9783*x[3]*x[13]*x[14]+0.7061*x[4]*x[5]*x[7]-0.4957*x[4]*x[5]*x[8]-0.9421*x[4]*x[5]*x[9]-0.72*x[4]*x[5]*x[10]-0.3101*x[4]*x[5]*x[11]-0.7477*x[4]*x[6]*x[9]+0.1579*x[4]*x[7]*x[9]+0.3848*x[4]*x[7]*x[11]-0.4965*x[4]*x[7]*x[12]+0.789*x[4]*x[7]*x[14]-0.3516*x[4]*x[7]*x[15]+0.1636*x[4]*x[8]*x[15]-0.7496*x[4]*x[9]*x[10]+0.9928*x[4]*x[10]*x[11]+0.7949*x[4]*x[10]*x[13]-0.3953*x[4]*x[11]*x[14]-0.8705*x[4]*x[12]*x[13]-0.169*x[4]*x[14]*x[15]+0.8373*x[5]*x[6]*x[7]-0.7817*x[5]*x[6]*x[10]-0.6094*x[5]*x[6]*x[11]+0.7797*x[5]*x[6]*x[13]-0.6435*x[5]*x[7]*x[15]+0.9133*x[5]*x[8]*x[10]+0.1618*x[5]*x[8]*x[12]+0.6991*x[5]*x[8]*x[13]-0.3932*x[5]*x[8]*x[14]-0.542*x[5]*x[9]*x[10]+0.8242*x[5]*x[9]*x[11]-0.1772*x[5]*x[13]*x[14]+0.5234*x[6]*x[7]*x[9]-0.0398*x[6]*x[7]*x[13]-0.6596*x[6]*x[8]*x[10]-0.9744*x[6]*x[8]*x[13]+0.9791*x[6]*x[9]*x[14]+0.8171*x[6]*x[10]*x[12]-0.3131*x[6]*x[11]*x[14]-0.0459*x[6]*x[13]*x[14]-0.6014*x[7]*x[8]*x[9]+0.8553*x[7]*x[9]*x[10]-0.8596*x[7]*x[9]*x[12]+0.2633*x[7]*x[9]*x[14]-0.5475*x[7]*x[10]*x[11]+0.1543*x[7]*x[11]*x[14]+0.8372*x[8]*x[9]*x[12]+0.1632*x[8]*x[10]*x[11]-0.1526*x[8]*x[11]*x[15]-0.267*x[9]*x[10]*x[11]-0.0625*x[9]*x[10]*x[12]-0.5568*x[9]*x[10]*x[13]+0.9178*x[9]*x[12]*x[13]-0.44*x[9]*x[12]*x[15]-0.8283*x[10]*x[11]*x[13]-0.0556*x[10]*x[11]*x[14]-0.2695*x[10]*x[12]*x[13]-0.7334*x[10]*x[12]*x[15]-0.7757*x[10]*x[14]*x[15]-0.914*x[11]*x[12]*x[13]+0.3575*x[11]*x[13]*x[14]-0.6979*x[13]*x[14]*x[15] <= 12.14)
@NLconstraint(m, e7, 0.2218*x[5]^2-0.8256*x[5]+0.2609*x[7]^2+0.2482*x[7]+(-0.6021*x[1]*x[5])-0.2555*x[1]*x[9]-0.3995*x[1]*x[14]-0.7804*x[2]*x[9]-0.2646*x[2]*x[10]+0.7514*x[2]*x[13]-0.9709*x[3]*x[5]-0.8805*x[3]*x[7]-0.6182*x[3]*x[12]+0.0408*x[4]*x[10]-0.4336*x[4]*x[11]+0.0441*x[4]*x[14]-0.2385*x[5]*x[8]+0.7613*x[5]*x[12]-0.1864*x[6]*x[8]-0.545*x[6]*x[10]+0.2695*x[7]*x[10]-0.2108*x[7]*x[11]-0.8849*x[7]*x[13]+0.3548*x[7]*x[14]+0.8471*x[9]*x[12]+0.2675*x[9]*x[13]+0.8877*x[9]*x[15]-0.9197*x[10]*x[13]-0.522*x[11]*x[12]+0.8863*x[1]+0.627*x[2]-0.3146*x[3]-0.063*x[4]+0.4004*x[6]-0.8289*x[8]+0.3358*x[9]-0.0755*x[10]-0.3687*x[11]+0.1612*x[12]+0.438*x[13]-0.7275*x[14]-0.8205*x[15]+0.7565*x[2]^2*x[10]-0.2049*x[2]^2*x[5]+0.933*x[2]^2*x[13]+0.3907*x[3]^2*x[1]-0.9623*x[3]^2*x[2]-0.2734*x[3]^2*x[4]-0.2543*x[3]^2*x[9]-0.2551*x[3]^2*x[12]-0.8943*x[3]^2*x[15]+0.2448*x[4]^2*x[12]-0.8871*x[5]^2*x[3]-0.9248*x[5]^2*x[6]-0.9848*x[5]^2*x[13]+0.0811*x[5]^2*x[14]-0.1394*x[6]^2*x[5]+0.9267*x[7]^2*x[3]+0.5963*x[7]^2*x[5]-0.3613*x[7]^2*x[6]-0.9237*x[7]^2*x[10]+0.8154*x[7]^2*x[11]-0.5114*x[7]^2*x[12]-0.5551*x[7]^2*x[14]+0.4895*x[8]^2*x[3]-0.931*x[8]^2*x[7]-0.7759*x[8]^2*x[15]+0.5787*x[9]^2*x[6]+0.4851*x[10]^2*x[2]+0.5214*x[10]^2*x[3]-0.7592*x[10]^2*x[5]+0.6274*x[11]^2*x[8]-0.0503*x[12]^2*x[1]-0.8626*x[12]^2*x[7]+0.2685*x[12]^2*x[14]+0.908*x[12]^2*x[15]-0.6005*x[13]^2*x[6]+0.5473*x[13]^2*x[9]-0.2726*x[13]^2*x[11]+0.4013*x[14]^2*x[7]-0.2162*x[14]^2*x[9]+0.3298*x[1]*x[2]*x[4]+0.9769*x[1]*x[3]*x[5]+0.7923*x[1]*x[4]*x[6]+0.7016*x[1]*x[4]*x[12]+0.6314*x[1]*x[4]*x[14]-0.1528*x[1]*x[6]*x[9]-0.0347*x[1]*x[6]*x[13]+0.203*x[1]*x[8]*x[11]+0.0393*x[1]*x[9]*x[13]-0.726*x[1]*x[9]*x[14]+0.8317*x[1]*x[10]*x[14]+0.1719*x[1]*x[13]*x[14]+0.0293*x[2]*x[3]*x[8]+0.9314*x[2]*x[3]*x[11]-0.9366*x[2]*x[3]*x[12]-0.7209*x[2]*x[3]*x[13]-0.8569*x[2]*x[3]*x[15]+0.114*x[2]*x[4]*x[5]+0.112*x[2]*x[4]*x[7]+0.835*x[2]*x[4]*x[13]+0.836*x[2]*x[4]*x[14]+0.5548*x[2]*x[5]*x[7]-0.4995*x[2]*x[5]*x[9]-0.0225*x[2]*x[5]*x[11]+0.1029*x[2]*x[5]*x[14]-0.2455*x[2]*x[5]*x[15]-0.5713*x[2]*x[6]*x[7]-0.317*x[2]*x[6]*x[11]-0.1259*x[2]*x[7]*x[10]-0.9254*x[2]*x[7]*x[12]-0.2792*x[2]*x[7]*x[15]+0.1464*x[2]*x[8]*x[9]-0.5117*x[2]*x[8]*x[10]+0.0554*x[2]*x[8]*x[14]+0.6014*x[2]*x[8]*x[15]-0.0003*x[2]*x[9]*x[13]-0.3924*x[2]*x[9]*x[14]-0.6039*x[2]*x[10]*x[12]+0.9647*x[2]*x[10]*x[13]+0.6185*x[2]*x[11]*x[12]-0.1205*x[2]*x[11]*x[14]-0.2806*x[3]*x[4]*x[5]+0.9755*x[3]*x[4]*x[6]-0.5859*x[3]*x[4]*x[7]+0.3519*x[3]*x[4]*x[14]-0.9267*x[3]*x[5]*x[8]-0.0031*x[3]*x[5]*x[11]-0.2462*x[3]*x[5]*x[14]-0.996*x[3]*x[6]*x[9]-0.2745*x[3]*x[6]*x[10]+0.5982*x[3]*x[6]*x[11]-0.8401*x[3]*x[6]*x[15]-0.7937*x[3]*x[7]*x[8]-0.5388*x[3]*x[7]*x[10]+0.5962*x[3]*x[7]*x[12]+0.228*x[3]*x[7]*x[13]-0.5745*x[3]*x[8]*x[9]+0.1918*x[3]*x[8]*x[13]-0.9551*x[3]*x[9]*x[13]+0.4437*x[3]*x[10]*x[12]-0.0724*x[3]*x[10]*x[13]+0.8637*x[3]*x[10]*x[15]+0.1753*x[3]*x[11]*x[14]+0.4971*x[3]*x[11]*x[15]-0.2241*x[3]*x[14]*x[15]-0.6707*x[4]*x[5]*x[7]+0.6991*x[4]*x[5]*x[8]-0.758*x[4]*x[5]*x[9]-0.4298*x[4]*x[5]*x[11]-0.4979*x[4]*x[6]*x[7]-0.8095*x[4]*x[6]*x[12]+0.5566*x[4]*x[6]*x[15]+0.9349*x[4]*x[7]*x[9]-0.9964*x[4]*x[7]*x[10]-0.7961*x[4]*x[7]*x[11]-0.2091*x[4]*x[7]*x[12]-0.3633*x[4]*x[7]*x[13]+0.7584*x[4]*x[7]*x[14]-0.2385*x[4]*x[8]*x[9]+0.5619*x[4]*x[8]*x[10]+0.7652*x[4]*x[8]*x[11]-0.2657*x[4]*x[9]*x[11]+0.7508*x[4]*x[9]*x[14]+0.7354*x[4]*x[10]*x[14]+0.4424*x[4]*x[11]*x[12]+0.7111*x[4]*x[11]*x[14]+0.8366*x[4]*x[13]*x[15]-0.9563*x[4]*x[14]*x[15]-0.7936*x[5]*x[6]*x[8]+0.7555*x[5]*x[7]*x[8]-0.7846*x[5]*x[7]*x[14]-0.4341*x[5]*x[8]*x[13]+0.0188*x[5]*x[8]*x[14]-0.5964*x[5]*x[9]*x[13]-0.2413*x[5]*x[9]*x[14]+0.8869*x[5]*x[9]*x[15]-0.0929*x[5]*x[10]*x[12]-0.2721*x[5]*x[11]*x[13]-0.8002*x[5]*x[12]*x[15]+0.6098*x[6]*x[7]*x[8]+0.1429*x[6]*x[7]*x[9]+0.7424*x[6]*x[7]*x[14]-0.905*x[6]*x[8]*x[14]+0.1309*x[6]*x[9]*x[10]+0.6702*x[6]*x[10]*x[12]+0.1651*x[6]*x[10]*x[13]-0.1638*x[6]*x[10]*x[14]-0.6751*x[6]*x[10]*x[15]+0.1488*x[6]*x[12]*x[13]+0.3389*x[7]*x[8]*x[10]-0.6888*x[7]*x[9]*x[11]-0.3655*x[7]*x[9]*x[13]+0.7656*x[7]*x[9]*x[15]-0.2738*x[7]*x[10]*x[11]+0.7948*x[7]*x[10]*x[15]-0.5064*x[7]*x[11]*x[12]-0.3922*x[7]*x[11]*x[13]-0.5919*x[7]*x[11]*x[14]-0.0037*x[7]*x[12]*x[14]-0.304*x[8]*x[9]*x[11]-0.2057*x[8]*x[9]*x[15]-0.0884*x[8]*x[10]*x[13]+0.5995*x[8]*x[10]*x[15]+0.4005*x[8]*x[13]*x[14]-0.6772*x[9]*x[10]*x[14]-0.9185*x[9]*x[12]*x[13]-0.9376*x[9]*x[12]*x[14]+0.8593*x[10]*x[11]*x[12]-0.8184*x[10]*x[11]*x[14]-0.5448*x[10]*x[11]*x[15]+0.3983*x[10]*x[13]*x[15]+0.6502*x[11]*x[14]*x[15]-0.3034*x[12]*x[13]*x[14] <= 63.417)
@NLconstraint(m, e8, (-0.5988*x[6]^2)-0.6291*x[6]+0.9052*x[13]^2-0.1426*x[13]+0.0238*x[1]*x[5]-0.9893*x[1]*x[3]+0.9013*x[1]*x[14]+0.9949*x[2]*x[3]+0.4349*x[2]*x[8]+0.1762*x[2]*x[12]-0.2288*x[3]*x[12]-0.091*x[3]*x[13]-0.7252*x[3]*x[14]-0.2232*x[3]*x[15]-0.5729*x[4]*x[5]+0.6601*x[4]*x[9]-0.4574*x[4]*x[12]-0.4269*x[4]*x[13]-0.2102*x[5]*x[10]+0.8656*x[5]*x[11]+0.8241*x[5]*x[15]-0.6603*x[6]*x[13]+0.8721*x[7]*x[14]+0.1526*x[8]*x[11]+0.245*x[9]*x[10]+0.4107*x[9]*x[11]-0.8326*x[10]*x[15]+0.1519*x[11]*x[13]-0.7251*x[12]*x[13]-0.9536*x[13]*x[14]-0.0573*x[1]+0.626*x[2]-0.7159*x[3]+0.1884*x[4]-0.1154*x[5]+0.6192*x[7]-0.1014*x[8]-0.721*x[9]-0.7137*x[10]+0.1649*x[11]-0.0683*x[12]+0.8519*x[14]+0.6096*x[15]+(-0.2062*x[2]^2*x[5])-0.7548*x[2]^2*x[6]+0.7401*x[2]^2*x[11]+0.5526*x[2]^2*x[14]+0.7888*x[3]^2*x[1]-0.2481*x[3]^2*x[2]-0.9735*x[3]^2*x[7]-0.2544*x[3]^2*x[8]-0.5195*x[4]^2*x[10]-0.7007*x[4]^2*x[11]-0.8667*x[4]^2*x[14]-0.668*x[5]^2*x[2]+0.2039*x[5]^2*x[4]-0.915*x[5]^2*x[11]+0.0031*x[5]^2*x[13]+0.9357*x[6]^2*x[1]-0.5853*x[6]^2*x[3]-0.6957*x[6]^2*x[12]-0.3552*x[7]^2*x[6]-0.6218*x[8]^2*x[1]+0.4776*x[8]^2*x[7]+0.2829*x[9]^2*x[4]-0.2584*x[9]^2*x[8]+0.7144*x[10]^2*x[1]+0.5719*x[10]^2*x[4]+0.8324*x[10]^2*x[11]+0.9317*x[11]^2*x[1]+0.9165*x[11]^2*x[4]+0.2977*x[12]^2*x[3]-0.6167*x[13]^2*x[8]+0.1339*x[14]^2*x[2]+0.0917*x[14]^2*x[3]+0.9105*x[14]^2*x[4]+0.16*x[14]^2*x[12]-0.1338*x[14]^2*x[13]+0.9082*x[1]*x[2]*x[6]-0.6163*x[1]*x[2]*x[5]-0.7755*x[1]*x[2]*x[7]-0.662*x[1]*x[3]*x[7]+0.6474*x[1]*x[3]*x[12]-0.9502*x[1]*x[4]*x[6]-0.3052*x[1]*x[4]*x[14]-0.8137*x[1]*x[5]*x[8]+0.112*x[1]*x[5]*x[13]-0.9741*x[1]*x[6]*x[8]-0.3285*x[1]*x[6]*x[12]+0.3873*x[1]*x[6]*x[13]+0.9565*x[1]*x[6]*x[14]-0.7867*x[1]*x[7]*x[8]+0.4718*x[1]*x[7]*x[11]+0.2514*x[1]*x[7]*x[13]+0.6416*x[1]*x[10]*x[14]-0.8157*x[1]*x[10]*x[15]-0.5853*x[1]*x[11]*x[13]+0.6088*x[2]*x[3]*x[6]+0.4247*x[2]*x[3]*x[13]-0.2169*x[2]*x[4]*x[5]-0.3227*x[2]*x[4]*x[7]+0.2082*x[2]*x[4]*x[11]-0.9851*x[2]*x[4]*x[12]+0.4917*x[2]*x[4]*x[14]-0.2497*x[2]*x[5]*x[6]+0.8258*x[2]*x[5]*x[10]+0.4002*x[2]*x[5]*x[12]-0.1794*x[2]*x[5]*x[15]+0.4279*x[2]*x[6]*x[7]-0.8541*x[2]*x[6]*x[9]-0.85*x[2]*x[6]*x[10]-0.3194*x[2]*x[6]*x[11]+0.6177*x[2]*x[6]*x[13]+0.9388*x[2]*x[7]*x[10]+0.0326*x[2]*x[7]*x[11]+0.0817*x[2]*x[7]*x[12]+0.8701*x[2]*x[8]*x[9]-0.8367*x[2]*x[9]*x[11]+0.4569*x[2]*x[10]*x[11]+0.2312*x[2]*x[10]*x[14]-0.6701*x[2]*x[11]*x[13]-0.3999*x[2]*x[12]*x[14]+0.9021*x[2]*x[13]*x[14]-0.9228*x[2]*x[13]*x[15]-0.5501*x[3]*x[4]*x[5]+0.7919*x[3]*x[4]*x[11]-0.9731*x[3]*x[4]*x[12]+0.9706*x[3]*x[4]*x[13]+0.4555*x[3]*x[4]*x[14]+0.0321*x[3]*x[5]*x[8]-0.834*x[3]*x[5]*x[10]-0.5758*x[3]*x[5]*x[13]+0.0675*x[3]*x[6]*x[8]+0.6687*x[3]*x[6]*x[12]+0.8435*x[3]*x[6]*x[13]-0.6253*x[3]*x[6]*x[14]+0.8153*x[3]*x[7]*x[8]+0.7624*x[3]*x[7]*x[9]-0.7474*x[3]*x[7]*x[10]-0.7939*x[3]*x[8]*x[13]+0.0771*x[3]*x[9]*x[12]-0.4158*x[3]*x[11]*x[14]-0.8746*x[3]*x[11]*x[15]+0.0114*x[3]*x[12]*x[15]+0.4674*x[3]*x[13]*x[14]+0.9269*x[3]*x[14]*x[15]-0.1194*x[4]*x[5]*x[6]+0.613*x[4]*x[5]*x[12]+0.2364*x[4]*x[5]*x[13]+0.0205*x[4]*x[5]*x[14]-0.2162*x[4]*x[6]*x[10]+0.3908*x[4]*x[6]*x[12]+0.0388*x[4]*x[6]*x[15]+0.5021*x[4]*x[7]*x[13]+0.4787*x[4]*x[8]*x[9]-0.1184*x[4]*x[8]*x[10]-0.5505*x[4]*x[8]*x[12]-0.8437*x[4]*x[9]*x[12]-0.0577*x[4]*x[9]*x[14]+0.9177*x[4]*x[10]*x[12]-0.0318*x[4]*x[10]*x[13]+0.814*x[4]*x[12]*x[13]-0.5305*x[4]*x[12]*x[15]+0.5411*x[4]*x[13]*x[14]+0.3453*x[5]*x[6]*x[9]+0.0836*x[5]*x[6]*x[14]+0.7451*x[5]*x[6]*x[15]-0.3*x[5]*x[7]*x[11]+0.199*x[5]*x[7]*x[12]-0.5302*x[5]*x[8]*x[10]+0.5189*x[5]*x[8]*x[13]-0.4501*x[5]*x[8]*x[15]+0.3111*x[5]*x[9]*x[10]+0.9396*x[5]*x[9]*x[11]+0.4603*x[5]*x[9]*x[12]-0.5894*x[5]*x[9]*x[15]-0.7893*x[5]*x[11]*x[14]-0.7004*x[5]*x[12]*x[15]+0.9601*x[5]*x[13]*x[14]+0.5761*x[5]*x[13]*x[15]-0.692*x[6]*x[7]*x[10]-0.0319*x[6]*x[7]*x[11]-0.6235*x[6]*x[7]*x[12]-0.2784*x[6]*x[7]*x[13]+0.8512*x[6]*x[7]*x[14]-0.0263*x[6]*x[8]*x[9]+0.5061*x[6]*x[8]*x[10]-0.8182*x[6]*x[8]*x[11]-0.2765*x[6]*x[9]*x[11]-0.6139*x[6]*x[11]*x[13]+0.0195*x[6]*x[12]*x[13]-0.2283*x[6]*x[13]*x[14]+0.7841*x[7]*x[8]*x[9]+0.7801*x[7]*x[8]*x[10]-0.6542*x[7]*x[8]*x[14]+0.7357*x[7]*x[9]*x[12]-0.7867*x[7]*x[9]*x[14]+0.3729*x[7]*x[10]*x[12]-0.0536*x[7]*x[11]*x[13]+0.8217*x[7]*x[11]*x[14]-0.0761*x[7]*x[13]*x[14]-0.0275*x[7]*x[13]*x[15]+0.1285*x[8]*x[9]*x[10]+0.8972*x[8]*x[9]*x[14]-0.1891*x[8]*x[10]*x[12]-0.9923*x[8]*x[11]*x[12]-0.6279*x[8]*x[11]*x[13]-0.4262*x[9]*x[10]*x[11]+0.0435*x[9]*x[10]*x[14]-0.3036*x[9]*x[11]*x[12]-0.7549*x[9]*x[12]*x[13]+0.3736*x[10]*x[11]*x[14]-0.2588*x[10]*x[12]*x[13]-0.8767*x[10]*x[12]*x[15]-0.6966*x[11]*x[12]*x[13] <= 36.568)

m = m 		 # model get returned when including this script. 
