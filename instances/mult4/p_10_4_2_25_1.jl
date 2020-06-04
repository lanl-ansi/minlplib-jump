using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
@variable(m, 0 <= x[x_Idx] <= 1)
@variable(m, obj)

# ----- Objective ----- #
@objective(m, Min, obj)

# ----- Constraints ----- #
@NLconstraint(m, e1, -(-0.9653*x[4]^2-0.7895*x[4]+0.152*x[10]-0.9605*x[10]^2+(-0.9037*x[2]*x[3])-0.8906*x[2]*x[5]-0.9552*x[2]*x[7]-0.9096*x[2]*x[8]-0.9917*x[3]*x[5]-0.8937*x[3]*x[7]-0.9742*x[3]*x[8]-0.9745*x[3]*x[9]-0.9637*x[4]*x[6]-0.904*x[5]*x[8]-0.9599*x[5]*x[10]-0.9064*x[7]*x[9]-0.8912*x[9]*x[10]-0.1837*x[2]-0.7994*x[3]+0.146*x[5]-0.5227*x[6]+0.3006*x[7]+0.8038*x[8]-0.0596*x[9]+(-0.5166*x[1]*x[2]*x[3])-0.7626*x[1]*x[3]*x[5]-0.6255*x[1]*x[3]*x[10]-0.5833*x[1]*x[5]*x[6]-0.7344*x[1]*x[6]*x[8]-0.6056*x[1]*x[6]*x[10]-0.8244*x[1]*x[7]*x[8]-0.7989*x[2]*x[3]*x[5]-0.8262*x[2]*x[3]*x[9]-0.4824*x[2]*x[4]*x[6]-0.7254*x[2]*x[4]*x[7]-0.5641*x[2]*x[4]*x[9]-0.4451*x[2]*x[4]*x[10]-0.6809*x[2]*x[5]*x[6]-0.8836*x[2]*x[5]*x[7]-0.5151*x[2]*x[5]*x[8]-0.7943*x[2]*x[5]*x[10]-0.457*x[2]*x[6]*x[8]-0.6027*x[2]*x[6]*x[9]-0.5569*x[2]*x[7]*x[10]-0.4784*x[3]*x[5]*x[7]-0.4622*x[3]*x[5]*x[10]-0.8237*x[3]*x[8]*x[9]-0.5025*x[3]*x[8]*x[10]-0.5301*x[4]*x[5]*x[7]-0.6195*x[4]*x[6]*x[8]-0.4609*x[4]*x[6]*x[9]-0.4872*x[4]*x[7]*x[9]-0.7567*x[5]*x[6]*x[7]-0.6373*x[5]*x[6]*x[8]-0.8449*x[5]*x[6]*x[9]-0.7406*x[5]*x[7]*x[8]-0.497*x[5]*x[7]*x[10]-0.5229*x[6]*x[7]*x[9]-0.5705*x[6]*x[7]*x[10]-0.7672*x[6]*x[8]*x[10]-0.7684*x[7]*x[8]*x[10]+0.1976*x[1]+0.8655*x[1]*x[2]*x[3]*x[5]+0.7333*x[1]*x[2]*x[3]*x[7]+0.5147*x[1]*x[2]*x[5]*x[6]+0.7005*x[1]*x[2]*x[5]*x[9]-0.2043*x[1]*x[2]*x[7]*x[10]+0.6082*x[1]*x[2]*x[9]*x[10]-0.0776*x[1]*x[3]*x[4]*x[8]+0.8262*x[1]*x[3]*x[5]*x[8]-0.3273*x[1]*x[3]*x[5]*x[10]+0.2573*x[1]*x[3]*x[6]*x[7]+0.9815*x[1]*x[3]*x[7]*x[8]+0.6011*x[1]*x[3]*x[7]*x[9]-0.3714*x[1]*x[3]*x[9]*x[10]-0.4014*x[1]*x[4]*x[5]*x[8]+0.0723*x[1]*x[4]*x[5]*x[9]+0.5489*x[1]*x[4]*x[6]*x[8]+0.0985*x[1]*x[4]*x[7]*x[8]+0.9986*x[1]*x[4]*x[7]*x[9]+0.5074*x[1]*x[6]*x[7]*x[8]-0.3969*x[1]*x[7]*x[8]*x[9]-0.0228*x[2]*x[3]*x[4]*x[5]+0.416*x[2]*x[3]*x[4]*x[6]-0.4368*x[2]*x[3]*x[4]*x[8]+0.8635*x[2]*x[3]*x[4]*x[9]+0.9994*x[2]*x[3]*x[5]*x[7]+0.2128*x[2]*x[3]*x[5]*x[8]-0.0285*x[2]*x[3]*x[5]*x[9]+0.2252*x[2]*x[3]*x[7]*x[8]+0.9356*x[2]*x[3]*x[8]*x[9]+0.1968*x[2]*x[4]*x[5]*x[7]-0.3442*x[2]*x[4]*x[6]*x[7]+0.1189*x[2]*x[4]*x[6]*x[8]+0.5472*x[2]*x[4]*x[6]*x[10]+0.8573*x[2]*x[4]*x[7]*x[8]+0.0082*x[2]*x[4]*x[8]*x[9]-0.4053*x[2]*x[4]*x[8]*x[10]+0.4417*x[2]*x[4]*x[9]*x[10]-0.0061*x[2]*x[5]*x[7]*x[8]+0.332*x[2]*x[5]*x[8]*x[10]+0.0629*x[2]*x[5]*x[9]*x[10]+0.1697*x[2]*x[6]*x[7]*x[10]+0.0864*x[2]*x[7]*x[8]*x[9]+0.0753*x[3]*x[4]*x[5]*x[7]+0.401*x[3]*x[4]*x[5]*x[9]+0.61*x[3]*x[4]*x[7]*x[8]+0.9676*x[3]*x[4]*x[7]*x[9]+0.312*x[3]*x[4]*x[7]*x[10]+0.7244*x[3]*x[4]*x[8]*x[9]-0.1674*x[3]*x[4]*x[8]*x[10]-0.2081*x[3]*x[5]*x[6]*x[7]+0.6691*x[3]*x[5]*x[6]*x[8]+0.4003*x[3]*x[5]*x[6]*x[9]+0.6908*x[3]*x[5]*x[7]*x[8]+0.5194*x[3]*x[5]*x[7]*x[9]-0.354*x[3]*x[5]*x[9]*x[10]+0.6437*x[3]*x[6]*x[7]*x[8]-0.1922*x[3]*x[6]*x[7]*x[9]-0.0178*x[3]*x[6]*x[8]*x[9]+0.2233*x[3]*x[6]*x[9]*x[10]+0.3273*x[3]*x[7]*x[8]*x[9]+0.159*x[3]*x[7]*x[9]*x[10]+0.2954*x[3]*x[8]*x[9]*x[10]-0.0382*x[4]*x[5]*x[7]*x[8]+0.8874*x[4]*x[5]*x[7]*x[10]-0.1092*x[4]*x[5]*x[8]*x[9]-0.3874*x[4]*x[6]*x[7]*x[8]+0.1748*x[4]*x[6]*x[7]*x[9]-0.0323*x[4]*x[6]*x[7]*x[10]+0.1963*x[4]*x[6]*x[8]*x[9]+0.9951*x[4]*x[6]*x[8]*x[10]+0.5175*x[4]*x[7]*x[8]*x[9]+0.1377*x[4]*x[7]*x[8]*x[10]+0.0874*x[4]*x[7]*x[9]*x[10]+0.0341*x[4]*x[8]*x[9]*x[10]-0.3248*x[5]*x[6]*x[7]*x[8]+0.3028*x[5]*x[6]*x[7]*x[9]+0.6679*x[5]*x[6]*x[8]*x[9]+0.9555*x[5]*x[7]*x[8]*x[9]+0.4931*x[6]*x[7]*x[8]*x[9]+0.2014*x[6]*x[7]*x[9]*x[10]+0.5619*x[7]*x[8]*x[9]*x[10]+0.9871*x[3]^3*x[2]-0.067*x[3]^3*x[9]+0.2399*x[4]^3*x[8]-0.3769*x[6]^3*x[5]-0.109*x[7]^3*x[1]+0.3249*x[8]^3*x[6]-0.3466*x[8]^3*x[7]-0.0957*x[10]^3*x[4]+0.7412*x[1]^2*x[9]^2+0.3672*x[3]^2*x[5]^2+0.1595*x[3]^2*x[9]^2+0.9805*x[4]^2*x[9]^2+(-0.5881*x[1]^2*x[3])-0.7085*x[5]^2*x[4]-0.4864*x[6]^2*x[7]-0.8255*x[7]^2*x[4]-0.6505*x[7]^2*x[9]-0.5516*x[8]^2*x[3]-0.5651*x[8]^2*x[6]-0.7484*x[10]^2*x[5]-0.6986*x[10]^2*x[7]+0.0896*x[2]^2*x[1]*x[6]-0.415*x[1]^2*x[5]*x[8]+0.3299*x[2]^2*x[3]*x[6]+0.0562*x[2]^2*x[3]*x[8]+0.753*x[2]^2*x[4]*x[7]+0.152*x[2]^2*x[4]*x[8]+0.1172*x[2]^2*x[5]*x[6]-0.2095*x[2]^2*x[5]*x[7]+0.6435*x[2]^2*x[5]*x[10]+0.2668*x[2]^2*x[6]*x[8]+0.1948*x[2]^2*x[6]*x[9]+0.8051*x[2]^2*x[7]*x[8]+0.4492*x[2]^2*x[8]*x[10]+0.7822*x[2]^2*x[9]*x[10]+0.9221*x[3]^2*x[2]*x[5]-0.1502*x[3]^2*x[2]*x[7]+0.0931*x[3]^2*x[4]*x[5]+0.5684*x[3]^2*x[4]*x[6]+0.5162*x[3]^2*x[4]*x[7]+0.6633*x[3]^2*x[4]*x[8]+0.6905*x[3]^2*x[4]*x[9]-0.0037*x[3]^2*x[5]*x[7]+0.0097*x[3]^2*x[6]*x[10]+0.5746*x[3]^2*x[7]*x[8]+0.9973*x[3]^2*x[7]*x[9]+0.4525*x[3]^2*x[8]*x[9]+0.0692*x[3]^2*x[8]*x[10]-0.0387*x[4]^2*x[1]*x[2]+0.6525*x[4]^2*x[2]*x[3]+0.8739*x[4]^2*x[2]*x[7]+0.7708*x[4]^2*x[3]*x[5]+0.7715*x[4]^2*x[3]*x[6]-0.1086*x[4]^2*x[3]*x[8]+0.7557*x[4]^2*x[5]*x[9]+0.9569*x[4]^2*x[7]*x[9]+0.4594*x[4]^2*x[8]*x[10]-0.0143*x[5]^2*x[1]*x[3]+0.7126*x[5]^2*x[1]*x[6]+0.9219*x[5]^2*x[1]*x[7]-0.2405*x[5]^2*x[1]*x[8]+0.2716*x[5]^2*x[2]*x[3]-0.1172*x[5]^2*x[2]*x[4]-0.1282*x[5]^2*x[3]*x[7]+0.366*x[5]^2*x[3]*x[9]+0.4623*x[5]^2*x[4]*x[6]-0.1788*x[5]^2*x[4]*x[8]-0.3418*x[5]^2*x[7]*x[9]+0.2972*x[6]^2*x[2]*x[4]+0.412*x[6]^2*x[2]*x[9]+0.6151*x[6]^2*x[3]*x[5]-0.3371*x[6]^2*x[5]*x[10]+0.0648*x[6]^2*x[7]*x[8]-0.1766*x[7]^2*x[1]*x[2]+0.4957*x[7]^2*x[1]*x[5]+0.3384*x[7]^2*x[1]*x[9]+0.7257*x[7]^2*x[2]*x[4]-0.3899*x[7]^2*x[2]*x[10]-0.1745*x[7]^2*x[3]*x[5]-0.4374*x[7]^2*x[3]*x[8]-0.2863*x[7]^2*x[4]*x[5]+0.4888*x[7]^2*x[4]*x[10]+0.3775*x[7]^2*x[5]*x[9]+0.6708*x[7]^2*x[6]*x[8]+0.5109*x[7]^2*x[6]*x[9]+0.9211*x[7]^2*x[8]*x[9]+0.4163*x[7]^2*x[9]*x[10]+0.0735*x[8]^2*x[1]*x[2]+0.3456*x[8]^2*x[1]*x[3]-0.1075*x[8]^2*x[3]*x[7]+0.3767*x[8]^2*x[4]*x[5]+0.5014*x[8]^2*x[4]*x[7]+0.5998*x[8]^2*x[5]*x[10]+0.4593*x[8]^2*x[6]*x[7]+0.468*x[8]^2*x[7]*x[10]+0.7865*x[9]^2*x[2]*x[3]+0.2284*x[9]^2*x[2]*x[5]+0.0579*x[9]^2*x[2]*x[7]+0.1639*x[9]^2*x[2]*x[8]-0.049*x[9]^2*x[3]*x[4]+0.617*x[9]^2*x[3]*x[7]-0.043*x[9]^2*x[4]*x[8]-0.2821*x[9]^2*x[5]*x[6]-0.2916*x[9]^2*x[5]*x[8]+0.7456*x[9]^2*x[6]*x[8]+0.7398*x[9]^2*x[7]*x[8]+0.9495*x[10]^2*x[2]*x[4]+0.0878*x[10]^2*x[2]*x[5]+0.9958*x[10]^2*x[2]*x[8]-0.2293*x[10]^2*x[3]*x[5]-0.4008*x[10]^2*x[3]*x[7]+0.8756*x[10]^2*x[3]*x[9]-0.3313*x[10]^2*x[7]*x[8])+obj == 0.0)
@NLconstraint(m, e2, 0.2967*x[4]-0.9653*x[4]^2+(-0.9605*x[10]^2)-0.2396*x[10]+(-0.9986*x[1]*x[3])-0.933*x[1]*x[10]-0.9023*x[2]*x[4]-0.9627*x[2]*x[5]-0.9197*x[2]*x[7]-0.9423*x[3]*x[5]-0.9415*x[3]*x[8]-0.9752*x[3]*x[9]-0.8913*x[4]*x[7]-0.9699*x[4]*x[8]-0.9079*x[4]*x[9]-0.9392*x[5]*x[9]-0.98*x[5]*x[10]-0.9931*x[6]*x[8]-0.9803*x[6]*x[10]-0.9466*x[8]*x[10]-0.4814*x[1]-0.8928*x[2]+0.8237*x[3]+0.519*x[5]-0.4036*x[6]+0.2184*x[7]+0.5597*x[8]-0.6636*x[9]+(-0.8075*x[1]*x[2]*x[3])-0.8687*x[1]*x[2]*x[7]-0.8219*x[1]*x[4]*x[7]-0.8771*x[1]*x[5]*x[6]-0.5576*x[1]*x[6]*x[8]-0.4773*x[1]*x[8]*x[9]-0.5799*x[1]*x[8]*x[10]-0.6065*x[2]*x[3]*x[6]-0.5016*x[2]*x[3]*x[7]-0.776*x[2]*x[4]*x[5]-0.6747*x[2]*x[4]*x[7]-0.5281*x[2]*x[5]*x[6]-0.6058*x[2]*x[5]*x[8]-0.8498*x[2]*x[5]*x[9]-0.7244*x[2]*x[6]*x[8]-0.8096*x[2]*x[6]*x[9]-0.5768*x[2]*x[7]*x[9]-0.6774*x[2]*x[7]*x[10]-0.8026*x[2]*x[8]*x[10]-0.6769*x[3]*x[4]*x[6]-0.5906*x[3]*x[5]*x[8]-0.7753*x[3]*x[6]*x[8]-0.8348*x[3]*x[6]*x[9]-0.7938*x[3]*x[6]*x[10]-0.5796*x[3]*x[7]*x[8]-0.4809*x[3]*x[7]*x[10]-0.7789*x[4]*x[5]*x[8]-0.589*x[4]*x[5]*x[9]-0.875*x[4]*x[6]*x[8]-0.7219*x[4]*x[6]*x[9]-0.4484*x[4]*x[6]*x[10]-0.6343*x[4]*x[7]*x[9]-0.7663*x[4]*x[9]*x[10]-0.4473*x[5]*x[6]*x[7]-0.6663*x[5]*x[6]*x[8]-0.6953*x[5]*x[8]*x[10]-0.6238*x[6]*x[7]*x[10]-0.4884*x[7]*x[8]*x[9]-0.7073*x[7]*x[8]*x[10]+0.194*x[1]*x[2]*x[3]*x[4]-0.3725*x[1]*x[2]*x[4]*x[9]+0.4455*x[1]*x[2]*x[4]*x[10]+0.8807*x[1]*x[2]*x[5]*x[6]+0.9451*x[1]*x[2]*x[5]*x[7]-0.0792*x[1]*x[2]*x[5]*x[9]+0.3674*x[1]*x[2]*x[5]*x[10]-0.1371*x[1]*x[2]*x[6]*x[8]-0.2066*x[1]*x[3]*x[4]*x[5]+0.2013*x[1]*x[3]*x[4]*x[9]-0.3738*x[1]*x[3]*x[5]*x[7]-0.1981*x[1]*x[3]*x[5]*x[8]-0.0968*x[1]*x[3]*x[7]*x[10]+0.2514*x[1]*x[4]*x[5]*x[6]+0.9985*x[1]*x[4]*x[5]*x[10]+0.7743*x[1]*x[4]*x[6]*x[7]+0.5376*x[1]*x[4]*x[6]*x[8]-0.2339*x[1]*x[4]*x[9]*x[10]+0.6813*x[1]*x[5]*x[6]*x[7]+0.0265*x[1]*x[5]*x[7]*x[10]+0.0573*x[1]*x[5]*x[9]*x[10]-0.1364*x[1]*x[6]*x[7]*x[8]-0.0421*x[1]*x[6]*x[7]*x[10]-0.1853*x[1]*x[6]*x[8]*x[10]-0.2421*x[1]*x[6]*x[9]*x[10]-0.0821*x[1]*x[7]*x[8]*x[9]+0.4074*x[2]*x[3]*x[4]*x[7]-0.1863*x[2]*x[3]*x[4]*x[8]+0.9897*x[2]*x[3]*x[5]*x[7]+0.3626*x[2]*x[3]*x[5]*x[8]+0.8495*x[2]*x[3]*x[6]*x[8]+0.3515*x[2]*x[3]*x[6]*x[9]-0.343*x[2]*x[3]*x[8]*x[9]-0.4103*x[2]*x[4]*x[5]*x[6]+0.7398*x[2]*x[4]*x[5]*x[7]+0.0858*x[2]*x[4]*x[5]*x[10]+0.6472*x[2]*x[4]*x[6]*x[8]+0.9858*x[2]*x[4]*x[6]*x[9]+0.3379*x[2]*x[4]*x[6]*x[10]+0.8706*x[2]*x[4]*x[7]*x[8]+0.1761*x[2]*x[4]*x[7]*x[9]+0.8514*x[2]*x[4]*x[8]*x[9]+0.7902*x[2]*x[4]*x[8]*x[10]+0.3771*x[2]*x[5]*x[6]*x[8]+0.7882*x[2]*x[5]*x[7]*x[8]+0.8925*x[2]*x[5]*x[7]*x[9]+0.4072*x[2]*x[5]*x[7]*x[10]-0.0966*x[2]*x[5]*x[8]*x[9]+0.802*x[2]*x[6]*x[7]*x[9]+0.9238*x[2]*x[7]*x[8]*x[9]+0.9428*x[2]*x[8]*x[9]*x[10]-0.2179*x[3]*x[4]*x[5]*x[7]+0.4292*x[3]*x[4]*x[5]*x[10]+0.498*x[3]*x[4]*x[6]*x[7]+0.4713*x[3]*x[4]*x[6]*x[8]+0.4567*x[3]*x[4]*x[6]*x[9]+0.9387*x[3]*x[4]*x[7]*x[8]+0.5045*x[3]*x[4]*x[8]*x[9]+0.3058*x[3]*x[5]*x[6]*x[7]-0.429*x[3]*x[5]*x[6]*x[8]-0.0524*x[3]*x[5]*x[6]*x[9]+0.5178*x[3]*x[5]*x[6]*x[10]+0.3458*x[3]*x[5]*x[8]*x[9]+0.3056*x[3]*x[6]*x[7]*x[8]+0.7091*x[3]*x[6]*x[8]*x[9]+0.3826*x[3]*x[7]*x[8]*x[9]-0.116*x[3]*x[7]*x[9]*x[10]-0.1986*x[4]*x[5]*x[6]*x[7]+0.0481*x[4]*x[5]*x[6]*x[8]+0.3207*x[4]*x[5]*x[6]*x[9]+0.2734*x[4]*x[5]*x[6]*x[10]+0.828*x[4]*x[5]*x[7]*x[8]+0.2824*x[4]*x[5]*x[7]*x[9]+0.2922*x[4]*x[5]*x[9]*x[10]-0.165*x[4]*x[6]*x[8]*x[9]+0.8133*x[5]*x[6]*x[7]*x[10]+0.4154*x[5]*x[6]*x[8]*x[10]+0.9223*x[5]*x[7]*x[8]*x[9]+0.7382*x[5]*x[7]*x[9]*x[10]+0.9241*x[7]*x[8]*x[9]*x[10]+0.296*x[4]^3*x[9]-0.3721*x[5]^3*x[7]+0.1892*x[7]^3*x[2]+0.1484*x[7]^3*x[4]+0.0488*x[7]^3*x[6]-0.2722*x[7]^3*x[8]-0.0028*x[8]^3*x[4]+0.8733*x[9]^3*x[4]+0.6607*x[2]^2*x[4]^2-0.1357*x[1]^2*x[7]^2-0.0134*x[2]^2*x[6]^2+0.3194*x[3]^2*x[7]^2+0.1024*x[4]^2*x[6]^2+0.7938*x[4]^2*x[8]^2+0.4384*x[5]^2*x[9]^2-0.164*x[6]^2*x[7]^2+(-0.8782*x[2]^2*x[3])-0.4663*x[2]^2*x[4]-0.8383*x[2]^2*x[6]-0.7224*x[3]^2*x[2]-0.6075*x[3]^2*x[5]-0.6452*x[3]^2*x[9]-0.6234*x[4]^2*x[3]-0.7535*x[4]^2*x[5]-0.7344*x[6]^2*x[3]-0.4616*x[6]^2*x[7]-0.8696*x[7]^2*x[3]-0.6075*x[8]^2*x[2]-0.7699*x[8]^2*x[4]-0.4461*x[9]^2*x[6]+0.562*x[1]^2*x[5]*x[8]+0.6608*x[1]^2*x[5]*x[9]+0.9675*x[2]^2*x[3]*x[5]+0.6991*x[2]^2*x[3]*x[8]+0.0953*x[2]^2*x[4]*x[5]-0.322*x[2]^2*x[4]*x[7]+0.5378*x[2]^2*x[4]*x[8]+0.7189*x[2]^2*x[4]*x[9]-0.0297*x[2]^2*x[5]*x[7]+0.4854*x[2]^2*x[6]*x[10]+0.2791*x[2]^2*x[7]*x[9]-0.0644*x[2]^2*x[8]*x[10]+0.1736*x[3]^2*x[1]*x[2]+0.3848*x[3]^2*x[1]*x[10]+0.6166*x[3]^2*x[2]*x[4]+0.305*x[3]^2*x[2]*x[5]-0.1383*x[3]^2*x[2]*x[6]+0.82*x[3]^2*x[2]*x[9]+0.5881*x[3]^2*x[4]*x[5]+0.1501*x[3]^2*x[5]*x[8]-0.3687*x[3]^2*x[6]*x[7]+0.0253*x[4]^2*x[1]*x[8]+0.0402*x[4]^2*x[1]*x[9]-0.1284*x[4]^2*x[2]*x[6]+0.5743*x[4]^2*x[2]*x[9]+0.2095*x[4]^2*x[5]*x[8]+0.0611*x[4]^2*x[6]*x[10]-0.1202*x[4]^2*x[7]*x[8]-0.131*x[4]^2*x[8]*x[10]+0.3413*x[5]^2*x[1]*x[7]+0.761*x[5]^2*x[1]*x[8]-0.4108*x[5]^2*x[2]*x[3]+0.4245*x[5]^2*x[2]*x[4]+0.0755*x[5]^2*x[2]*x[7]+0.3945*x[5]^2*x[2]*x[9]+0.8915*x[5]^2*x[3]*x[6]+0.6794*x[5]^2*x[3]*x[8]-0.0869*x[5]^2*x[4]*x[8]-0.0127*x[5]^2*x[8]*x[9]+0.7768*x[6]^2*x[2]*x[3]+0.8603*x[6]^2*x[2]*x[9]-0.2596*x[6]^2*x[3]*x[9]+0.1803*x[6]^2*x[4]*x[7]+0.169*x[6]^2*x[4]*x[8]+0.6394*x[6]^2*x[4]*x[9]-0.1502*x[6]^2*x[7]*x[9]-0.0975*x[6]^2*x[8]*x[9]+0.6513*x[6]^2*x[8]*x[10]+0.8622*x[6]^2*x[9]*x[10]-0.3975*x[7]^2*x[2]*x[8]+0.6425*x[7]^2*x[3]*x[4]+0.9873*x[7]^2*x[3]*x[5]+0.0586*x[7]^2*x[3]*x[6]+0.6027*x[7]^2*x[3]*x[8]-0.3099*x[7]^2*x[3]*x[9]+0.0502*x[7]^2*x[4]*x[8]-0.2244*x[7]^2*x[5]*x[9]-0.3237*x[7]^2*x[8]*x[10]+0.2131*x[8]^2*x[1]*x[4]-0.0269*x[8]^2*x[1]*x[7]-0.0586*x[8]^2*x[1]*x[9]+0.9962*x[8]^2*x[2]*x[3]+0.7599*x[8]^2*x[2]*x[4]-0.3524*x[8]^2*x[2]*x[5]-0.1077*x[8]^2*x[3]*x[7]+0.8708*x[8]^2*x[6]*x[7]+0.8049*x[8]^2*x[6]*x[9]+0.0199*x[9]^2*x[1]*x[4]+0.9698*x[9]^2*x[1]*x[5]-0.2523*x[9]^2*x[1]*x[7]-0.1993*x[9]^2*x[2]*x[3]+0.6146*x[9]^2*x[2]*x[4]+0.994*x[9]^2*x[2]*x[5]+0.0613*x[9]^2*x[2]*x[7]+0.0583*x[9]^2*x[3]*x[5]+0.511*x[9]^2*x[3]*x[7]+0.2374*x[9]^2*x[4]*x[7]-0.0437*x[10]^2*x[1]*x[7]+0.3128*x[10]^2*x[3]*x[8]+0.2066*x[10]^2*x[5]*x[8] <= 63.805)
@NLconstraint(m, e3, (-0.9653*x[4]^2)-0.2869*x[4]+(-0.9605*x[10]^2)-0.6436*x[10]+(-0.9103*x[1]*x[6])-0.9495*x[2]*x[7]-0.8902*x[3]*x[7]-0.9433*x[3]*x[8]-0.9015*x[3]*x[9]-0.9097*x[4]*x[5]-0.984*x[4]*x[6]-0.9702*x[4]*x[7]-0.9724*x[4]*x[9]-0.9677*x[4]*x[10]-0.9394*x[5]*x[8]-0.921*x[5]*x[9]-0.8966*x[6]*x[7]-0.8959*x[6]*x[9]-0.8904*x[6]*x[10]-0.1551*x[1]+0.4025*x[2]+0.9942*x[3]-0.6106*x[5]+0.5482*x[6]-0.5155*x[7]+0.2689*x[8]+0.291*x[9]+(-0.6817*x[1]*x[2]*x[8])-0.6488*x[1]*x[4]*x[5]-0.5467*x[1]*x[4]*x[7]-0.6164*x[1]*x[5]*x[7]-0.4571*x[1]*x[5]*x[8]-0.5585*x[1]*x[5]*x[9]-0.4492*x[1]*x[6]*x[9]-0.6426*x[1]*x[6]*x[10]-0.6745*x[1]*x[7]*x[8]-0.7901*x[2]*x[3]*x[7]-0.723*x[2]*x[3]*x[9]-0.7262*x[2]*x[3]*x[10]-0.4531*x[2]*x[4]*x[7]-0.8792*x[2]*x[5]*x[8]-0.8063*x[2]*x[8]*x[9]-0.6792*x[3]*x[4]*x[5]-0.5391*x[3]*x[4]*x[6]-0.6241*x[3]*x[6]*x[8]-0.5737*x[3]*x[6]*x[9]-0.6056*x[3]*x[6]*x[10]-0.6195*x[3]*x[7]*x[9]-0.8809*x[3]*x[8]*x[9]-0.7416*x[4]*x[7]*x[8]-0.6245*x[4]*x[9]*x[10]-0.6558*x[5]*x[6]*x[7]-0.6095*x[5]*x[7]*x[10]-0.7832*x[6]*x[7]*x[8]-0.5344*x[6]*x[7]*x[10]-0.8802*x[6]*x[9]*x[10]-0.6268*x[7]*x[8]*x[9]-0.7607*x[7]*x[8]*x[10]-0.886*x[8]*x[9]*x[10]+0.0322*x[1]*x[2]*x[3]*x[9]+0.3423*x[1]*x[2]*x[4]*x[8]-0.3627*x[1]*x[2]*x[5]*x[7]+0.3731*x[1]*x[2]*x[5]*x[10]+0.1356*x[1]*x[2]*x[6]*x[10]+0.1786*x[1]*x[2]*x[7]*x[8]+0.0963*x[1]*x[2]*x[7]*x[9]+0.7955*x[1]*x[2]*x[8]*x[10]-0.2302*x[1]*x[3]*x[4]*x[5]+0.6566*x[1]*x[3]*x[5]*x[6]+0.486*x[1]*x[3]*x[5]*x[8]+0.3648*x[1]*x[3]*x[6]*x[9]+0.8036*x[1]*x[3]*x[7]*x[9]-0.1372*x[1]*x[3]*x[7]*x[10]+0.9337*x[1]*x[4]*x[6]*x[10]-0.0971*x[1]*x[4]*x[7]*x[10]-0.2227*x[1]*x[5]*x[6]*x[7]-0.3989*x[2]*x[3]*x[4]*x[5]+0.9356*x[2]*x[3]*x[4]*x[8]-0.0382*x[2]*x[3]*x[4]*x[9]+0.5066*x[2]*x[3]*x[5]*x[6]-0.2324*x[2]*x[3]*x[5]*x[8]+0.6806*x[2]*x[3]*x[5]*x[9]+0.397*x[2]*x[3]*x[5]*x[10]+0.1374*x[2]*x[3]*x[6]*x[7]+0.4255*x[2]*x[3]*x[6]*x[8]+0.1115*x[2]*x[3]*x[6]*x[10]+0.6174*x[2]*x[3]*x[7]*x[8]+0.0518*x[2]*x[4]*x[5]*x[6]-0.3842*x[2]*x[4]*x[5]*x[8]-0.3901*x[2]*x[4]*x[5]*x[9]-0.1952*x[2]*x[4]*x[5]*x[10]+0.7828*x[2]*x[4]*x[6]*x[9]+0.3256*x[2]*x[4]*x[6]*x[10]-0.2028*x[2]*x[4]*x[7]*x[8]-0.2043*x[2]*x[4]*x[9]*x[10]+0.4118*x[2]*x[5]*x[6]*x[7]+0.6177*x[2]*x[5]*x[6]*x[8]+0.825*x[2]*x[5]*x[7]*x[9]-0.13*x[2]*x[5]*x[7]*x[10]+0.5099*x[2]*x[5]*x[8]*x[9]+0.7931*x[2]*x[6]*x[7]*x[8]+0.157*x[2]*x[6]*x[7]*x[9]+0.761*x[2]*x[6]*x[8]*x[9]+0.4041*x[2]*x[6]*x[8]*x[10]+0.6998*x[2]*x[6]*x[9]*x[10]-0.4091*x[2]*x[7]*x[9]*x[10]-0.2048*x[3]*x[4]*x[5]*x[7]+0.388*x[3]*x[4]*x[6]*x[7]-0.1976*x[3]*x[4]*x[6]*x[9]+0.6899*x[3]*x[4]*x[7]*x[9]+0.8632*x[3]*x[4]*x[7]*x[10]+0.5186*x[3]*x[5]*x[6]*x[9]+0.8897*x[3]*x[5]*x[7]*x[9]-0.3171*x[3]*x[5]*x[8]*x[9]-0.3359*x[3]*x[6]*x[7]*x[8]-0.0515*x[4]*x[5]*x[6]*x[8]+0.255*x[4]*x[5]*x[6]*x[9]-0.1105*x[4]*x[5]*x[6]*x[10]+0.5779*x[4]*x[5]*x[7]*x[9]+0.3989*x[4]*x[5]*x[8]*x[9]+0.0077*x[4]*x[6]*x[7]*x[9]+0.7066*x[4]*x[6]*x[8]*x[9]+0.6377*x[4]*x[6]*x[8]*x[10]+0.6841*x[4]*x[6]*x[9]*x[10]+0.342*x[4]*x[7]*x[8]*x[9]+0.3068*x[4]*x[7]*x[9]*x[10]+0.2405*x[5]*x[6]*x[7]*x[9]+0.0233*x[5]*x[6]*x[7]*x[10]-0.3684*x[5]*x[7]*x[8]*x[9]-0.4327*x[5]*x[7]*x[8]*x[10]+0.9751*x[5]*x[7]*x[9]*x[10]+0.7667*x[6]*x[8]*x[9]*x[10]-0.4248*x[7]*x[8]*x[9]*x[10]+0.4656*x[2]^3*x[1]+0.8152*x[2]^3*x[4]+0.3368*x[3]^3*x[10]-0.0043*x[4]^3*x[5]-0.2997*x[5]^3*x[7]+0.5783*x[7]^3*x[3]+0.9354*x[8]^3*x[1]+0.235*x[8]^3*x[3]+0.2583*x[9]^3*x[2]+0.6188*x[9]^3*x[8]+0.7245*x[2]^2*x[3]^2+0.3953*x[2]^2*x[4]^2+0.0308*x[2]^2*x[7]^2+0.0689*x[3]^2*x[9]^2+0.5994*x[4]^2*x[8]^2+0.9107*x[6]^2*x[8]^2+0.3236*x[7]^2*x[8]^2+0.992*x[7]^2*x[9]^2+(-0.6548*x[2]^2*x[4])-0.4469*x[2]^2*x[8]-0.7943*x[4]^2*x[6]-0.5872*x[5]^2*x[4]-0.7844*x[5]^2*x[10]-0.7938*x[6]^2*x[2]-0.6331*x[6]^2*x[5]-0.639*x[6]^2*x[8]-0.6903*x[7]^2*x[6]-0.556*x[7]^2*x[9]-0.8421*x[8]^2*x[4]-0.7738*x[8]^2*x[9]-0.8729*x[9]^2*x[3]-0.4715*x[9]^2*x[4]-0.7554*x[9]^2*x[7]-0.836*x[10]^2*x[6]+0.064*x[1]^2*x[2]*x[7]-0.4441*x[1]^2*x[4]*x[5]-0.147*x[1]^2*x[5]*x[10]-0.123*x[1]^2*x[8]*x[10]+0.4415*x[2]^2*x[1]*x[5]+0.7318*x[2]^2*x[1]*x[9]+0.4796*x[2]^2*x[3]*x[4]+0.0979*x[2]^2*x[3]*x[8]+0.3394*x[2]^2*x[4]*x[7]+0.1788*x[2]^2*x[4]*x[8]+0.039*x[2]^2*x[4]*x[9]+0.0372*x[2]^2*x[4]*x[10]+0.1086*x[2]^2*x[5]*x[7]+0.9889*x[2]^2*x[7]*x[9]-0.0071*x[2]^2*x[8]*x[9]-0.3158*x[3]^2*x[2]*x[4]+0.1479*x[3]^2*x[2]*x[8]-0.1947*x[3]^2*x[2]*x[9]-0.0166*x[3]^2*x[4]*x[6]-0.2946*x[3]^2*x[4]*x[8]-0.2114*x[3]^2*x[5]*x[7]+0.0175*x[3]^2*x[5]*x[9]-0.2862*x[3]^2*x[6]*x[7]+0.7006*x[3]^2*x[6]*x[8]+0.307*x[3]^2*x[6]*x[9]-0.2869*x[3]^2*x[8]*x[9]+0.0314*x[4]^2*x[1]*x[7]+0.7128*x[4]^2*x[2]*x[6]+0.2315*x[4]^2*x[2]*x[9]-0.4406*x[4]^2*x[3]*x[6]+0.9235*x[4]^2*x[3]*x[7]+0.0073*x[4]^2*x[5]*x[6]-0.2566*x[4]^2*x[5]*x[8]+0.8902*x[4]^2*x[6]*x[7]+0.2589*x[4]^2*x[6]*x[9]+0.623*x[4]^2*x[7]*x[9]+0.7893*x[4]^2*x[8]*x[9]+0.6706*x[5]^2*x[1]*x[7]+0.1293*x[5]^2*x[1]*x[8]+0.6195*x[5]^2*x[1]*x[9]+0.0914*x[5]^2*x[2]*x[6]-0.172*x[5]^2*x[2]*x[7]+0.2286*x[5]^2*x[2]*x[10]-0.0737*x[5]^2*x[3]*x[4]+0.1524*x[5]^2*x[3]*x[6]-0.1137*x[5]^2*x[3]*x[7]+0.4886*x[5]^2*x[3]*x[8]+0.5277*x[5]^2*x[3]*x[9]+0.7301*x[5]^2*x[4]*x[10]+0.8758*x[5]^2*x[8]*x[9]+0.9173*x[6]^2*x[1]*x[4]+0.001*x[6]^2*x[1]*x[7]+0.531*x[6]^2*x[2]*x[9]+0.1911*x[6]^2*x[3]*x[4]-0.3534*x[6]^2*x[3]*x[5]+0.7748*x[6]^2*x[3]*x[7]+0.1251*x[6]^2*x[3]*x[10]+0.1705*x[6]^2*x[4]*x[7]-0.2425*x[6]^2*x[4]*x[9]+0.6677*x[6]^2*x[4]*x[10]-0.1614*x[6]^2*x[7]*x[8]-0.3803*x[6]^2*x[8]*x[9]-0.3447*x[6]^2*x[9]*x[10]-0.3239*x[7]^2*x[2]*x[6]+0.4342*x[7]^2*x[2]*x[8]+0.2623*x[7]^2*x[2]*x[9]+0.4261*x[7]^2*x[3]*x[4]-0.1166*x[7]^2*x[3]*x[8]+0.1788*x[7]^2*x[4]*x[5]+0.6431*x[7]^2*x[4]*x[6]+0.5847*x[7]^2*x[6]*x[9]+0.0843*x[7]^2*x[8]*x[9]+0.6829*x[8]^2*x[2]*x[3]+0.5402*x[8]^2*x[2]*x[6]+0.4053*x[8]^2*x[2]*x[10]-0.2463*x[8]^2*x[3]*x[7]+0.9942*x[8]^2*x[6]*x[9]+0.7505*x[9]^2*x[1]*x[3]+0.179*x[9]^2*x[1]*x[4]+0.8057*x[9]^2*x[2]*x[4]+0.4774*x[9]^2*x[2]*x[6]+0.5563*x[9]^2*x[4]*x[6]-0.2194*x[9]^2*x[5]*x[7]+0.3803*x[9]^2*x[5]*x[10]+0.4333*x[9]^2*x[6]*x[7]+0.8271*x[10]^2*x[2]*x[8]-0.2378*x[10]^2*x[3]*x[4]-0.2615*x[10]^2*x[3]*x[5]-0.2774*x[10]^2*x[5]*x[6] <= 17.617)


m = m 		 # model get returned when including this script. 
