using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.4174*x[2]^4-0.1213*x[2]+0.1705*x[3]-0.9325*x[3]^2+(-0.9935*x[8]^2)-0.1486*x[8]+0.1888*x[9]^4-0.8145*x[9]+(-0.963*x[1]*x[4])-0.9131*x[3]*x[6]-0.956*x[3]*x[8]-0.9792*x[5]*x[6]-0.9022*x[5]*x[7]-0.9695*x[6]*x[9]-0.9384*x[7]*x[8]-0.9527*x[7]*x[10]+0.1108*x[1]-0.2378*x[4]+0.887*x[5]+0.5003*x[6]+0.5925*x[7]+0.9327*x[10]+(-0.7708*x[1]*x[3]*x[7])-0.8854*x[1]*x[4]*x[6]-0.6828*x[1]*x[4]*x[8]-0.714*x[1]*x[6]*x[8]-0.7982*x[1]*x[7]*x[9]-0.5244*x[1]*x[8]*x[9]-0.8386*x[2]*x[4]*x[7]-0.5948*x[2]*x[4]*x[8]-0.7607*x[3]*x[4]*x[5]-0.8368*x[3]*x[4]*x[6]-0.5945*x[3]*x[4]*x[8]-0.6231*x[3]*x[4]*x[10]-0.6863*x[3]*x[5]*x[8]-0.6265*x[3]*x[6]*x[7]-0.7643*x[3]*x[6]*x[9]-0.6124*x[3]*x[7]*x[8]-0.664*x[4]*x[5]*x[10]-0.4894*x[4]*x[7]*x[9]-0.8618*x[4]*x[7]*x[10]-0.5716*x[4]*x[8]*x[9]-0.7287*x[4]*x[9]*x[10]-0.7575*x[5]*x[6]*x[10]-0.5337*x[5]*x[7]*x[9]-0.8551*x[5]*x[8]*x[9]-0.5175*x[6]*x[7]*x[8]-0.8426*x[6]*x[8]*x[9]-0.6198*x[7]*x[8]*x[9]-0.7505*x[7]*x[8]*x[10]-0.7032*x[7]*x[9]*x[10]+0.795*x[1]*x[2]*x[3]*x[4]+0.8888*x[1]*x[2]*x[3]*x[7]+0.5416*x[1]*x[2]*x[3]*x[8]+0.0962*x[1]*x[2]*x[3]*x[9]-0.3856*x[1]*x[2]*x[4]*x[6]-0.4401*x[1]*x[2]*x[4]*x[8]-0.2236*x[1]*x[2]*x[7]*x[8]+0.5854*x[1]*x[2]*x[7]*x[9]+0.5924*x[1]*x[2]*x[8]*x[10]+0.1099*x[1]*x[3]*x[4]*x[5]+0.0482*x[1]*x[3]*x[4]*x[7]+0.5001*x[1]*x[3]*x[4]*x[10]+0.6049*x[1]*x[3]*x[5]*x[6]+0.7821*x[1]*x[3]*x[5]*x[9]-0.0392*x[1]*x[3]*x[6]*x[7]-0.3355*x[1]*x[3]*x[6]*x[9]+0.388*x[1]*x[3]*x[7]*x[8]+0.3713*x[1]*x[3]*x[7]*x[9]+0.2053*x[1]*x[3]*x[8]*x[9]+0.5041*x[1]*x[3]*x[9]*x[10]+0.5682*x[1]*x[4]*x[5]*x[9]+0.8153*x[1]*x[4]*x[5]*x[10]+0.1477*x[1]*x[4]*x[6]*x[10]-0.3506*x[1]*x[4]*x[7]*x[9]-0.4417*x[1]*x[4]*x[8]*x[10]+0.4937*x[1]*x[4]*x[9]*x[10]-0.2122*x[1]*x[5]*x[6]*x[8]+0.0727*x[1]*x[5]*x[7]*x[8]+0.6151*x[1]*x[5]*x[7]*x[10]+0.8335*x[1]*x[5]*x[9]*x[10]+0.5999*x[2]*x[3]*x[4]*x[7]-0.4105*x[2]*x[3]*x[4]*x[8]+0.2972*x[2]*x[3]*x[4]*x[9]+0.9377*x[2]*x[3]*x[4]*x[10]+0.9915*x[2]*x[3]*x[5]*x[6]+0.4746*x[2]*x[3]*x[5]*x[7]+0.4148*x[2]*x[3]*x[5]*x[9]+0.3439*x[2]*x[3]*x[6]*x[7]-0.2202*x[2]*x[3]*x[6]*x[9]+0.5106*x[2]*x[3]*x[8]*x[9]-0.1855*x[2]*x[4]*x[5]*x[6]+0.5807*x[2]*x[4]*x[5]*x[7]+0.7808*x[2]*x[4]*x[5]*x[8]+0.9094*x[2]*x[4]*x[6]*x[7]+0.6342*x[2]*x[4]*x[6]*x[9]+0.7287*x[2]*x[4]*x[7]*x[8]+0.718*x[2]*x[4]*x[7]*x[9]-0.2912*x[2]*x[4]*x[8]*x[9]+0.9937*x[2]*x[4]*x[9]*x[10]-0.2221*x[2]*x[5]*x[6]*x[8]+0.3784*x[2]*x[5]*x[7]*x[9]+0.016*x[2]*x[5]*x[8]*x[9]-0.2045*x[2]*x[6]*x[7]*x[9]+0.5102*x[2]*x[7]*x[9]*x[10]+0.6371*x[3]*x[4]*x[5]*x[7]+0.9903*x[3]*x[4]*x[5]*x[8]+0.9479*x[3]*x[4]*x[6]*x[9]+0.8822*x[3]*x[4]*x[6]*x[10]+0.1611*x[3]*x[4]*x[7]*x[9]-0.4312*x[3]*x[5]*x[6]*x[8]-0.2626*x[3]*x[5]*x[6]*x[10]+0.0707*x[3]*x[5]*x[7]*x[8]+0.0293*x[3]*x[6]*x[7]*x[8]-0.1369*x[3]*x[6]*x[9]*x[10]-0.2617*x[3]*x[7]*x[8]*x[9]+0.0284*x[4]*x[5]*x[6]*x[7]+0.938*x[4]*x[5]*x[6]*x[9]+0.3923*x[4]*x[5]*x[7]*x[8]+0.2753*x[4]*x[5]*x[7]*x[9]+0.6783*x[4]*x[5]*x[7]*x[10]+0.0865*x[4]*x[5]*x[9]*x[10]+0.2956*x[4]*x[7]*x[8]*x[10]+0.4559*x[4]*x[7]*x[9]*x[10]+0.0932*x[5]*x[6]*x[7]*x[9]-0.4167*x[5]*x[6]*x[8]*x[10]+0.3638*x[5]*x[6]*x[9]*x[10]+0.6089*x[5]*x[7]*x[8]*x[9]-0.4219*x[5]*x[7]*x[9]*x[10]+0.3201*x[6]*x[7]*x[8]*x[9]+0.563*x[6]*x[7]*x[9]*x[10]+0.9557*x[6]*x[8]*x[9]*x[10]+0.9622*x[7]*x[8]*x[9]*x[10]+0.9831*x[2]^3*x[4]+0.7759*x[2]^3*x[8]-0.1086*x[3]^3*x[8]+0.2203*x[3]^3*x[9]-0.4448*x[4]^3*x[1]+0.3214*x[4]^3*x[6]+0.4056*x[4]^3*x[9]+0.3324*x[6]^3*x[3]+0.6997*x[6]^3*x[5]+0.7376*x[8]^3*x[2]+0.0334*x[8]^3*x[7]+0.7067*x[9]^3*x[7]+0.5421*x[2]^2*x[3]^2+0.6476*x[2]^2*x[5]^2-0.438*x[2]^2*x[7]^2+0.8993*x[2]^2*x[9]^2+0.2749*x[3]^2*x[10]^2+0.2468*x[4]^2*x[6]^2+0.4709*x[5]^2*x[7]^2+0.3567*x[5]^2*x[9]^2+0.9469*x[5]^2*x[10]^2+0.8237*x[7]^2*x[8]^2-0.0684*x[7]^2*x[9]^2-0.2787*x[8]^2*x[9]^2+(-0.6774*x[2]^2*x[7])-0.8423*x[2]^2*x[8]-0.8058*x[3]^2*x[7]-0.8263*x[4]^2*x[5]-0.4538*x[4]^2*x[6]-0.5683*x[5]^2*x[2]-0.5266*x[5]^2*x[3]-0.7751*x[5]^2*x[6]-0.6285*x[5]^2*x[9]-0.7613*x[7]^2*x[4]-0.673*x[9]^2*x[3]-0.7214*x[10]^2*x[1]+(-0.0578*x[1]^2*x[2]*x[4])-0.065*x[1]^2*x[2]*x[8]-0.3163*x[1]^2*x[2]*x[9]-0.3523*x[1]^2*x[3]*x[5]+0.4368*x[2]^2*x[1]*x[4]+0.136*x[2]^2*x[1]*x[8]-0.2862*x[2]^2*x[3]*x[5]-0.2376*x[2]^2*x[3]*x[8]+0.405*x[2]^2*x[3]*x[10]+0.9118*x[2]^2*x[4]*x[5]-0.3162*x[2]^2*x[4]*x[8]-0.3475*x[2]^2*x[5]*x[6]-0.4294*x[2]^2*x[6]*x[7]-0.3736*x[2]^2*x[6]*x[9]+0.7111*x[2]^2*x[6]*x[10]+0.0491*x[2]^2*x[7]*x[8]-0.2556*x[2]^2*x[8]*x[9]+0.5493*x[3]^2*x[1]*x[8]-0.3196*x[3]^2*x[2]*x[7]+0.8767*x[3]^2*x[2]*x[9]+0.6957*x[3]^2*x[4]*x[5]+0.3522*x[3]^2*x[4]*x[6]+0.7624*x[3]^2*x[4]*x[8]+0.9638*x[3]^2*x[5]*x[8]+0.6285*x[3]^2*x[5]*x[9]+0.2852*x[3]^2*x[7]*x[8]-0.0912*x[3]^2*x[7]*x[9]+0.5244*x[3]^2*x[7]*x[10]-0.4433*x[4]^2*x[1]*x[7]+0.2723*x[4]^2*x[2]*x[10]+0.8643*x[4]^2*x[3]*x[7]+0.4149*x[4]^2*x[6]*x[9]-0.1934*x[4]^2*x[7]*x[8]+0.4586*x[4]^2*x[7]*x[10]+0.7936*x[5]^2*x[1]*x[2]+0.44*x[5]^2*x[2]*x[8]+0.0537*x[5]^2*x[3]*x[4]+0.9057*x[5]^2*x[3]*x[8]+0.2219*x[6]^2*x[1]*x[4]+0.5611*x[6]^2*x[2]*x[3]+0.0892*x[6]^2*x[2]*x[4]-0.4042*x[6]^2*x[2]*x[7]-0.2545*x[6]^2*x[3]*x[8]+0.3459*x[6]^2*x[3]*x[9]+0.4686*x[6]^2*x[4]*x[7]-0.0997*x[6]^2*x[4]*x[8]+0.6297*x[6]^2*x[5]*x[8]+0.4851*x[6]^2*x[7]*x[9]+0.7524*x[7]^2*x[1]*x[5]+0.8464*x[7]^2*x[1]*x[6]+0.542*x[7]^2*x[2]*x[4]+0.1517*x[7]^2*x[3]*x[5]+0.5453*x[7]^2*x[3]*x[8]+0.9177*x[7]^2*x[3]*x[10]+0.5282*x[7]^2*x[4]*x[5]-0.4351*x[7]^2*x[4]*x[8]+0.2897*x[7]^2*x[4]*x[9]+0.3243*x[7]^2*x[5]*x[8]+0.0793*x[7]^2*x[5]*x[9]+0.9619*x[7]^2*x[6]*x[9]+0.0163*x[7]^2*x[6]*x[10]-0.361*x[7]^2*x[9]*x[10]-0.0225*x[8]^2*x[1]*x[2]-0.2829*x[8]^2*x[1]*x[7]+0.9494*x[8]^2*x[2]*x[5]-0.2117*x[8]^2*x[3]*x[5]+0.9043*x[8]^2*x[3]*x[7]-0.0887*x[8]^2*x[4]*x[5]+0.3801*x[8]^2*x[4]*x[10]-0.0389*x[8]^2*x[5]*x[9]+0.5831*x[8]^2*x[6]*x[9]+0.6105*x[9]^2*x[1]*x[2]+0.6636*x[9]^2*x[1]*x[3]+0.7583*x[9]^2*x[1]*x[5]+0.3605*x[9]^2*x[1]*x[8]+0.2796*x[9]^2*x[2]*x[4]+0.6335*x[9]^2*x[2]*x[8]+0.2962*x[9]^2*x[2]*x[10]+0.5939*x[9]^2*x[3]*x[4]-0.3166*x[9]^2*x[4]*x[5]+0.3135*x[9]^2*x[4]*x[6]+0.5234*x[9]^2*x[5]*x[6]-0.3*x[9]^2*x[6]*x[10]-0.3308*x[9]^2*x[7]*x[8]-0.1635*x[9]^2*x[8]*x[10]+0.8655*x[10]^2*x[1]*x[4]+0.3171*x[10]^2*x[1]*x[5]+0.344*x[10]^2*x[5]*x[6])+obj == 0.0)
@NLconstraint(m, e2, 0.8895*x[2]-0.4174*x[2]^4+(-0.9325*x[3]^2)-0.3716*x[3]+0.6481*x[8]-0.9935*x[8]^2+0.1888*x[9]^4-0.7281*x[9]+(-0.9005*x[1]*x[3])-0.9886*x[1]*x[6]-0.9975*x[1]*x[8]-0.8954*x[1]*x[9]-0.9165*x[2]*x[10]-0.9499*x[3]*x[4]-0.9045*x[3]*x[7]-0.9163*x[4]*x[6]-0.909*x[4]*x[7]-0.9826*x[4]*x[8]-0.9849*x[4]*x[9]-0.1963*x[1]+0.5279*x[4]-0.7688*x[6]-0.2478*x[7]+0.7784*x[10]+(-0.7663*x[1]*x[2]*x[3])-0.647*x[1]*x[2]*x[7]-0.6154*x[1]*x[2]*x[9]-0.537*x[1]*x[3]*x[5]-0.6066*x[1]*x[3]*x[9]-0.6145*x[1]*x[4]*x[5]-0.7252*x[1]*x[6]*x[7]-0.7131*x[1]*x[7]*x[8]-0.5798*x[2]*x[3]*x[5]-0.7574*x[2]*x[3]*x[8]-0.5864*x[2]*x[3]*x[9]-0.883*x[2]*x[5]*x[6]-0.4574*x[2]*x[5]*x[8]-0.7721*x[2]*x[6]*x[7]-0.6671*x[2]*x[6]*x[10]-0.5991*x[2]*x[7]*x[8]-0.5342*x[3]*x[4]*x[5]-0.6213*x[3]*x[4]*x[7]-0.4954*x[3]*x[5]*x[6]-0.6991*x[3]*x[5]*x[7]-0.6207*x[3]*x[5]*x[8]-0.7479*x[3]*x[5]*x[9]-0.613*x[3]*x[6]*x[7]-0.8613*x[3]*x[6]*x[9]-0.8752*x[3]*x[7]*x[8]-0.7041*x[3]*x[7]*x[9]-0.4534*x[4]*x[5]*x[7]-0.8511*x[4]*x[6]*x[9]-0.7302*x[4]*x[7]*x[8]-0.6917*x[4]*x[7]*x[9]-0.4649*x[4]*x[7]*x[10]-0.6451*x[4]*x[8]*x[9]-0.8783*x[5]*x[6]*x[7]-0.8187*x[5]*x[6]*x[8]-0.8459*x[5]*x[6]*x[9]-0.5788*x[5]*x[7]*x[9]-0.688*x[5]*x[9]*x[10]-0.5919*x[8]*x[9]*x[10]-0.627*x[5]+0.671*x[1]*x[2]*x[3]*x[6]+0.7997*x[1]*x[2]*x[3]*x[8]-0.3422*x[1]*x[2]*x[3]*x[9]+0.7352*x[1]*x[2]*x[4]*x[5]+0.8335*x[1]*x[2]*x[4]*x[6]+0.1038*x[1]*x[2]*x[4]*x[8]+0.0286*x[1]*x[2]*x[4]*x[9]+0.3594*x[1]*x[2]*x[5]*x[9]-0.2367*x[1]*x[2]*x[6]*x[7]-0.424*x[1]*x[2]*x[6]*x[8]-0.08*x[1]*x[2]*x[6]*x[9]+0.6274*x[1]*x[2]*x[8]*x[9]-0.2537*x[1]*x[3]*x[4]*x[5]+0.1721*x[1]*x[3]*x[5]*x[6]+0.2559*x[1]*x[3]*x[5]*x[10]-0.0542*x[1]*x[3]*x[6]*x[7]-0.2184*x[1]*x[3]*x[6]*x[8]-0.3289*x[1]*x[4]*x[5]*x[8]-0.1357*x[1]*x[4]*x[6]*x[8]+0.5407*x[1]*x[4]*x[6]*x[10]+0.8713*x[1]*x[5]*x[6]*x[8]+0.6411*x[1]*x[5]*x[7]*x[8]+0.9498*x[1]*x[5]*x[7]*x[9]+0.6622*x[1]*x[6]*x[8]*x[9]+0.6758*x[1]*x[6]*x[9]*x[10]+0.9601*x[1]*x[7]*x[8]*x[9]-0.2847*x[1]*x[8]*x[9]*x[10]+0.4854*x[2]*x[3]*x[4]*x[5]+0.8711*x[2]*x[3]*x[4]*x[6]-0.2644*x[2]*x[3]*x[4]*x[7]+0.5141*x[2]*x[3]*x[4]*x[8]+0.643*x[2]*x[3]*x[5]*x[6]-0.2945*x[2]*x[3]*x[5]*x[7]+0.1279*x[2]*x[3]*x[5]*x[8]-0.3088*x[2]*x[3]*x[5]*x[9]+0.5132*x[2]*x[3]*x[6]*x[7]+0.0216*x[2]*x[3]*x[6]*x[8]-0.2271*x[2]*x[3]*x[7]*x[8]+0.1575*x[2]*x[3]*x[7]*x[10]+0.9872*x[2]*x[3]*x[8]*x[10]+0.4264*x[2]*x[3]*x[9]*x[10]+0.5428*x[2]*x[4]*x[5]*x[7]+0.3148*x[2]*x[4]*x[5]*x[8]-0.1398*x[2]*x[4]*x[5]*x[9]+0.3085*x[2]*x[4]*x[6]*x[8]-0.3833*x[2]*x[4]*x[6]*x[9]+0.708*x[2]*x[4]*x[7]*x[9]-0.4099*x[2]*x[4]*x[7]*x[10]+0.3319*x[2]*x[4]*x[8]*x[9]-0.2744*x[2]*x[4]*x[8]*x[10]-0.1923*x[2]*x[5]*x[6]*x[7]+0.7136*x[2]*x[5]*x[6]*x[8]+0.251*x[2]*x[5]*x[7]*x[9]-0.3222*x[2]*x[5]*x[8]*x[9]+0.3336*x[2]*x[6]*x[7]*x[9]+0.3204*x[2]*x[6]*x[8]*x[9]+0.8604*x[2]*x[8]*x[9]*x[10]+0.0628*x[3]*x[4]*x[5]*x[6]+0.3846*x[3]*x[4]*x[5]*x[7]+0.4361*x[3]*x[4]*x[5]*x[8]+0.7607*x[3]*x[4]*x[6]*x[8]+0.5476*x[3]*x[4]*x[6]*x[10]+0.7646*x[3]*x[4]*x[7]*x[8]+0.1261*x[3]*x[4]*x[7]*x[9]-0.0086*x[3]*x[4]*x[7]*x[10]-0.054*x[3]*x[4]*x[8]*x[10]+0.2016*x[3]*x[5]*x[6]*x[7]+0.0472*x[3]*x[5]*x[6]*x[9]+0.1187*x[3]*x[5]*x[6]*x[10]+0.2011*x[3]*x[5]*x[7]*x[8]+0.6607*x[3]*x[5]*x[7]*x[9]+0.9798*x[3]*x[5]*x[7]*x[10]+0.4816*x[3]*x[5]*x[8]*x[9]+0.3243*x[3]*x[6]*x[7]*x[8]+0.0595*x[3]*x[6]*x[8]*x[10]+0.4197*x[3]*x[7]*x[8]*x[9]+0.3477*x[4]*x[5]*x[6]*x[7]+0.6217*x[4]*x[5]*x[6]*x[8]+0.5654*x[4]*x[5]*x[6]*x[9]+0.0963*x[4]*x[5]*x[7]*x[9]+0.0647*x[4]*x[6]*x[7]*x[9]+0.7492*x[4]*x[6]*x[8]*x[9]+0.8015*x[4]*x[6]*x[9]*x[10]+0.9646*x[4]*x[7]*x[9]*x[10]+0.3658*x[5]*x[6]*x[7]*x[8]-0.3719*x[5]*x[6]*x[7]*x[9]+0.4712*x[5]*x[6]*x[8]*x[9]+0.8199*x[5]*x[6]*x[9]*x[10]+0.4818*x[6]*x[7]*x[9]*x[10]+0.3074*x[3]^3*x[7]+0.9572*x[4]^3*x[2]-0.1405*x[4]^3*x[3]-0.438*x[4]^3*x[5]+0.9364*x[4]^3*x[10]+0.1156*x[7]^3*x[4]-0.4161*x[8]^3*x[2]+0.4015*x[8]^3*x[5]+0.2331*x[1]^2*x[3]^2+0.4761*x[5]^2*x[10]^2+0.1698*x[6]^2*x[8]^2+(-0.7244*x[2]^2*x[3])-0.4839*x[2]^2*x[9]-0.7356*x[3]^2*x[1]-0.4772*x[3]^2*x[4]-0.7315*x[3]^2*x[10]-0.8056*x[4]^2*x[5]-0.6409*x[4]^2*x[9]-0.6649*x[5]^2*x[3]-0.5655*x[5]^2*x[8]-0.7251*x[6]^2*x[1]-0.5188*x[6]^2*x[2]-0.822*x[9]^2*x[2]+0.136*x[1]^2*x[3]*x[6]+0.1988*x[2]^2*x[1]*x[3]+0.3054*x[2]^2*x[1]*x[4]-0.0251*x[2]^2*x[1]*x[5]-0.2602*x[2]^2*x[1]*x[6]-0.1506*x[2]^2*x[3]*x[7]-0.2757*x[2]^2*x[4]*x[5]+0.7624*x[2]^2*x[4]*x[7]+0.5814*x[2]^2*x[4]*x[8]+0.626*x[2]^2*x[5]*x[10]+0.0994*x[2]^2*x[6]*x[10]+0.6725*x[2]^2*x[8]*x[9]-0.295*x[3]^2*x[1]*x[4]-0.4248*x[3]^2*x[1]*x[8]+0.9763*x[3]^2*x[1]*x[9]-0.3602*x[3]^2*x[2]*x[5]+0.2342*x[3]^2*x[2]*x[7]-0.0685*x[3]^2*x[2]*x[8]-0.2319*x[3]^2*x[4]*x[7]+0.0008*x[3]^2*x[5]*x[8]+0.1987*x[3]^2*x[6]*x[7]-0.4286*x[3]^2*x[6]*x[9]+0.8813*x[3]^2*x[8]*x[9]+0.065*x[4]^2*x[1]*x[7]+0.4942*x[4]^2*x[1]*x[8]+0.784*x[4]^2*x[2]*x[6]+0.384*x[4]^2*x[2]*x[10]+0.198*x[4]^2*x[3]*x[6]-0.4371*x[4]^2*x[3]*x[7]+0.8182*x[4]^2*x[3]*x[10]-0.1826*x[4]^2*x[5]*x[6]+0.798*x[4]^2*x[6]*x[8]+0.948*x[4]^2*x[7]*x[9]-0.0307*x[4]^2*x[8]*x[9]+0.567*x[5]^2*x[2]*x[3]-0.0759*x[5]^2*x[2]*x[4]+0.6724*x[5]^2*x[2]*x[7]+0.349*x[5]^2*x[2]*x[8]-0.1269*x[5]^2*x[3]*x[4]+0.5686*x[5]^2*x[4]*x[6]+0.4337*x[5]^2*x[4]*x[7]-0.301*x[5]^2*x[4]*x[8]+0.7388*x[5]^2*x[6]*x[10]-0.3884*x[6]^2*x[1]*x[7]+0.3384*x[6]^2*x[2]*x[3]-0.3*x[6]^2*x[2]*x[5]+0.7917*x[6]^2*x[2]*x[8]+0.2655*x[6]^2*x[3]*x[4]+0.9214*x[6]^2*x[3]*x[5]-0.3468*x[6]^2*x[3]*x[7]+0.8798*x[6]^2*x[4]*x[8]-0.0733*x[6]^2*x[5]*x[10]+0.7137*x[6]^2*x[8]*x[9]+0.9344*x[7]^2*x[1]*x[10]+0.3917*x[7]^2*x[2]*x[3]+0.6923*x[7]^2*x[2]*x[4]+0.1668*x[7]^2*x[2]*x[6]+0.0597*x[7]^2*x[2]*x[9]+0.1237*x[7]^2*x[3]*x[4]-0.2818*x[7]^2*x[3]*x[5]+0.4042*x[7]^2*x[3]*x[8]-0.2593*x[7]^2*x[3]*x[9]+0.0516*x[7]^2*x[3]*x[10]+0.048*x[7]^2*x[5]*x[8]+0.4431*x[7]^2*x[5]*x[10]+0.8551*x[7]^2*x[8]*x[9]-0.1868*x[7]^2*x[9]*x[10]+0.6165*x[8]^2*x[2]*x[5]-0.1863*x[8]^2*x[3]*x[5]+0.5752*x[8]^2*x[4]*x[10]+0.3728*x[9]^2*x[2]*x[4]+0.0128*x[9]^2*x[3]*x[4]+0.644*x[9]^2*x[3]*x[5]-0.0461*x[9]^2*x[3]*x[6]+0.5827*x[9]^2*x[3]*x[8]+0.3888*x[9]^2*x[4]*x[7]+0.9193*x[9]^2*x[5]*x[8]+0.018*x[9]^2*x[6]*x[7]-0.0639*x[9]^2*x[7]*x[8]+0.4361*x[9]^2*x[7]*x[10]-0.057*x[10]^2*x[1]*x[5]-0.0587*x[10]^2*x[1]*x[9]+0.2547*x[10]^2*x[3]*x[5]+0.2254*x[10]^2*x[3]*x[7] <= 82.84)
@NLconstraint(m, e3, 0.8755*x[2]-0.4174*x[2]^4+0.4723*x[3]-0.9325*x[3]^2+0.8317*x[8]-0.9935*x[8]^2+0.1888*x[9]^4+0.9931*x[9]+(-0.9861*x[1]*x[4])-0.9152*x[2]*x[3]-0.933*x[2]*x[4]-0.9304*x[2]*x[5]-0.9333*x[2]*x[8]-0.9902*x[2]*x[9]-0.9085*x[3]*x[9]-0.9811*x[4]*x[6]-0.9034*x[5]*x[7]-0.9157*x[5]*x[8]-0.9025*x[7]*x[8]-0.9445*x[7]*x[9]+0.9265*x[1]-0.0353*x[4]-0.6448*x[5]-0.5335*x[6]-0.955*x[7]+(-0.5932*x[1]*x[2]*x[8])-0.7762*x[1]*x[2]*x[9]-0.621*x[1]*x[4]*x[5]-0.7229*x[1]*x[4]*x[7]-0.6398*x[1]*x[4]*x[8]-0.8776*x[1]*x[4]*x[9]-0.453*x[1]*x[5]*x[7]-0.6487*x[1]*x[5]*x[10]-0.7488*x[1]*x[6]*x[7]-0.4681*x[2]*x[3]*x[8]-0.5513*x[2]*x[3]*x[10]-0.6971*x[2]*x[4]*x[6]-0.7653*x[2]*x[4]*x[8]-0.7771*x[2]*x[4]*x[9]-0.4759*x[2]*x[4]*x[10]-0.6663*x[2]*x[5]*x[6]-0.4976*x[2]*x[5]*x[8]-0.6368*x[2]*x[5]*x[9]-0.4458*x[2]*x[6]*x[10]-0.5726*x[3]*x[4]*x[8]-0.8621*x[3]*x[4]*x[9]-0.8406*x[3]*x[5]*x[7]-0.5072*x[3]*x[5]*x[8]-0.4823*x[3]*x[5]*x[9]-0.6738*x[3]*x[5]*x[10]-0.5612*x[3]*x[6]*x[7]-0.7743*x[3]*x[6]*x[8]-0.7245*x[3]*x[9]*x[10]-0.6926*x[4]*x[5]*x[8]-0.4542*x[4]*x[5]*x[9]-0.8154*x[4]*x[5]*x[10]-0.8149*x[4]*x[6]*x[9]-0.8716*x[4]*x[7]*x[8]-0.6979*x[4]*x[7]*x[10]-0.6636*x[5]*x[6]*x[9]-0.7165*x[5]*x[7]*x[9]-0.4837*x[5]*x[8]*x[9]-0.4454*x[5]*x[8]*x[10]-0.6954*x[6]*x[7]*x[8]-0.6308*x[6]*x[9]*x[10]-0.7438*x[7]*x[8]*x[9]-0.6493*x[7]*x[8]*x[10]+0.875*x[10]+0.0167*x[1]*x[2]*x[3]*x[4]+0.5059*x[1]*x[2]*x[3]*x[7]-0.1664*x[1]*x[2]*x[3]*x[9]+0.3889*x[1]*x[2]*x[5]*x[6]+0.9137*x[1]*x[2]*x[5]*x[8]+0.3937*x[1]*x[2]*x[5]*x[9]-0.2146*x[1]*x[2]*x[9]*x[10]+0.5252*x[1]*x[3]*x[4]*x[7]+0.6273*x[1]*x[3]*x[4]*x[8]-0.1691*x[1]*x[3]*x[4]*x[9]+0.4277*x[1]*x[3]*x[6]*x[10]-0.3485*x[1]*x[3]*x[7]*x[10]+0.4109*x[1]*x[3]*x[8]*x[10]+0.3214*x[1]*x[3]*x[9]*x[10]+0.4942*x[1]*x[4]*x[6]*x[7]-0.0852*x[1]*x[4]*x[6]*x[8]+0.1538*x[1]*x[4]*x[7]*x[9]+0.2669*x[1]*x[5]*x[6]*x[8]-0.2856*x[1]*x[5]*x[6]*x[9]+0.0784*x[1]*x[5]*x[6]*x[10]+0.5906*x[1]*x[5]*x[7]*x[8]-0.0808*x[1]*x[5]*x[9]*x[10]+0.6738*x[1]*x[6]*x[8]*x[9]+0.0388*x[1]*x[7]*x[8]*x[9]+0.2976*x[2]*x[3]*x[4]*x[5]+0.0226*x[2]*x[3]*x[4]*x[8]+0.1701*x[2]*x[3]*x[5]*x[8]+0.3055*x[2]*x[3]*x[5]*x[9]-0.2477*x[2]*x[3]*x[6]*x[7]+0.7605*x[2]*x[3]*x[6]*x[9]+0.1714*x[2]*x[3]*x[7]*x[8]+0.7081*x[2]*x[3]*x[7]*x[9]+0.062*x[2]*x[3]*x[8]*x[9]+0.6376*x[2]*x[4]*x[5]*x[7]-0.0588*x[2]*x[4]*x[6]*x[7]-0.0375*x[2]*x[4]*x[6]*x[10]+0.4183*x[2]*x[4]*x[7]*x[8]-0.4224*x[2]*x[4]*x[7]*x[9]+0.5008*x[2]*x[4]*x[8]*x[9]-0.0852*x[2]*x[5]*x[6]*x[7]+0.1265*x[2]*x[5]*x[6]*x[8]-0.0118*x[2]*x[5]*x[6]*x[9]+0.5844*x[2]*x[5]*x[6]*x[10]+0.222*x[2]*x[5]*x[7]*x[9]+0.3263*x[2]*x[5]*x[7]*x[10]+0.7031*x[2]*x[5]*x[8]*x[9]+0.461*x[2]*x[5]*x[9]*x[10]+0.7378*x[2]*x[6]*x[7]*x[8]+0.9595*x[2]*x[6]*x[8]*x[9]-0.0152*x[2]*x[6]*x[8]*x[10]-0.1416*x[2]*x[8]*x[9]*x[10]+0.0857*x[3]*x[4]*x[5]*x[8]-0.1719*x[3]*x[4]*x[5]*x[10]-0.1827*x[3]*x[4]*x[6]*x[7]+0.7861*x[3]*x[4]*x[6]*x[9]+0.4885*x[3]*x[4]*x[7]*x[8]+0.6822*x[3]*x[4]*x[7]*x[9]+0.4817*x[3]*x[4]*x[8]*x[10]-0.0736*x[3]*x[5]*x[6]*x[8]+0.209*x[3]*x[5]*x[6]*x[9]-0.1127*x[3]*x[5]*x[7]*x[8]+0.1423*x[3]*x[5]*x[7]*x[9]-0.3679*x[3]*x[5]*x[8]*x[9]+0.7426*x[3]*x[5]*x[8]*x[10]+0.9677*x[3]*x[6]*x[7]*x[9]+0.0124*x[3]*x[6]*x[7]*x[10]-0.3086*x[3]*x[6]*x[8]*x[10]-0.1642*x[3]*x[7]*x[8]*x[9]+0.1446*x[3]*x[7]*x[8]*x[10]+0.6522*x[4]*x[5]*x[6]*x[7]+0.011*x[4]*x[5]*x[6]*x[10]+0.7637*x[4]*x[5]*x[7]*x[9]+0.0393*x[4]*x[5]*x[8]*x[9]+0.0067*x[4]*x[6]*x[7]*x[10]-0.0709*x[4]*x[6]*x[8]*x[9]+0.7142*x[4]*x[6]*x[9]*x[10]+0.1705*x[4]*x[7]*x[8]*x[9]+0.6781*x[4]*x[7]*x[9]*x[10]+0.5215*x[5]*x[6]*x[7]*x[8]+0.2725*x[5]*x[6]*x[8]*x[9]+0.2314*x[5]*x[6]*x[9]*x[10]-0.1062*x[5]*x[8]*x[9]*x[10]+0.0378*x[6]*x[7]*x[8]*x[9]+0.3063*x[6]*x[7]*x[9]*x[10]+0.037*x[7]*x[8]*x[9]*x[10]+0.9334*x[3]^3*x[1]+0.3204*x[3]^3*x[8]+0.3242*x[4]^3*x[9]+0.4451*x[5]^3*x[2]-0.2456*x[5]^3*x[3]+0.9907*x[8]^3*x[2]+0.7148*x[8]^3*x[5]+0.2717*x[2]^2*x[3]^2-0.1072*x[1]^2*x[6]^2+0.7902*x[2]^2*x[7]^2+0.7759*x[4]^2*x[6]^2+0.6461*x[5]^2*x[7]^2-0.259*x[5]^2*x[9]^2-0.3733*x[7]^2*x[8]^2+(-0.826*x[2]^2*x[8])-0.463*x[4]^2*x[3]-0.5849*x[5]^2*x[4]-0.7699*x[6]^2*x[3]-0.6542*x[6]^2*x[7]-0.5367*x[6]^2*x[8]-0.514*x[7]^2*x[1]-0.5233*x[7]^2*x[2]-0.733*x[7]^2*x[5]-0.6898*x[7]^2*x[9]-0.5739*x[8]^2*x[4]-0.8654*x[8]^2*x[6]-0.5801*x[8]^2*x[7]-0.6492*x[9]^2*x[1]+0.0777*x[1]^2*x[4]*x[5]-0.1963*x[1]^2*x[3]*x[7]-0.3899*x[1]^2*x[4]*x[8]+0.6829*x[1]^2*x[4]*x[9]+0.3678*x[1]^2*x[5]*x[9]+0.017*x[1]^2*x[6]*x[8]+0.0453*x[2]^2*x[1]*x[7]-0.0737*x[2]^2*x[3]*x[5]+0.5132*x[2]^2*x[3]*x[6]+0.666*x[2]^2*x[3]*x[9]+0.9104*x[2]^2*x[4]*x[5]+0.5323*x[2]^2*x[5]*x[7]+0.0333*x[2]^2*x[5]*x[8]+0.0708*x[2]^2*x[6]*x[7]+0.9438*x[3]^2*x[2]*x[6]+0.3021*x[3]^2*x[2]*x[7]+0.6761*x[3]^2*x[2]*x[8]+0.9954*x[3]^2*x[2]*x[9]+0.2692*x[3]^2*x[2]*x[10]+0.4609*x[3]^2*x[4]*x[7]+0.1746*x[3]^2*x[5]*x[6]+0.2234*x[3]^2*x[5]*x[9]-0.0707*x[3]^2*x[6]*x[10]+0.1242*x[3]^2*x[7]*x[9]+0.2779*x[3]^2*x[8]*x[9]-0.0908*x[3]^2*x[9]*x[10]+0.4308*x[4]^2*x[1]*x[8]+0.4664*x[4]^2*x[2]*x[5]-0.0492*x[4]^2*x[2]*x[7]-0.4204*x[4]^2*x[3]*x[5]+0.2334*x[4]^2*x[3]*x[10]-0.0524*x[4]^2*x[9]*x[10]+0.4009*x[5]^2*x[1]*x[9]-0.1402*x[5]^2*x[2]*x[4]-0.4011*x[5]^2*x[2]*x[7]+0.1894*x[5]^2*x[3]*x[6]-0.0038*x[5]^2*x[4]*x[6]+0.4551*x[5]^2*x[4]*x[7]+0.3643*x[5]^2*x[6]*x[7]-0.2488*x[5]^2*x[6]*x[9]+0.6688*x[6]^2*x[1]*x[2]+0.6433*x[6]^2*x[1]*x[7]+0.4238*x[6]^2*x[1]*x[10]+0.413*x[6]^2*x[2]*x[3]+0.8054*x[6]^2*x[2]*x[7]-0.2571*x[6]^2*x[2]*x[8]+0.1122*x[6]^2*x[2]*x[9]+0.5006*x[6]^2*x[3]*x[9]+0.4449*x[6]^2*x[4]*x[5]-0.3368*x[6]^2*x[4]*x[7]-0.3231*x[6]^2*x[4]*x[8]+0.1217*x[6]^2*x[4]*x[9]+0.8368*x[6]^2*x[5]*x[7]+0.9052*x[6]^2*x[5]*x[8]-0.0583*x[6]^2*x[7]*x[8]+0.7359*x[6]^2*x[8]*x[10]+0.9011*x[7]^2*x[1]*x[4]-0.2245*x[7]^2*x[1]*x[5]+0.6302*x[7]^2*x[2]*x[5]-0.2272*x[7]^2*x[2]*x[6]+0.5012*x[7]^2*x[2]*x[9]+0.547*x[7]^2*x[4]*x[5]+0.545*x[7]^2*x[4]*x[6]+0.5069*x[7]^2*x[5]*x[9]+0.9962*x[7]^2*x[6]*x[9]+0.0216*x[8]^2*x[1]*x[4]-0.1585*x[8]^2*x[2]*x[5]-0.3316*x[8]^2*x[3]*x[7]+0.8619*x[8]^2*x[3]*x[9]-0.3629*x[8]^2*x[7]*x[9]-0.4132*x[9]^2*x[1]*x[10]+0.625*x[9]^2*x[3]*x[6]-0.0982*x[9]^2*x[3]*x[7]+0.4326*x[9]^2*x[3]*x[10]+0.4653*x[9]^2*x[4]*x[5]+0.0753*x[9]^2*x[4]*x[8]-0.4325*x[9]^2*x[5]*x[8]+0.4969*x[9]^2*x[6]*x[7]+0.5785*x[9]^2*x[7]*x[8]-0.1594*x[9]^2*x[8]*x[10] <= 73.043)

m = m 		 # model get returned when including this script. 
