using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(0.533*x[9]-0.4859*x[9]^3+(-0.9014*x[1]*x[3])-0.972*x[2]*x[6]-0.9363*x[3]*x[5]-0.9743*x[3]*x[7]-0.9515*x[4]*x[5]-0.9999*x[4]*x[6]-0.9179*x[4]*x[9]-0.9747*x[5]*x[10]-0.9047*x[8]*x[10]-0.7642*x[1]+0.267*x[2]-0.6039*x[3]+0.4685*x[4]-0.7313*x[5]-0.5803*x[6]-0.5346*x[7]-0.2149*x[8]-0.0856*x[10]+(-0.4632*x[1]*x[2]*x[4])-0.7447*x[1]*x[3]*x[6]-0.7554*x[1]*x[3]*x[9]-0.8704*x[1]*x[4]*x[6]-0.7681*x[1]*x[5]*x[8]-0.8528*x[1]*x[6]*x[9]-0.589*x[1]*x[7]*x[8]-0.6552*x[2]*x[3]*x[4]-0.4793*x[2]*x[3]*x[8]-0.8572*x[2]*x[3]*x[9]-0.5478*x[2]*x[4]*x[5]-0.5099*x[2]*x[4]*x[9]-0.837*x[2]*x[5]*x[7]-0.6202*x[2]*x[6]*x[7]-0.4726*x[2]*x[7]*x[10]-0.6625*x[2]*x[8]*x[10]-0.8464*x[3]*x[4]*x[5]-0.6272*x[3]*x[4]*x[8]-0.6938*x[3]*x[5]*x[6]-0.8241*x[3]*x[6]*x[8]-0.5678*x[3]*x[6]*x[9]-0.8831*x[3]*x[6]*x[10]-0.8049*x[4]*x[5]*x[6]-0.6593*x[4]*x[5]*x[7]-0.806*x[4]*x[5]*x[8]-0.7327*x[4]*x[6]*x[7]-0.5807*x[4]*x[6]*x[9]-0.566*x[4]*x[6]*x[10]-0.8867*x[5]*x[6]*x[7]-0.5665*x[5]*x[7]*x[9]-0.8243*x[5]*x[7]*x[10]-0.8736*x[5]*x[9]*x[10]-0.6349*x[7]*x[8]*x[9]+0.5594*x[1]*x[2]*x[5]*x[8]-0.1538*x[1]*x[2]*x[4]*x[5]+0.2451*x[1]*x[2]*x[6]*x[9]+0.4353*x[1]*x[3]*x[4]*x[6]+0.6563*x[1]*x[3]*x[4]*x[7]-0.1742*x[1]*x[3]*x[5]*x[8]+0.0086*x[1]*x[3]*x[6]*x[8]+0.1395*x[1]*x[3]*x[7]*x[9]+0.5913*x[1]*x[3]*x[8]*x[10]+0.0754*x[1]*x[4]*x[5]*x[6]-0.3456*x[1]*x[4]*x[6]*x[8]+0.7013*x[1]*x[4]*x[6]*x[9]-0.241*x[1]*x[5]*x[6]*x[9]-0.4049*x[1]*x[5]*x[7]*x[9]+0.3243*x[1]*x[5]*x[7]*x[10]+0.7897*x[1]*x[6]*x[7]*x[8]+0.4268*x[1]*x[6]*x[7]*x[9]+0.8885*x[1]*x[6]*x[7]*x[10]+0.8699*x[2]*x[3]*x[4]*x[7]+0.8432*x[2]*x[3]*x[4]*x[8]+0.2785*x[2]*x[3]*x[4]*x[9]+0.1814*x[2]*x[3]*x[5]*x[6]+0.7349*x[2]*x[3]*x[5]*x[7]+0.4292*x[2]*x[3]*x[5]*x[9]+0.9973*x[2]*x[3]*x[7]*x[9]+0.5723*x[2]*x[3]*x[9]*x[10]+0.1113*x[2]*x[4]*x[5]*x[6]-0.4159*x[2]*x[4]*x[5]*x[8]+0.1109*x[2]*x[4]*x[5]*x[9]+0.554*x[2]*x[4]*x[5]*x[10]+0.1734*x[2]*x[4]*x[6]*x[7]-0.2352*x[2]*x[4]*x[6]*x[9]+0.563*x[2]*x[4]*x[6]*x[10]+0.7008*x[2]*x[4]*x[7]*x[8]-0.2951*x[2]*x[4]*x[7]*x[9]-0.1984*x[2]*x[4]*x[7]*x[10]+0.8389*x[2]*x[4]*x[9]*x[10]+0.5477*x[2]*x[5]*x[6]*x[7]+0.23*x[2]*x[5]*x[6]*x[8]+0.9149*x[2]*x[5]*x[6]*x[10]+0.5136*x[2]*x[5]*x[7]*x[9]+0.7909*x[2]*x[5]*x[8]*x[9]+0.4122*x[2]*x[5]*x[8]*x[10]+0.3495*x[2]*x[6]*x[8]*x[9]-0.2245*x[2]*x[7]*x[8]*x[9]-0.0067*x[2]*x[7]*x[9]*x[10]-0.3341*x[3]*x[4]*x[5]*x[7]+0.6334*x[3]*x[4]*x[5]*x[9]-0.0248*x[3]*x[4]*x[5]*x[10]+0.1751*x[3]*x[4]*x[6]*x[7]+0.6652*x[3]*x[4]*x[6]*x[8]+0.5809*x[3]*x[4]*x[6]*x[9]+0.089*x[3]*x[4]*x[7]*x[8]-0.0026*x[3]*x[4]*x[7]*x[9]+0.0348*x[3]*x[4]*x[9]*x[10]+0.7925*x[3]*x[5]*x[6]*x[7]+0.9465*x[3]*x[5]*x[6]*x[8]-0.2255*x[3]*x[5]*x[6]*x[10]+0.0976*x[3]*x[5]*x[7]*x[9]+0.1604*x[3]*x[5]*x[7]*x[10]+0.0531*x[3]*x[5]*x[8]*x[9]+0.327*x[3]*x[5]*x[9]*x[10]+0.029*x[3]*x[6]*x[7]*x[8]+0.1899*x[3]*x[6]*x[8]*x[10]+0.6149*x[3]*x[7]*x[8]*x[9]-0.2074*x[3]*x[7]*x[9]*x[10]+0.1246*x[4]*x[5]*x[7]*x[9]+0.8044*x[4]*x[5]*x[8]*x[9]+0.2076*x[4]*x[5]*x[8]*x[10]+0.2545*x[4]*x[6]*x[7]*x[10]+0.437*x[4]*x[6]*x[8]*x[9]+0.6971*x[4]*x[6]*x[8]*x[10]+0.8045*x[4]*x[7]*x[8]*x[9]-0.0273*x[4]*x[8]*x[9]*x[10]+0.7468*x[5]*x[6]*x[7]*x[8]+0.0567*x[5]*x[6]*x[7]*x[9]+0.437*x[5]*x[6]*x[7]*x[10]-0.0052*x[5]*x[8]*x[9]*x[10]+0.9744*x[6]*x[8]*x[9]*x[10]+0.1835*x[1]^3*x[8]-0.3482*x[2]^3*x[6]+0.4827*x[3]^3*x[2]+0.6277*x[3]^3*x[4]+0.1332*x[3]^3*x[7]+0.7362*x[4]^3*x[6]-0.2688*x[5]^3*x[2]+0.1565*x[6]^3*x[2]+0.811*x[6]^3*x[3]-0.1157*x[6]^3*x[5]+0.0158*x[6]^3*x[8]-0.295*x[7]^3*x[3]+0.7305*x[9]^3*x[6]+0.6558*x[2]^2*x[6]^2+0.8631*x[3]^2*x[4]^2+0.0228*x[3]^2*x[7]^2+0.3408*x[3]^2*x[8]^2+0.1342*x[5]^2*x[6]^2+0.276*x[6]^2*x[9]^2+(-0.7723*x[1]^2*x[5])-0.7747*x[2]^2*x[5]-0.7057*x[2]^2*x[9]-0.4859*x[3]^2*x[1]-0.8747*x[3]^2*x[4]-0.8553*x[3]^2*x[5]-0.6699*x[3]^2*x[9]-0.6373*x[5]^2*x[2]-0.5491*x[5]^2*x[8]-0.6418*x[5]^2*x[9]-0.5331*x[6]^2*x[2]-0.5388*x[6]^2*x[5]-0.4988*x[6]^2*x[8]-0.883*x[7]^2*x[3]-0.5077*x[7]^2*x[4]-0.6832*x[7]^2*x[5]-0.6305*x[7]^2*x[9]-0.7057*x[8]^2*x[1]-0.4636*x[8]^2*x[3]-0.5796*x[8]^2*x[7]-0.7797*x[9]^2*x[2]+0.0539*x[2]^2*x[1]*x[3]+0.2648*x[2]^2*x[3]*x[6]+0.6501*x[2]^2*x[3]*x[9]+0.3573*x[2]^2*x[7]*x[8]+0.6869*x[2]^2*x[8]*x[9]+0.2489*x[3]^2*x[2]*x[9]+0.3661*x[3]^2*x[4]*x[5]+0.8965*x[3]^2*x[4]*x[8]+0.3518*x[3]^2*x[4]*x[9]-0.1779*x[3]^2*x[5]*x[7]-0.2253*x[3]^2*x[5]*x[9]+0.1485*x[3]^2*x[7]*x[8]-0.4404*x[4]^2*x[1]*x[2]+0.0896*x[4]^2*x[1]*x[9]-0.3521*x[4]^2*x[3]*x[9]+0.6115*x[4]^2*x[5]*x[6]+0.3281*x[4]^2*x[5]*x[7]+0.6095*x[4]^2*x[6]*x[9]+0.3277*x[4]^2*x[7]*x[8]+0.8206*x[4]^2*x[8]*x[10]-0.0977*x[5]^2*x[1]*x[2]+0.7722*x[5]^2*x[1]*x[9]+0.9625*x[5]^2*x[1]*x[10]+0.4988*x[5]^2*x[2]*x[3]+0.4162*x[5]^2*x[2]*x[6]-0.4198*x[5]^2*x[3]*x[4]+0.7323*x[5]^2*x[3]*x[7]-0.0576*x[5]^2*x[3]*x[8]+0.4018*x[5]^2*x[4]*x[6]-0.0044*x[5]^2*x[4]*x[7]+0.6689*x[5]^2*x[6]*x[10]+0.4744*x[5]^2*x[7]*x[9]+0.9063*x[5]^2*x[8]*x[9]-0.2863*x[5]^2*x[9]*x[10]+0.6729*x[6]^2*x[1]*x[3]+0.2504*x[6]^2*x[1]*x[8]-0.2606*x[6]^2*x[2]*x[3]+0.4171*x[6]^2*x[2]*x[7]+0.1918*x[6]^2*x[2]*x[8]+0.849*x[6]^2*x[3]*x[4]+0.2482*x[6]^2*x[3]*x[8]-0.3441*x[6]^2*x[4]*x[5]+0.139*x[6]^2*x[4]*x[7]-0.0005*x[6]^2*x[4]*x[8]+0.8006*x[6]^2*x[5]*x[9]+0.1424*x[6]^2*x[7]*x[8]-0.252*x[6]^2*x[8]*x[9]-0.4291*x[7]^2*x[1]*x[4]-0.04*x[7]^2*x[1]*x[8]+0.9034*x[7]^2*x[1]*x[9]+0.6862*x[7]^2*x[2]*x[5]-0.3504*x[7]^2*x[2]*x[9]-0.0045*x[7]^2*x[3]*x[4]+0.897*x[7]^2*x[3]*x[5]+0.952*x[7]^2*x[4]*x[5]+0.4227*x[7]^2*x[4]*x[10]-0.411*x[7]^2*x[5]*x[6]-0.2174*x[7]^2*x[5]*x[8]+0.1058*x[7]^2*x[5]*x[9]+0.1815*x[8]^2*x[1]*x[5]+0.3266*x[8]^2*x[1]*x[9]+0.8382*x[8]^2*x[2]*x[3]-0.3003*x[8]^2*x[2]*x[4]+0.9252*x[8]^2*x[2]*x[6]+0.1175*x[8]^2*x[2]*x[9]+0.9135*x[8]^2*x[3]*x[7]+0.6691*x[8]^2*x[3]*x[10]+0.0008*x[8]^2*x[4]*x[5]+0.8332*x[8]^2*x[4]*x[6]+0.127*x[8]^2*x[6]*x[7]+0.3103*x[8]^2*x[7]*x[9]+0.2857*x[9]^2*x[2]*x[5]+0.9128*x[9]^2*x[2]*x[6]-0.1287*x[9]^2*x[3]*x[4]+0.8906*x[9]^2*x[3]*x[8]+0.0797*x[9]^2*x[4]*x[6]+0.8462*x[9]^2*x[4]*x[7]-0.1339*x[9]^2*x[5]*x[6]+0.8363*x[9]^2*x[5]*x[7]-0.4196*x[9]^2*x[5]*x[8]+0.1089*x[9]^2*x[8]*x[10]-0.195*x[10]^2*x[2]*x[3]-0.4189*x[10]^2*x[4]*x[6]+0.0771*x[10]^2*x[6]*x[9])+obj == 0.0)
@NLconstraint(m, e2, 0.5042*x[9]-0.4859*x[9]^3+(-0.9445*x[1]*x[3])-0.9231*x[1]*x[6]-0.955*x[2]*x[6]-0.9425*x[2]*x[7]-0.8904*x[3]*x[5]-0.959*x[3]*x[6]-0.9861*x[3]*x[8]-0.9475*x[3]*x[9]-0.9698*x[3]*x[10]-0.8973*x[4]*x[6]-0.9289*x[4]*x[7]-0.9768*x[6]*x[7]-0.9712*x[7]*x[9]-0.9291*x[7]*x[10]-0.9786*x[8]*x[9]-0.98*x[8]*x[10]+0.2476*x[1]-0.1718*x[2]-0.4741*x[3]-0.7329*x[4]-0.2066*x[5]-0.6265*x[6]-0.4592*x[7]-0.4788*x[8]-0.918*x[10]+(-0.7412*x[1]*x[3]*x[5])-0.5487*x[1]*x[4]*x[8]-0.5872*x[1]*x[5]*x[6]-0.519*x[1]*x[5]*x[9]-0.5656*x[2]*x[3]*x[5]-0.8469*x[2]*x[3]*x[6]-0.5469*x[2]*x[4]*x[5]-0.5403*x[2]*x[5]*x[6]-0.8479*x[2]*x[5]*x[7]-0.451*x[2]*x[6]*x[7]-0.806*x[2]*x[7]*x[9]-0.7944*x[2]*x[8]*x[9]-0.5759*x[3]*x[4]*x[5]-0.5606*x[3]*x[4]*x[8]-0.6858*x[3]*x[4]*x[10]-0.6207*x[3]*x[5]*x[8]-0.7645*x[3]*x[5]*x[9]-0.8749*x[3]*x[6]*x[7]-0.4469*x[3]*x[6]*x[9]-0.8432*x[3]*x[7]*x[8]-0.8315*x[3]*x[7]*x[10]-0.6182*x[4]*x[5]*x[8]-0.485*x[4]*x[5]*x[10]-0.6382*x[4]*x[6]*x[9]-0.6486*x[4]*x[6]*x[10]-0.6744*x[4]*x[7]*x[10]-0.8682*x[4]*x[8]*x[9]-0.5254*x[5]*x[6]*x[7]-0.4719*x[6]*x[8]*x[9]-0.6553*x[7]*x[8]*x[9]+0.74*x[1]*x[2]*x[3]*x[4]+0.2637*x[1]*x[2]*x[3]*x[5]+0.8773*x[1]*x[2]*x[4]*x[5]+0.0529*x[1]*x[2]*x[4]*x[10]+0.4872*x[1]*x[2]*x[5]*x[8]+0.158*x[1]*x[2]*x[6]*x[7]-0.1008*x[1]*x[2]*x[6]*x[8]-0.2064*x[1]*x[2]*x[7]*x[8]+0.7734*x[1]*x[2]*x[8]*x[9]+0.0253*x[1]*x[3]*x[4]*x[7]+0.2819*x[1]*x[3]*x[5]*x[7]+0.123*x[1]*x[3]*x[6]*x[7]+0.658*x[1]*x[3]*x[6]*x[10]+0.0437*x[1]*x[3]*x[8]*x[9]+0.7229*x[1]*x[4]*x[5]*x[7]+0.0225*x[1]*x[4]*x[5]*x[8]+0.6138*x[1]*x[4]*x[7]*x[8]+0.3658*x[1]*x[4]*x[9]*x[10]+0.8055*x[1]*x[5]*x[6]*x[8]-0.1314*x[1]*x[5]*x[7]*x[9]+0.7105*x[1]*x[5]*x[8]*x[9]+0.7248*x[1]*x[5]*x[9]*x[10]+0.6441*x[1]*x[6]*x[8]*x[9]+0.1967*x[1]*x[7]*x[8]*x[9]-0.1529*x[2]*x[3]*x[4]*x[5]-0.1617*x[2]*x[3]*x[4]*x[6]-0.3269*x[2]*x[3]*x[4]*x[7]+0.849*x[2]*x[3]*x[4]*x[9]+0.7178*x[2]*x[3]*x[4]*x[10]+0.9072*x[2]*x[3]*x[5]*x[6]-0.0259*x[2]*x[3]*x[5]*x[7]-0.2101*x[2]*x[3]*x[5]*x[9]-0.377*x[2]*x[3]*x[6]*x[7]+0.9506*x[2]*x[3]*x[6]*x[10]-0.2586*x[2]*x[3]*x[7]*x[8]-0.2482*x[2]*x[3]*x[7]*x[10]+0.6212*x[2]*x[3]*x[8]*x[9]+0.3652*x[2]*x[3]*x[9]*x[10]-0.4054*x[2]*x[4]*x[5]*x[6]+0.9742*x[2]*x[4]*x[5]*x[9]-0.1547*x[2]*x[4]*x[5]*x[10]+0.099*x[2]*x[4]*x[6]*x[7]+0.7485*x[2]*x[4]*x[6]*x[8]+0.034*x[2]*x[4]*x[7]*x[10]+0.096*x[2]*x[4]*x[8]*x[9]+0.063*x[2]*x[4]*x[9]*x[10]+0.9239*x[2]*x[5]*x[6]*x[7]+0.8397*x[2]*x[5]*x[6]*x[8]+0.7428*x[2]*x[5]*x[7]*x[9]+0.8884*x[2]*x[5]*x[7]*x[10]+0.1809*x[2]*x[6]*x[8]*x[10]+0.1081*x[2]*x[7]*x[8]*x[9]+0.9733*x[2]*x[7]*x[8]*x[10]+0.4535*x[3]*x[4]*x[5]*x[6]-0.0601*x[3]*x[4]*x[5]*x[7]-0.2244*x[3]*x[4]*x[5]*x[8]+0.992*x[3]*x[4]*x[6]*x[8]+0.2164*x[3]*x[4]*x[8]*x[9]+0.5545*x[3]*x[5]*x[6]*x[8]+0.3226*x[3]*x[5]*x[6]*x[9]+0.7127*x[3]*x[5]*x[7]*x[8]-0.3074*x[3]*x[5]*x[7]*x[9]-0.3462*x[3]*x[5]*x[8]*x[9]-0.0508*x[3]*x[5]*x[9]*x[10]+0.3272*x[3]*x[6]*x[7]*x[8]+0.6324*x[3]*x[6]*x[7]*x[9]-0.1451*x[3]*x[7]*x[8]*x[9]-0.1373*x[3]*x[8]*x[9]*x[10]-0.038*x[4]*x[5]*x[6]*x[9]+0.2861*x[4]*x[5]*x[8]*x[9]+0.7204*x[4]*x[6]*x[7]*x[8]+0.3187*x[4]*x[6]*x[7]*x[9]-0.3016*x[4]*x[6]*x[9]*x[10]+0.1588*x[4]*x[7]*x[8]*x[9]+0.452*x[4]*x[7]*x[8]*x[10]+0.6559*x[5]*x[6]*x[7]*x[8]+0.112*x[5]*x[6]*x[7]*x[9]-0.0826*x[5]*x[6]*x[8]*x[10]+0.8238*x[5]*x[7]*x[8]*x[9]-0.3737*x[6]*x[7]*x[8]*x[9]+0.7482*x[6]*x[7]*x[8]*x[10]-0.1101*x[7]*x[8]*x[9]*x[10]+0.3964*x[4]^3*x[6]-0.2414*x[6]^3*x[5]+0.216*x[7]^3*x[5]+0.7498*x[7]^3*x[8]+0.1687*x[7]^3*x[10]+0.1544*x[8]^3*x[3]+0.1192*x[5]^2*x[8]^2+0.6689*x[5]^2*x[9]^2+0.9691*x[6]^2*x[7]^2+0.5219*x[6]^2*x[9]^2+0.97*x[6]^2*x[10]^2+(-0.5823*x[2]^2*x[5])-0.4944*x[2]^2*x[7]-0.8721*x[2]^2*x[8]-0.6933*x[4]^2*x[3]-0.6779*x[4]^2*x[9]-0.8348*x[5]^2*x[3]-0.5178*x[5]^2*x[8]-0.4631*x[6]^2*x[3]-0.6383*x[6]^2*x[4]-0.8465*x[7]^2*x[2]-0.8719*x[7]^2*x[6]-0.886*x[8]^2*x[2]-0.6531*x[8]^2*x[4]+0.816*x[1]^2*x[3]*x[5]+0.0916*x[1]^2*x[5]*x[6]+0.4905*x[1]^2*x[6]*x[9]-0.3741*x[2]^2*x[1]*x[4]-0.0414*x[2]^2*x[3]*x[4]+0.9675*x[2]^2*x[3]*x[6]+0.0647*x[2]^2*x[4]*x[8]+0.6248*x[2]^2*x[4]*x[9]+0.735*x[2]^2*x[5]*x[6]+0.5428*x[2]^2*x[5]*x[7]+0.1128*x[2]^2*x[5]*x[8]+0.2228*x[2]^2*x[5]*x[9]-0.1882*x[2]^2*x[6]*x[8]+0.1377*x[2]^2*x[6]*x[9]-0.0204*x[2]^2*x[7]*x[8]+0.6307*x[2]^2*x[7]*x[9]-0.3637*x[2]^2*x[8]*x[9]-0.423*x[3]^2*x[1]*x[4]+0.9754*x[3]^2*x[2]*x[4]+0.9292*x[3]^2*x[4]*x[6]-0.176*x[3]^2*x[4]*x[8]+0.5689*x[3]^2*x[5]*x[8]+0.954*x[3]^2*x[5]*x[10]+0.7408*x[3]^2*x[6]*x[10]-0.3699*x[3]^2*x[8]*x[9]+0.8188*x[4]^2*x[1]*x[3]+0.7881*x[4]^2*x[1]*x[7]-0.2261*x[4]^2*x[2]*x[6]+0.0703*x[4]^2*x[2]*x[9]+0.1958*x[4]^2*x[3]*x[6]+0.0334*x[4]^2*x[5]*x[6]+0.2379*x[4]^2*x[6]*x[9]+0.3321*x[4]^2*x[7]*x[8]-0.0346*x[5]^2*x[2]*x[3]-0.3239*x[5]^2*x[2]*x[7]+0.5267*x[5]^2*x[2]*x[9]+0.7338*x[5]^2*x[3]*x[4]+0.1677*x[5]^2*x[4]*x[6]-0.3498*x[5]^2*x[4]*x[7]-0.3963*x[5]^2*x[6]*x[7]-0.1388*x[5]^2*x[6]*x[10]+0.6714*x[5]^2*x[7]*x[9]-0.08*x[5]^2*x[8]*x[10]+0.3528*x[6]^2*x[1]*x[2]+0.8167*x[6]^2*x[2]*x[4]+0.4833*x[6]^2*x[2]*x[7]+0.3504*x[6]^2*x[2]*x[8]+0.1225*x[6]^2*x[3]*x[4]+0.3855*x[6]^2*x[4]*x[7]-0.1461*x[6]^2*x[4]*x[8]+0.6854*x[6]^2*x[4]*x[10]-0.2709*x[6]^2*x[5]*x[9]-0.1196*x[6]^2*x[5]*x[10]-0.1628*x[6]^2*x[7]*x[8]-0.2967*x[7]^2*x[1]*x[5]+0.2483*x[7]^2*x[1]*x[8]+0.2906*x[7]^2*x[2]*x[3]+0.4721*x[7]^2*x[2]*x[4]+0.8023*x[7]^2*x[2]*x[6]-0.2756*x[7]^2*x[2]*x[9]+0.6328*x[7]^2*x[3]*x[4]-0.3396*x[7]^2*x[4]*x[8]+0.3348*x[7]^2*x[4]*x[9]+0.895*x[7]^2*x[4]*x[10]+0.1479*x[7]^2*x[5]*x[8]-0.071*x[7]^2*x[5]*x[9]-0.1255*x[7]^2*x[6]*x[9]-0.1285*x[8]^2*x[1]*x[6]-0.0317*x[8]^2*x[1]*x[7]+0.8089*x[8]^2*x[2]*x[9]+0.5562*x[8]^2*x[3]*x[5]+0.6887*x[8]^2*x[3]*x[9]+0.4955*x[8]^2*x[4]*x[6]-0.3007*x[8]^2*x[4]*x[7]-0.1361*x[8]^2*x[4]*x[9]+0.1779*x[8]^2*x[6]*x[9]-0.3577*x[9]^2*x[1]*x[4]+0.4961*x[9]^2*x[1]*x[6]-0.4022*x[9]^2*x[2]*x[3]+0.9784*x[9]^2*x[2]*x[6]+0.3016*x[9]^2*x[2]*x[8]+0.626*x[9]^2*x[3]*x[5]-0.2153*x[9]^2*x[4]*x[6]+0.7293*x[9]^2*x[5]*x[6]-0.345*x[9]^2*x[5]*x[7]+0.2964*x[9]^2*x[5]*x[8]-0.3338*x[9]^2*x[6]*x[7]+0.5263*x[9]^2*x[6]*x[8]+0.1647*x[9]^2*x[6]*x[10]-0.0406*x[9]^2*x[7]*x[8]+0.8644*x[10]^2*x[1]*x[5]+0.8999*x[10]^2*x[2]*x[5] <= 85.714)
@NLconstraint(m, e3, (-0.4859*x[9]^3)-0.7049*x[9]+(-0.959*x[2]*x[4])-0.9403*x[2]*x[6]-0.9328*x[2]*x[7]-0.9377*x[2]*x[8]-0.8905*x[3]*x[5]-0.9687*x[4]*x[5]-0.991*x[4]*x[9]-0.9409*x[6]*x[8]-0.8991*x[7]*x[9]-0.9199*x[8]*x[9]-0.9705*x[9]*x[10]+0.4161*x[2]+0.5113*x[3]-0.9727*x[4]-0.5787*x[5]+0.5525*x[6]+0.2813*x[7]-0.6509*x[8]+0.4756*x[10]+(-0.6125*x[1]*x[2]*x[4])-0.6516*x[1]*x[2]*x[5]-0.5681*x[1]*x[2]*x[8]-0.7323*x[1]*x[2]*x[9]-0.7686*x[1]*x[2]*x[10]-0.7899*x[1]*x[3]*x[8]-0.7901*x[1]*x[4]*x[8]-0.7522*x[1]*x[4]*x[9]-0.6835*x[1]*x[5]*x[7]-0.5849*x[1]*x[5]*x[9]-0.6644*x[1]*x[5]*x[10]-0.6723*x[1]*x[6]*x[8]-0.671*x[1]*x[6]*x[10]-0.6038*x[2]*x[3]*x[4]-0.8028*x[2]*x[3]*x[5]-0.863*x[2]*x[3]*x[6]-0.7706*x[2]*x[3]*x[7]-0.6045*x[2]*x[3]*x[8]-0.8012*x[2]*x[4]*x[5]-0.6*x[2]*x[4]*x[7]-0.5115*x[2]*x[4]*x[9]-0.5307*x[2]*x[5]*x[6]-0.4516*x[2]*x[5]*x[8]-0.505*x[2]*x[5]*x[9]-0.6307*x[2]*x[6]*x[7]-0.8204*x[2]*x[6]*x[9]-0.6695*x[2]*x[7]*x[9]-0.6564*x[2]*x[8]*x[9]-0.7316*x[2]*x[9]*x[10]-0.4952*x[3]*x[4]*x[5]-0.6124*x[3]*x[4]*x[6]-0.5941*x[3]*x[4]*x[8]-0.8015*x[3]*x[5]*x[8]-0.8249*x[3]*x[5]*x[10]-0.6598*x[3]*x[6]*x[7]-0.4848*x[3]*x[6]*x[8]-0.8433*x[3]*x[6]*x[9]-0.6053*x[3]*x[7]*x[8]-0.6546*x[3]*x[7]*x[9]-0.7666*x[3]*x[7]*x[10]-0.5916*x[3]*x[9]*x[10]-0.867*x[4]*x[5]*x[7]-0.8034*x[4]*x[5]*x[10]-0.4459*x[4]*x[7]*x[8]-0.6189*x[4]*x[7]*x[9]-0.6757*x[4]*x[7]*x[10]-0.8352*x[4]*x[8]*x[9]-0.6061*x[4]*x[8]*x[10]-0.4699*x[5]*x[6]*x[7]-0.6921*x[5]*x[6]*x[8]-0.8199*x[5]*x[7]*x[8]-0.5343*x[5]*x[9]*x[10]-0.7107*x[6]*x[7]*x[9]-0.6894*x[7]*x[8]*x[10]+0.9795*x[1]+0.8715*x[1]*x[2]*x[3]*x[6]-0.0566*x[1]*x[2]*x[3]*x[4]+0.2604*x[1]*x[2]*x[3]*x[10]+0.2433*x[1]*x[2]*x[4]*x[5]-0.1004*x[1]*x[2]*x[4]*x[6]+0.1164*x[1]*x[2]*x[6]*x[7]+0.3674*x[1]*x[2]*x[6]*x[8]+0.3419*x[1]*x[2]*x[6]*x[9]-0.35*x[1]*x[2]*x[8]*x[9]+0.0063*x[1]*x[3]*x[4]*x[6]+0.521*x[1]*x[3]*x[4]*x[7]+0.0382*x[1]*x[3]*x[4]*x[8]+0.3603*x[1]*x[3]*x[5]*x[6]-0.0513*x[1]*x[3]*x[5]*x[8]+0.2898*x[1]*x[3]*x[7]*x[8]-0.0776*x[1]*x[3]*x[8]*x[9]-0.155*x[1]*x[4]*x[5]*x[6]+0.8643*x[1]*x[4]*x[6]*x[8]+0.5485*x[1]*x[4]*x[7]*x[8]-0.3894*x[1]*x[5]*x[6]*x[10]+0.2418*x[1]*x[5]*x[8]*x[9]+0.1658*x[1]*x[6]*x[7]*x[8]+0.4314*x[1]*x[6]*x[7]*x[9]+0.4103*x[1]*x[6]*x[8]*x[10]-0.26*x[1]*x[6]*x[9]*x[10]+0.0021*x[2]*x[3]*x[4]*x[7]-0.0673*x[2]*x[3]*x[4]*x[8]+0.5211*x[2]*x[3]*x[5]*x[7]+0.5435*x[2]*x[3]*x[5]*x[9]+0.4177*x[2]*x[3]*x[6]*x[7]+0.2491*x[2]*x[3]*x[6]*x[8]-0.2045*x[2]*x[3]*x[7]*x[8]+0.1421*x[2]*x[3]*x[7]*x[10]+0.0639*x[2]*x[3]*x[8]*x[9]+0.9219*x[2]*x[4]*x[5]*x[6]+0.1811*x[2]*x[4]*x[5]*x[8]+0.7517*x[2]*x[4]*x[6]*x[7]+0.3353*x[2]*x[4]*x[6]*x[8]-0.0777*x[2]*x[4]*x[6]*x[9]+0.0599*x[2]*x[4]*x[7]*x[8]+0.55*x[2]*x[4]*x[7]*x[9]+0.0073*x[2]*x[4]*x[7]*x[10]-0.1234*x[2]*x[4]*x[9]*x[10]+0.8435*x[2]*x[5]*x[6]*x[7]+0.1345*x[2]*x[5]*x[8]*x[9]+0.6887*x[2]*x[6]*x[7]*x[8]+0.9698*x[2]*x[6]*x[7]*x[10]+0.665*x[3]*x[4]*x[5]*x[6]-0.3927*x[3]*x[4]*x[5]*x[10]-0.394*x[3]*x[4]*x[6]*x[8]+0.1668*x[3]*x[4]*x[6]*x[9]+0.0215*x[3]*x[4]*x[6]*x[10]+0.2836*x[3]*x[4]*x[7]*x[8]+0.7443*x[3]*x[4]*x[7]*x[9]+0.8482*x[3]*x[4]*x[7]*x[10]+0.3557*x[3]*x[4]*x[9]*x[10]+0.024*x[3]*x[5]*x[6]*x[7]-0.3691*x[3]*x[5]*x[6]*x[10]+0.8198*x[3]*x[5]*x[7]*x[8]+0.1777*x[3]*x[5]*x[7]*x[10]+0.2127*x[3]*x[5]*x[8]*x[9]+0.3835*x[3]*x[5]*x[9]*x[10]+0.8873*x[3]*x[6]*x[7]*x[8]+0.7051*x[3]*x[6]*x[7]*x[9]-0.3485*x[3]*x[6]*x[7]*x[10]-0.3407*x[3]*x[6]*x[8]*x[9]-0.1859*x[3]*x[7]*x[9]*x[10]-0.2326*x[4]*x[5]*x[6]*x[10]+0.6775*x[4]*x[5]*x[7]*x[8]-0.3958*x[4]*x[5]*x[7]*x[9]+0.1152*x[4]*x[5]*x[9]*x[10]-0.0849*x[4]*x[6]*x[7]*x[8]+0.643*x[4]*x[6]*x[7]*x[10]+0.9325*x[4]*x[6]*x[8]*x[9]-0.2382*x[4]*x[6]*x[9]*x[10]+0.1861*x[4]*x[7]*x[8]*x[9]+0.0418*x[4]*x[7]*x[9]*x[10]+0.2919*x[5]*x[6]*x[7]*x[8]+0.0505*x[5]*x[6]*x[8]*x[9]-0.3895*x[6]*x[7]*x[9]*x[10]+0.4539*x[9]^3*x[3]-0.3462*x[2]^3*x[7]+0.8048*x[4]^2*x[5]^2-0.2575*x[1]^2*x[6]^2+0.2474*x[4]^2*x[8]^2+0.8871*x[5]^2*x[6]^2+(-0.8601*x[1]^2*x[2])-0.6392*x[2]^2*x[3]-0.8823*x[2]^2*x[7]-0.5786*x[2]^2*x[8]-0.4465*x[2]^2*x[9]-0.7666*x[4]^2*x[2]-0.8247*x[4]^2*x[3]-0.5501*x[4]^2*x[7]-0.7824*x[4]^2*x[8]-0.6153*x[5]^2*x[1]-0.7607*x[5]^2*x[3]-0.6941*x[5]^2*x[9]-0.8872*x[6]^2*x[3]-0.7329*x[6]^2*x[7]-0.8077*x[7]^2*x[3]-0.8376*x[8]^2*x[6]-0.5055*x[9]^2*x[5]-0.7934*x[9]^2*x[8]+0.5218*x[2]^2*x[1]*x[4]-0.2444*x[2]^2*x[1]*x[6]-0.1039*x[2]^2*x[1]*x[8]+0.8499*x[2]^2*x[5]*x[8]+0.7499*x[2]^2*x[5]*x[9]+0.3949*x[2]^2*x[5]*x[10]-0.4346*x[2]^2*x[6]*x[8]+0.422*x[2]^2*x[6]*x[9]+0.8583*x[2]^2*x[9]*x[10]+0.8876*x[3]^2*x[1]*x[9]+0.59*x[3]^2*x[5]*x[6]+0.6555*x[3]^2*x[5]*x[9]+0.3661*x[3]^2*x[7]*x[8]-0.2669*x[3]^2*x[7]*x[9]-0.2776*x[3]^2*x[8]*x[10]+0.5196*x[4]^2*x[2]*x[5]-0.2876*x[4]^2*x[2]*x[7]+0.983*x[4]^2*x[3]*x[6]-0.0935*x[4]^2*x[3]*x[7]+0.3566*x[4]^2*x[3]*x[9]+0.4704*x[4]^2*x[5]*x[10]+0.385*x[4]^2*x[7]*x[10]+0.0107*x[5]^2*x[2]*x[3]+0.2198*x[5]^2*x[2]*x[6]+0.2323*x[5]^2*x[2]*x[9]-0.0317*x[5]^2*x[3]*x[9]+0.9959*x[5]^2*x[3]*x[10]+0.5694*x[5]^2*x[4]*x[9]+0.7674*x[5]^2*x[6]*x[10]+0.5429*x[5]^2*x[7]*x[8]+0.0596*x[5]^2*x[8]*x[10]-0.0883*x[6]^2*x[2]*x[7]+0.5725*x[6]^2*x[2]*x[8]-0.3172*x[6]^2*x[2]*x[9]-0.198*x[6]^2*x[3]*x[4]+0.4307*x[6]^2*x[3]*x[5]+0.6424*x[6]^2*x[3]*x[7]+0.2895*x[6]^2*x[3]*x[9]+0.1444*x[6]^2*x[5]*x[7]+0.1221*x[6]^2*x[5]*x[8]+0.5504*x[6]^2*x[5]*x[9]-0.3503*x[6]^2*x[7]*x[9]-0.1083*x[7]^2*x[1]*x[2]+0.8662*x[7]^2*x[1]*x[5]-0.096*x[7]^2*x[1]*x[8]+0.6074*x[7]^2*x[2]*x[9]+0.5969*x[7]^2*x[2]*x[10]-0.1813*x[7]^2*x[3]*x[5]+0.1756*x[7]^2*x[3]*x[6]-0.3091*x[7]^2*x[4]*x[5]+0.9823*x[7]^2*x[4]*x[6]-0.3166*x[7]^2*x[5]*x[8]+0.6465*x[7]^2*x[5]*x[10]+0.9599*x[7]^2*x[6]*x[9]-0.437*x[8]^2*x[2]*x[6]-0.0701*x[8]^2*x[2]*x[7]-0.1456*x[8]^2*x[2]*x[10]-0.4104*x[8]^2*x[3]*x[4]+0.7152*x[8]^2*x[3]*x[5]+0.5239*x[8]^2*x[4]*x[6]+0.6228*x[8]^2*x[4]*x[9]-0.0062*x[8]^2*x[5]*x[6]+0.7371*x[8]^2*x[7]*x[9]+0.3143*x[9]^2*x[1]*x[5]+0.1796*x[9]^2*x[2]*x[6]-0.016*x[9]^2*x[2]*x[7]+0.2149*x[9]^2*x[3]*x[4]+0.644*x[9]^2*x[3]*x[7]-0.2556*x[9]^2*x[4]*x[7]+0.5601*x[9]^2*x[5]*x[7]+0.6372*x[9]^2*x[6]*x[8]+0.7828*x[10]^2*x[1]*x[5]+0.4236*x[10]^2*x[2]*x[9]+0.5905*x[10]^2*x[4]*x[7]+0.0085*x[10]^2*x[6]*x[7] <= 98.83)
@NLconstraint(m, e4, 0.0819*x[9]-0.4859*x[9]^3+(-0.8942*x[1]*x[2])-0.8908*x[1]*x[5]-0.9632*x[1]*x[6]-0.9763*x[1]*x[8]-0.9785*x[1]*x[10]-0.9465*x[2]*x[5]-0.9362*x[2]*x[6]-0.9275*x[3]*x[5]-0.9458*x[3]*x[7]-0.9992*x[3]*x[9]-0.9599*x[4]*x[5]-0.9064*x[4]*x[6]-0.9964*x[5]*x[9]-0.9507*x[6]*x[8]-0.8935*x[6]*x[9]-0.9979*x[7]*x[9]-0.9384*x[9]*x[10]-0.9087*x[1]+0.9436*x[2]-0.0413*x[3]-0.6643*x[4]-0.0817*x[5]+0.574*x[6]-0.3402*x[7]+0.7042*x[8]+0.7736*x[10]+(-0.5952*x[1]*x[2]*x[3])-0.4579*x[1]*x[2]*x[9]-0.8873*x[1]*x[4]*x[5]-0.574*x[1]*x[5]*x[6]-0.5027*x[1]*x[5]*x[8]-0.855*x[1]*x[6]*x[8]-0.7231*x[1]*x[8]*x[9]-0.6597*x[1]*x[8]*x[10]-0.8347*x[2]*x[3]*x[4]-0.4602*x[2]*x[3]*x[7]-0.8541*x[2]*x[3]*x[9]-0.4493*x[2]*x[4]*x[5]-0.5627*x[2]*x[5]*x[6]-0.494*x[2]*x[5]*x[7]-0.4854*x[2]*x[5]*x[8]-0.7424*x[2]*x[7]*x[9]-0.753*x[2]*x[9]*x[10]-0.8602*x[3]*x[4]*x[5]-0.8406*x[3]*x[4]*x[7]-0.4766*x[3]*x[4]*x[8]-0.5507*x[3]*x[4]*x[9]-0.8335*x[3]*x[4]*x[10]-0.8167*x[3]*x[5]*x[6]-0.6777*x[3]*x[5]*x[7]-0.4536*x[3]*x[5]*x[8]-0.4585*x[3]*x[5]*x[9]-0.4734*x[3]*x[5]*x[10]-0.6852*x[3]*x[6]*x[8]-0.5485*x[3]*x[6]*x[10]-0.52*x[3]*x[8]*x[9]-0.4705*x[3]*x[9]*x[10]-0.5042*x[4]*x[6]*x[7]-0.544*x[4]*x[6]*x[8]-0.8004*x[4]*x[6]*x[9]-0.7412*x[5]*x[7]*x[8]-0.7075*x[5]*x[8]*x[9]-0.796*x[6]*x[7]*x[9]-0.6128*x[6]*x[9]*x[10]+0.4835*x[1]*x[2]*x[3]*x[9]-0.241*x[1]*x[2]*x[3]*x[7]+0.7228*x[1]*x[2]*x[4]*x[5]-0.1074*x[1]*x[2]*x[4]*x[9]+0.2842*x[1]*x[2]*x[5]*x[8]+0.2174*x[1]*x[2]*x[7]*x[9]+0.7942*x[1]*x[2]*x[7]*x[10]+0.2578*x[1]*x[2]*x[9]*x[10]+0.5722*x[1]*x[3]*x[4]*x[5]+0.5377*x[1]*x[3]*x[4]*x[6]+0.482*x[1]*x[3]*x[5]*x[8]+0.8744*x[1]*x[3]*x[6]*x[9]+0.0265*x[1]*x[4]*x[5]*x[8]+0.3622*x[1]*x[4]*x[6]*x[7]+0.2797*x[1]*x[4]*x[6]*x[9]+0.2034*x[1]*x[4]*x[7]*x[8]+0.1036*x[1]*x[4]*x[8]*x[9]+0.5012*x[1]*x[5]*x[6]*x[9]+0.9164*x[1]*x[7]*x[8]*x[9]+0.3138*x[2]*x[3]*x[4]*x[5]+0.9375*x[2]*x[3]*x[4]*x[6]-0.2701*x[2]*x[3]*x[4]*x[8]-0.121*x[2]*x[3]*x[4]*x[9]+0.8568*x[2]*x[3]*x[5]*x[6]+0.6172*x[2]*x[3]*x[5]*x[8]-0.1678*x[2]*x[3]*x[6]*x[9]+0.8317*x[2]*x[3]*x[7]*x[8]+0.7311*x[2]*x[3]*x[8]*x[9]+0.6881*x[2]*x[4]*x[5]*x[7]+0.2396*x[2]*x[4]*x[5]*x[8]-0.323*x[2]*x[4]*x[5]*x[9]+0.0114*x[2]*x[4]*x[6]*x[7]-0.3739*x[2]*x[4]*x[7]*x[8]-0.2988*x[2]*x[4]*x[7]*x[9]+0.0221*x[2]*x[4]*x[8]*x[9]+0.3252*x[2]*x[4]*x[8]*x[10]+0.7135*x[2]*x[5]*x[6]*x[7]+0.1797*x[2]*x[5]*x[6]*x[8]+0.0654*x[2]*x[5]*x[6]*x[9]+0.3267*x[2]*x[5]*x[7]*x[8]+0.2823*x[2]*x[5]*x[7]*x[10]+0.4568*x[2]*x[5]*x[8]*x[9]+0.7913*x[2]*x[6]*x[7]*x[8]-0.1412*x[2]*x[7]*x[8]*x[9]+0.1176*x[2]*x[8]*x[9]*x[10]+0.7357*x[3]*x[4]*x[5]*x[6]+0.6352*x[3]*x[4]*x[5]*x[7]+0.7994*x[3]*x[4]*x[5]*x[9]+0.5169*x[3]*x[4]*x[6]*x[7]+0.6494*x[3]*x[4]*x[6]*x[9]-0.0698*x[3]*x[4]*x[6]*x[10]+0.8086*x[3]*x[4]*x[7]*x[8]+0.4115*x[3]*x[4]*x[7]*x[10]+0.2711*x[3]*x[4]*x[8]*x[9]-0.0904*x[3]*x[5]*x[6]*x[7]-0.3588*x[3]*x[5]*x[6]*x[8]+0.5506*x[3]*x[5]*x[6]*x[9]-0.1739*x[3]*x[5]*x[6]*x[10]+0.9304*x[3]*x[5]*x[7]*x[8]+0.0904*x[3]*x[5]*x[7]*x[9]+0.6047*x[3]*x[5]*x[8]*x[9]+0.1144*x[3]*x[6]*x[7]*x[9]+0.2363*x[3]*x[6]*x[7]*x[10]-0.3032*x[3]*x[6]*x[8]*x[10]+0.0307*x[3]*x[6]*x[9]*x[10]-0.2883*x[3]*x[7]*x[8]*x[10]+0.0581*x[3]*x[8]*x[9]*x[10]-0.4193*x[4]*x[5]*x[6]*x[7]+0.2623*x[4]*x[5]*x[6]*x[8]+0.2624*x[4]*x[5]*x[6]*x[10]-0.0099*x[4]*x[5]*x[7]*x[10]+0.5918*x[4]*x[6]*x[7]*x[8]-0.2273*x[4]*x[6]*x[7]*x[9]-0.2781*x[5]*x[6]*x[7]*x[9]+0.3275*x[5]*x[6]*x[7]*x[10]+0.1075*x[5]*x[6]*x[8]*x[9]+0.4246*x[5]*x[7]*x[8]*x[9]+0.8887*x[5]*x[7]*x[8]*x[10]+(-0.302*x[2]^3*x[6])-0.0541*x[4]^3*x[2]+0.6088*x[4]^3*x[8]-0.1298*x[6]^3*x[8]-0.3569*x[7]^3*x[9]+0.6243*x[9]^3*x[5]+0.7679*x[2]^2*x[3]^2+0.2596*x[2]^2*x[7]^2-0.2735*x[3]^2*x[8]^2+0.4449*x[3]^2*x[9]^2+0.02*x[5]^2*x[8]^2+(-0.4861*x[3]^2*x[2])-0.7374*x[3]^2*x[5]-0.7795*x[4]^2*x[2]-0.7174*x[4]^2*x[3]-0.8695*x[4]^2*x[6]-0.8104*x[5]^2*x[7]-0.4846*x[6]^2*x[2]-0.6408*x[6]^2*x[5]-0.6007*x[6]^2*x[8]-0.8803*x[8]^2*x[5]-0.6968*x[8]^2*x[9]-0.7304*x[9]^2*x[4]-0.8269*x[10]^2*x[9]+0.1956*x[1]^2*x[2]*x[5]+0.6582*x[1]^2*x[3]*x[10]+0.1837*x[1]^2*x[6]*x[7]-0.2582*x[2]^2*x[3]*x[5]+0.5401*x[2]^2*x[3]*x[6]+0.9823*x[2]^2*x[4]*x[6]-0.1625*x[2]^2*x[4]*x[7]+0.7556*x[2]^2*x[4]*x[9]+0.1814*x[2]^2*x[5]*x[10]+0.0436*x[2]^2*x[7]*x[8]+0.6397*x[2]^2*x[8]*x[9]-0.1605*x[2]^2*x[9]*x[10]-0.0089*x[3]^2*x[1]*x[4]+0.191*x[3]^2*x[1]*x[6]+0.8517*x[3]^2*x[2]*x[4]+0.7554*x[3]^2*x[2]*x[10]+0.7609*x[3]^2*x[4]*x[6]+0.5508*x[3]^2*x[4]*x[9]+0.8941*x[3]^2*x[5]*x[7]+0.4695*x[3]^2*x[5]*x[9]-0.3578*x[3]^2*x[6]*x[8]-0.4125*x[3]^2*x[7]*x[8]-0.2583*x[3]^2*x[7]*x[9]+0.7771*x[3]^2*x[8]*x[9]+0.9746*x[4]^2*x[1]*x[7]+0.0011*x[4]^2*x[2]*x[3]+0.674*x[4]^2*x[2]*x[6]-0.228*x[4]^2*x[2]*x[8]+0.3441*x[4]^2*x[3]*x[5]+0.5294*x[4]^2*x[5]*x[6]-0.0992*x[4]^2*x[5]*x[7]+0.5288*x[4]^2*x[5]*x[9]+0.9786*x[4]^2*x[6]*x[9]+0.3059*x[4]^2*x[7]*x[8]+0.9039*x[5]^2*x[2]*x[4]+0.181*x[5]^2*x[2]*x[7]+0.4657*x[5]^2*x[2]*x[8]+0.6746*x[5]^2*x[2]*x[9]+0.0668*x[5]^2*x[3]*x[4]+0.5083*x[5]^2*x[3]*x[6]+0.5913*x[5]^2*x[4]*x[6]-0.141*x[5]^2*x[4]*x[9]+0.4006*x[5]^2*x[7]*x[8]+0.814*x[5]^2*x[7]*x[9]-0.4338*x[5]^2*x[8]*x[9]-0.404*x[5]^2*x[8]*x[10]+0.0091*x[5]^2*x[9]*x[10]+0.6313*x[6]^2*x[1]*x[4]-0.114*x[6]^2*x[1]*x[7]-0.373*x[6]^2*x[1]*x[9]+0.6029*x[6]^2*x[2]*x[4]-0.31*x[6]^2*x[2]*x[5]-0.3843*x[6]^2*x[2]*x[8]+0.4264*x[6]^2*x[3]*x[4]-0.404*x[6]^2*x[3]*x[5]+0.4515*x[6]^2*x[3]*x[7]-0.1666*x[6]^2*x[3]*x[10]+0.1696*x[6]^2*x[4]*x[7]+0.791*x[6]^2*x[4]*x[8]-0.33*x[6]^2*x[4]*x[10]-0.2113*x[6]^2*x[7]*x[8]+0.7147*x[6]^2*x[8]*x[10]-0.3774*x[7]^2*x[2]*x[5]-0.151*x[7]^2*x[2]*x[6]+0.8425*x[7]^2*x[2]*x[8]-0.3945*x[7]^2*x[2]*x[9]-0.2565*x[7]^2*x[3]*x[6]+0.1076*x[7]^2*x[3]*x[9]+0.2666*x[7]^2*x[4]*x[6]+0.8553*x[7]^2*x[5]*x[6]-0.0725*x[8]^2*x[1]*x[4]+0.4682*x[8]^2*x[2]*x[10]-0.1229*x[8]^2*x[3]*x[6]-0.2605*x[8]^2*x[4]*x[6]+0.5571*x[9]^2*x[1]*x[3]+0.6446*x[9]^2*x[1]*x[5]+0.7824*x[9]^2*x[1]*x[7]+0.7564*x[9]^2*x[2]*x[3]+0.9753*x[9]^2*x[2]*x[5]+0.5259*x[9]^2*x[2]*x[6]-0.4083*x[9]^2*x[2]*x[7]+0.9679*x[9]^2*x[3]*x[7]-0.3287*x[9]^2*x[4]*x[6]-0.3966*x[9]^2*x[5]*x[6]-0.1606*x[10]^2*x[3]*x[8]-0.1719*x[10]^2*x[4]*x[9]-0.0987*x[10]^2*x[5]*x[8]+0.3764*x[10]^2*x[6]*x[9]+0.3072*x[10]^2*x[7]*x[8] <= 25.545)
@NLconstraint(m, e5, 0.1908*x[9]-0.4859*x[9]^3+(-0.9523*x[1]*x[10])-0.9013*x[2]*x[3]-0.9001*x[2]*x[4]-0.9212*x[2]*x[8]-0.8914*x[2]*x[9]-0.9701*x[3]*x[7]-0.9518*x[3]*x[8]-0.899*x[4]*x[5]-0.976*x[4]*x[7]-0.9842*x[4]*x[9]-0.9695*x[5]*x[9]-0.9206*x[7]*x[9]-0.9573*x[1]+0.0097*x[2]-0.378*x[3]-0.8414*x[4]-0.1198*x[5]-0.5861*x[7]-0.9607*x[8]-0.4826*x[10]+(-0.6519*x[1]*x[2]*x[3])-0.8896*x[1]*x[2]*x[10]-0.6691*x[1]*x[4]*x[5]-0.5375*x[2]*x[3]*x[9]-0.8312*x[2]*x[3]*x[10]-0.6101*x[2]*x[4]*x[10]-0.8205*x[2]*x[5]*x[8]-0.6414*x[2]*x[6]*x[7]-0.4556*x[2]*x[6]*x[8]-0.4598*x[2]*x[6]*x[9]-0.7887*x[2]*x[7]*x[8]-0.8491*x[2]*x[7]*x[9]-0.5771*x[2]*x[7]*x[10]-0.7541*x[2]*x[8]*x[9]-0.6374*x[2]*x[8]*x[10]-0.6769*x[2]*x[9]*x[10]-0.6654*x[3]*x[4]*x[6]-0.7929*x[3]*x[5]*x[8]-0.5686*x[3]*x[7]*x[10]-0.6179*x[4]*x[5]*x[6]-0.5411*x[4]*x[6]*x[10]-0.7687*x[4]*x[7]*x[9]-0.4567*x[5]*x[7]*x[9]-0.6386*x[5]*x[8]*x[9]-0.6826*x[6]*x[7]*x[9]-0.7005*x[6]*x[7]*x[10]-0.6501*x[8]*x[9]*x[10]+0.7104*x[6]+0.8174*x[1]*x[2]*x[3]*x[5]-0.0872*x[1]*x[2]*x[3]*x[8]+0.2309*x[1]*x[2]*x[3]*x[9]+0.1875*x[1]*x[2]*x[3]*x[10]+0.0425*x[1]*x[2]*x[4]*x[5]+0.1796*x[1]*x[2]*x[4]*x[9]+0.7695*x[1]*x[2]*x[5]*x[7]+0.1309*x[1]*x[2]*x[6]*x[8]+0.8267*x[1]*x[3]*x[4]*x[8]-0.4058*x[1]*x[3]*x[4]*x[9]+0.3212*x[1]*x[3]*x[5]*x[6]+0.1006*x[1]*x[3]*x[5]*x[7]-0.2109*x[1]*x[3]*x[5]*x[8]-0.3674*x[1]*x[3]*x[6]*x[9]+0.2978*x[1]*x[3]*x[7]*x[8]+0.3448*x[1]*x[3]*x[7]*x[10]-0.429*x[1]*x[3]*x[9]*x[10]+0.4369*x[1]*x[4]*x[5]*x[7]+0.488*x[1]*x[4]*x[6]*x[8]+0.9179*x[1]*x[5]*x[6]*x[7]+0.5652*x[1]*x[5]*x[6]*x[8]+0.6238*x[1]*x[5]*x[6]*x[10]-0.0017*x[1]*x[5]*x[7]*x[8]+0.788*x[1]*x[5]*x[7]*x[9]+0.6427*x[1]*x[5]*x[9]*x[10]+0.9538*x[1]*x[6]*x[7]*x[10]+0.6311*x[1]*x[8]*x[9]*x[10]+0.3681*x[2]*x[3]*x[4]*x[7]+0.0124*x[2]*x[3]*x[4]*x[8]+0.2864*x[2]*x[3]*x[4]*x[9]+0.5288*x[2]*x[3]*x[5]*x[8]-0.4394*x[2]*x[3]*x[5]*x[9]+0.191*x[2]*x[3]*x[6]*x[8]+0.6141*x[2]*x[3]*x[6]*x[10]+0.775*x[2]*x[3]*x[7]*x[8]+0.0966*x[2]*x[4]*x[5]*x[6]+0.6566*x[2]*x[4]*x[5]*x[7]+0.2919*x[2]*x[4]*x[5]*x[8]+0.0603*x[2]*x[4]*x[5]*x[9]+0.0101*x[2]*x[4]*x[6]*x[8]-0.2115*x[2]*x[4]*x[6]*x[10]-0.2645*x[2]*x[4]*x[7]*x[9]+0.9124*x[2]*x[4]*x[8]*x[9]+0.2193*x[2]*x[5]*x[6]*x[7]+0.561*x[2]*x[5]*x[6]*x[9]+0.4739*x[2]*x[5]*x[7]*x[8]+0.4192*x[2]*x[5]*x[8]*x[9]+0.0955*x[2]*x[6]*x[7]*x[9]+0.1492*x[2]*x[6]*x[8]*x[9]+0.4048*x[2]*x[7]*x[8]*x[9]-0.1522*x[2]*x[7]*x[9]*x[10]+0.7245*x[2]*x[8]*x[9]*x[10]+0.1926*x[3]*x[4]*x[5]*x[6]-0.1879*x[3]*x[4]*x[5]*x[8]+0.7386*x[3]*x[4]*x[6]*x[7]+0.3937*x[3]*x[4]*x[6]*x[8]-0.0935*x[3]*x[4]*x[6]*x[9]-0.1087*x[3]*x[4]*x[6]*x[10]+0.5163*x[3]*x[4]*x[7]*x[8]-0.2321*x[3]*x[4]*x[7]*x[9]+0.0608*x[3]*x[5]*x[6]*x[7]+0.4914*x[3]*x[5]*x[6]*x[8]-0.1318*x[3]*x[5]*x[6]*x[10]+0.7917*x[3]*x[5]*x[7]*x[8]+0.8974*x[3]*x[6]*x[7]*x[8]+0.9153*x[3]*x[6]*x[7]*x[9]+0.5393*x[3]*x[7]*x[8]*x[9]-0.1675*x[3]*x[8]*x[9]*x[10]-0.0563*x[4]*x[5]*x[6]*x[7]+0.9834*x[4]*x[5]*x[6]*x[8]-0.4353*x[4]*x[5]*x[7]*x[8]+0.0179*x[4]*x[6]*x[7]*x[8]+0.0404*x[4]*x[6]*x[7]*x[9]+0.0572*x[4]*x[6]*x[7]*x[10]+0.8075*x[4]*x[6]*x[8]*x[9]+0.5753*x[4]*x[7]*x[8]*x[9]-0.3031*x[4]*x[7]*x[9]*x[10]+0.9663*x[5]*x[6]*x[7]*x[10]+0.0438*x[5]*x[7]*x[8]*x[9]+0.686*x[5]*x[7]*x[8]*x[10]+0.5051*x[5]*x[7]*x[9]*x[10]-0.3049*x[6]*x[7]*x[8]*x[10]+0.8002*x[6]*x[8]*x[9]*x[10]+0.1141*x[2]^3*x[6]-0.0957*x[3]^3*x[2]+0.3654*x[3]^3*x[8]+0.2929*x[5]^3*x[3]+0.303*x[8]^3*x[4]-0.1769*x[10]^3*x[6]+0.3952*x[2]^2*x[8]^2+0.9088*x[2]^2*x[9]^2-0.3203*x[3]^2*x[6]^2+0.0977*x[3]^2*x[7]^2-0.304*x[4]^2*x[6]^2+0.1691*x[5]^2*x[6]^2+0.2009*x[5]^2*x[7]^2+0.9487*x[6]^2*x[9]^2+(-0.8535*x[2]^2*x[4])-0.8208*x[2]^2*x[10]-0.5915*x[3]^2*x[2]-0.7291*x[3]^2*x[7]-0.8307*x[3]^2*x[9]-0.8519*x[4]^2*x[7]-0.8314*x[5]^2*x[6]-0.79*x[6]^2*x[9]-0.4573*x[6]^2*x[10]-0.8885*x[7]^2*x[2]-0.5769*x[7]^2*x[5]-0.8694*x[8]^2*x[6]-0.4849*x[9]^2*x[2]-0.844*x[9]^2*x[5]-0.7668*x[9]^2*x[7]-0.8821*x[9]^2*x[10]-0.537*x[10]^2*x[9]+0.0177*x[1]^2*x[3]*x[7]+0.836*x[1]^2*x[4]*x[7]+0.204*x[1]^2*x[5]*x[6]-0.4316*x[1]^2*x[7]*x[9]+0.7681*x[2]^2*x[3]*x[4]+0.567*x[2]^2*x[3]*x[8]-0.1135*x[2]^2*x[3]*x[9]+0.1741*x[2]^2*x[4]*x[5]-0.0411*x[2]^2*x[4]*x[8]+0.9611*x[2]^2*x[6]*x[8]-0.4254*x[2]^2*x[6]*x[9]-0.2928*x[2]^2*x[7]*x[8]+0.3399*x[2]^2*x[8]*x[9]+0.9752*x[3]^2*x[2]*x[5]+0.4032*x[3]^2*x[2]*x[8]+0.8894*x[3]^2*x[4]*x[5]+0.2239*x[3]^2*x[4]*x[9]+0.5728*x[3]^2*x[5]*x[9]+0.5639*x[3]^2*x[5]*x[10]+0.7328*x[3]^2*x[6]*x[9]-0.3164*x[3]^2*x[6]*x[10]+0.7834*x[3]^2*x[7]*x[10]+0.7558*x[3]^2*x[8]*x[9]+0.9277*x[4]^2*x[1]*x[5]-0.2303*x[4]^2*x[1]*x[6]-0.0053*x[4]^2*x[2]*x[8]+0.3484*x[4]^2*x[3]*x[6]+0.6257*x[4]^2*x[3]*x[8]+0.2223*x[4]^2*x[5]*x[9]+0.7316*x[4]^2*x[5]*x[10]-0.3354*x[4]^2*x[6]*x[8]-0.0207*x[4]^2*x[6]*x[9]-0.3961*x[4]^2*x[7]*x[8]-0.1445*x[4]^2*x[8]*x[9]+0.8694*x[4]^2*x[9]*x[10]+0.6456*x[5]^2*x[2]*x[4]-0.3629*x[5]^2*x[2]*x[7]+0.7332*x[5]^2*x[2]*x[8]+0.4218*x[5]^2*x[3]*x[6]-0.0359*x[5]^2*x[3]*x[9]-0.4148*x[5]^2*x[4]*x[6]+0.1861*x[5]^2*x[4]*x[7]-0.1559*x[5]^2*x[4]*x[8]+0.6247*x[5]^2*x[4]*x[10]+0.8009*x[5]^2*x[6]*x[8]+0.039*x[5]^2*x[6]*x[9]+0.3477*x[5]^2*x[6]*x[10]-0.3552*x[5]^2*x[7]*x[9]+0.5952*x[5]^2*x[9]*x[10]+0.0264*x[6]^2*x[1]*x[3]+0.7612*x[6]^2*x[1]*x[5]+0.5332*x[6]^2*x[1]*x[8]+0.242*x[6]^2*x[2]*x[7]+0.2558*x[6]^2*x[3]*x[5]-0.2867*x[6]^2*x[3]*x[8]-0.1929*x[6]^2*x[4]*x[5]+0.9222*x[6]^2*x[4]*x[7]+0.325*x[6]^2*x[4]*x[8]+0.1494*x[6]^2*x[5]*x[7]-0.2965*x[6]^2*x[7]*x[8]+0.6024*x[7]^2*x[1]*x[9]-0.3142*x[7]^2*x[2]*x[4]+0.8117*x[7]^2*x[2]*x[5]-0.1522*x[7]^2*x[2]*x[8]+0.2467*x[7]^2*x[2]*x[9]+0.9725*x[7]^2*x[3]*x[6]+0.1946*x[7]^2*x[3]*x[8]+0.5149*x[7]^2*x[3]*x[9]-0.3218*x[7]^2*x[4]*x[6]-0.0361*x[7]^2*x[4]*x[9]-0.0691*x[7]^2*x[4]*x[10]+0.3636*x[7]^2*x[5]*x[8]+0.7819*x[7]^2*x[6]*x[9]+0.9053*x[7]^2*x[8]*x[9]+0.2456*x[7]^2*x[9]*x[10]-0.0475*x[8]^2*x[2]*x[3]+0.7369*x[8]^2*x[4]*x[7]+0.4453*x[8]^2*x[4]*x[9]+0.675*x[8]^2*x[5]*x[9]-0.4092*x[8]^2*x[6]*x[7]-0.0922*x[9]^2*x[1]*x[4]+0.7834*x[9]^2*x[1]*x[7]+0.1991*x[9]^2*x[2]*x[4]+0.6828*x[9]^2*x[3]*x[6]+0.8961*x[9]^2*x[4]*x[6]+0.8764*x[9]^2*x[4]*x[8]+0.9555*x[9]^2*x[5]*x[6]+0.2147*x[9]^2*x[6]*x[8]+0.3899*x[9]^2*x[7]*x[10]+0.2985*x[9]^2*x[8]*x[10]+0.6166*x[10]^2*x[2]*x[6]-0.3807*x[10]^2*x[4]*x[6]-0.291*x[10]^2*x[5]*x[9] <= 54.12)
@NLconstraint(m, e6, (-0.4859*x[9]^3)-0.4298*x[9]+(-0.9945*x[1]*x[3])-0.9075*x[1]*x[5]-0.9832*x[1]*x[7]-0.9705*x[2]*x[4]-0.9696*x[2]*x[6]-0.9174*x[2]*x[9]-0.9623*x[2]*x[10]-0.9546*x[3]*x[5]-0.9995*x[3]*x[6]-0.976*x[3]*x[7]-0.9135*x[4]*x[5]-0.9954*x[4]*x[7]-0.8974*x[5]*x[7]-0.9581*x[5]*x[8]-0.9675*x[6]*x[7]-0.914*x[6]*x[10]-0.9644*x[7]*x[8]-0.0359*x[1]+0.3933*x[2]+0.3966*x[3]+0.6274*x[4]+0.0995*x[5]+0.4*x[6]-0.4727*x[7]-0.5741*x[8]-0.3195*x[10]+(-0.7054*x[1]*x[2]*x[3])-0.5641*x[1]*x[2]*x[7]-0.6685*x[1]*x[3]*x[5]-0.6355*x[1]*x[4]*x[5]-0.4973*x[1]*x[6]*x[8]-0.8174*x[1]*x[9]*x[10]-0.4918*x[2]*x[3]*x[6]-0.8619*x[2]*x[3]*x[10]-0.4742*x[2]*x[4]*x[5]-0.6291*x[2]*x[4]*x[6]-0.5385*x[2]*x[5]*x[9]-0.5448*x[2]*x[5]*x[10]-0.4957*x[2]*x[6]*x[8]-0.5534*x[3]*x[4]*x[5]-0.5265*x[3]*x[4]*x[7]-0.5898*x[3]*x[4]*x[8]-0.6202*x[3]*x[5]*x[9]-0.5112*x[3]*x[6]*x[7]-0.6624*x[3]*x[6]*x[8]-0.6528*x[3]*x[7]*x[9]-0.7523*x[4]*x[5]*x[6]-0.6435*x[4]*x[5]*x[9]-0.6596*x[4]*x[6]*x[10]-0.6569*x[4]*x[8]*x[9]-0.6195*x[5]*x[6]*x[9]-0.7771*x[5]*x[8]*x[9]-0.5907*x[6]*x[7]*x[9]-0.6871*x[6]*x[8]*x[9]-0.7158*x[6]*x[9]*x[10]+0.9947*x[1]*x[2]*x[3]*x[7]-0.3048*x[1]*x[2]*x[3]*x[6]+0.3719*x[1]*x[2]*x[3]*x[10]+0.6702*x[1]*x[2]*x[4]*x[5]+0.1158*x[1]*x[2]*x[4]*x[6]+0.0984*x[1]*x[2]*x[4]*x[7]-0.3953*x[1]*x[2]*x[4]*x[10]+0.6489*x[1]*x[2]*x[5]*x[6]+0.5897*x[1]*x[2]*x[5]*x[8]+0.8889*x[1]*x[2]*x[5]*x[9]+0.6313*x[1]*x[2]*x[5]*x[10]+0.3598*x[1]*x[2]*x[6]*x[8]+0.7206*x[1]*x[2]*x[6]*x[10]+0.8028*x[1]*x[2]*x[7]*x[9]+0.212*x[1]*x[3]*x[4]*x[5]+0.9627*x[1]*x[3]*x[5]*x[7]+0.5176*x[1]*x[3]*x[6]*x[7]+0.968*x[1]*x[3]*x[6]*x[8]-0.4119*x[1]*x[3]*x[6]*x[9]+0.1303*x[1]*x[3]*x[7]*x[9]+0.6851*x[1]*x[3]*x[8]*x[9]+0.5416*x[1]*x[4]*x[5]*x[6]+0.8264*x[1]*x[4]*x[5]*x[8]+0.1886*x[1]*x[4]*x[5]*x[9]+0.3205*x[1]*x[4]*x[6]*x[9]-0.4111*x[1]*x[4]*x[7]*x[8]+0.5431*x[1]*x[4]*x[8]*x[10]+0.6628*x[1]*x[6]*x[7]*x[8]-0.1138*x[1]*x[6]*x[7]*x[9]+0.1112*x[1]*x[7]*x[8]*x[9]+0.6099*x[2]*x[3]*x[4]*x[5]-0.2217*x[2]*x[3]*x[4]*x[6]+0.4183*x[2]*x[3]*x[4]*x[7]-0.0829*x[2]*x[3]*x[5]*x[7]+0.8917*x[2]*x[3]*x[5]*x[9]+0.6664*x[2]*x[3]*x[5]*x[10]+0.4339*x[2]*x[3]*x[6]*x[7]+0.3328*x[2]*x[3]*x[6]*x[8]+0.583*x[2]*x[3]*x[6]*x[9]-0.0952*x[2]*x[3]*x[7]*x[8]+0.9162*x[2]*x[3]*x[7]*x[10]+0.5557*x[2]*x[3]*x[8]*x[9]+0.5125*x[2]*x[4]*x[5]*x[7]+0.2112*x[2]*x[4]*x[5]*x[9]-0.3302*x[2]*x[4]*x[6]*x[7]+0.7984*x[2]*x[4]*x[6]*x[8]+0.5026*x[2]*x[4]*x[6]*x[9]+0.4053*x[2]*x[4]*x[6]*x[10]+0.2493*x[2]*x[4]*x[7]*x[9]+0.5032*x[2]*x[4]*x[7]*x[10]+0.0197*x[2]*x[4]*x[8]*x[9]+0.1728*x[2]*x[5]*x[6]*x[9]+0.8596*x[2]*x[5]*x[7]*x[8]+0.7161*x[2]*x[5]*x[7]*x[9]+0.4152*x[2]*x[5]*x[7]*x[10]-0.1479*x[2]*x[5]*x[9]*x[10]-0.2063*x[2]*x[6]*x[7]*x[8]+0.8142*x[2]*x[6]*x[7]*x[10]+0.8889*x[2]*x[6]*x[9]*x[10]-0.3251*x[2]*x[7]*x[8]*x[9]+0.8513*x[2]*x[7]*x[8]*x[10]+0.8112*x[3]*x[4]*x[5]*x[7]+0.7493*x[3]*x[4]*x[5]*x[8]+0.5894*x[3]*x[4]*x[5]*x[9]+0.1799*x[3]*x[4]*x[5]*x[10]+0.3339*x[3]*x[4]*x[6]*x[7]-0.108*x[3]*x[4]*x[6]*x[8]-0.0327*x[3]*x[4]*x[6]*x[9]-0.267*x[3]*x[4]*x[7]*x[10]+0.771*x[3]*x[4]*x[8]*x[10]+0.6955*x[3]*x[5]*x[6]*x[8]+0.2304*x[3]*x[5]*x[6]*x[9]-0.0503*x[3]*x[5]*x[6]*x[10]-0.093*x[3]*x[5]*x[7]*x[8]-0.1408*x[3]*x[6]*x[7]*x[8]+0.328*x[3]*x[6]*x[7]*x[9]+0.56*x[3]*x[7]*x[8]*x[9]+0.8849*x[4]*x[5]*x[6]*x[8]-0.2385*x[4]*x[5]*x[7]*x[8]+0.71*x[4]*x[5]*x[7]*x[9]+0.6887*x[4]*x[5]*x[8]*x[9]+0.2532*x[4]*x[5]*x[9]*x[10]+0.1488*x[4]*x[6]*x[7]*x[8]+0.4276*x[4]*x[7]*x[8]*x[9]+0.8739*x[5]*x[6]*x[7]*x[8]+0.6703*x[5]*x[6]*x[7]*x[9]-0.2538*x[5]*x[6]*x[8]*x[9]+0.4073*x[5]*x[7]*x[9]*x[10]+0.1952*x[5]*x[8]*x[9]*x[10]+0.7548*x[6]*x[7]*x[8]*x[10]-0.0235*x[6]*x[7]*x[9]*x[10]+0.7187*x[7]*x[8]*x[9]*x[10]+0.5617*x[2]^3*x[5]+0.2733*x[3]^3*x[2]+0.1618*x[5]^3*x[1]+0.0736*x[5]^3*x[9]-0.1865*x[6]^3*x[2]+0.7262*x[6]^3*x[5]+0.3848*x[7]^3*x[5]-0.397*x[7]^3*x[9]+0.7664*x[9]^3*x[10]+0.2418*x[1]^2*x[9]^2-0.4216*x[2]^2*x[3]^2+0.8057*x[2]^2*x[5]^2+0.9126*x[2]^2*x[8]^2-0.1017*x[3]^2*x[6]^2+0.1632*x[4]^2*x[9]^2+0.7788*x[5]^2*x[6]^2+(-0.7715*x[1]^2*x[2])-0.8741*x[2]^2*x[4]-0.8048*x[2]^2*x[8]-0.6071*x[2]^2*x[9]-0.4632*x[3]^2*x[6]-0.6943*x[3]^2*x[8]-0.6182*x[4]^2*x[9]-0.6711*x[5]^2*x[1]-0.4472*x[5]^2*x[6]-0.7763*x[8]^2*x[6]-0.7164*x[8]^2*x[7]-0.6117*x[9]^2*x[2]-0.8359*x[9]^2*x[10]-0.7518*x[10]^2*x[5]+0.1095*x[1]^2*x[5]*x[7]-0.3978*x[1]^2*x[8]*x[9]+0.0912*x[2]^2*x[1]*x[3]+0.2203*x[2]^2*x[1]*x[8]+0.5486*x[2]^2*x[3]*x[4]+0.0893*x[2]^2*x[3]*x[6]-0.2157*x[2]^2*x[4]*x[7]-0.3586*x[2]^2*x[5]*x[6]+0.5124*x[2]^2*x[5]*x[8]-0.1464*x[2]^2*x[6]*x[8]+0.0088*x[2]^2*x[6]*x[9]+0.7581*x[2]^2*x[7]*x[9]+0.7907*x[2]^2*x[8]*x[9]+0.8445*x[3]^2*x[4]*x[8]-0.1272*x[3]^2*x[4]*x[10]+0.1515*x[3]^2*x[5]*x[7]-0.1188*x[3]^2*x[5]*x[9]+0.0842*x[3]^2*x[6]*x[7]-0.1523*x[3]^2*x[7]*x[8]+0.0878*x[4]^2*x[1]*x[2]+0.1925*x[4]^2*x[2]*x[3]-0.1051*x[4]^2*x[2]*x[9]+0.8372*x[4]^2*x[3]*x[6]+0.2778*x[4]^2*x[3]*x[8]-0.3838*x[4]^2*x[5]*x[6]+0.4428*x[4]^2*x[6]*x[8]+0.5973*x[4]^2*x[7]*x[8]+0.0696*x[4]^2*x[7]*x[9]+0.6528*x[5]^2*x[3]*x[9]+0.0827*x[5]^2*x[4]*x[6]-0.3326*x[5]^2*x[4]*x[7]-0.2395*x[5]^2*x[4]*x[8]-0.0556*x[5]^2*x[4]*x[10]-0.3285*x[5]^2*x[6]*x[8]+0.0786*x[5]^2*x[7]*x[8]+0.8171*x[5]^2*x[7]*x[9]-0.0168*x[5]^2*x[9]*x[10]-0.0407*x[6]^2*x[1]*x[4]+0.6107*x[6]^2*x[1]*x[7]-0.2926*x[6]^2*x[2]*x[9]-0.3318*x[6]^2*x[3]*x[5]+0.0463*x[6]^2*x[3]*x[8]+0.789*x[6]^2*x[4]*x[9]-0.0736*x[6]^2*x[4]*x[10]+0.9183*x[6]^2*x[5]*x[8]+0.5882*x[6]^2*x[5]*x[9]+0.8203*x[6]^2*x[5]*x[10]+0.4524*x[7]^2*x[3]*x[10]+0.5865*x[7]^2*x[4]*x[5]-0.3557*x[7]^2*x[4]*x[6]+0.4479*x[7]^2*x[5]*x[6]+0.9596*x[7]^2*x[5]*x[8]-0.1155*x[7]^2*x[6]*x[9]-0.133*x[7]^2*x[6]*x[10]-0.1595*x[8]^2*x[1]*x[2]+0.5064*x[8]^2*x[2]*x[4]-0.061*x[8]^2*x[2]*x[10]-0.2217*x[8]^2*x[3]*x[5]-0.1966*x[8]^2*x[3]*x[7]-0.2791*x[8]^2*x[6]*x[10]+0.7566*x[8]^2*x[7]*x[9]+0.3134*x[9]^2*x[2]*x[4]+0.1092*x[9]^2*x[2]*x[7]-0.3226*x[9]^2*x[3]*x[5]-0.2819*x[9]^2*x[3]*x[6]-0.2381*x[9]^2*x[3]*x[7]+0.3521*x[9]^2*x[4]*x[5]+0.8815*x[10]^2*x[2]*x[6]+0.448*x[10]^2*x[2]*x[9]-0.44*x[10]^2*x[3]*x[6]-0.3131*x[10]^2*x[3]*x[7]+0.3932*x[10]^2*x[4]*x[9]+0.1819*x[10]^2*x[6]*x[7]+0.7918*x[10]^2*x[6]*x[9] <= 98.556)

m = m 		 # model get returned when including this script. 
