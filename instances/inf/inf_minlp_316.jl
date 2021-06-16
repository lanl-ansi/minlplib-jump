using JuMP

m = Model()

# ----- Variables ----- #
x_Idx = Any[91]
@variable(m, x[x_Idx])
i_Idx = Any[1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90]
@variable(m, i[i_Idx], Int)
set_lower_bound(i[68], 0.0)
set_upper_bound(i[68], 100.0)
set_lower_bound(i[35], 0.0)
set_upper_bound(i[35], 100.0)
set_lower_bound(i[33], 0.0)
set_upper_bound(i[33], 100.0)
set_lower_bound(i[5], 0.0)
set_upper_bound(i[5], 100.0)
set_lower_bound(i[3], 0.0)
set_upper_bound(i[3], 100.0)
set_lower_bound(i[84], 0.0)
set_upper_bound(i[84], 100.0)
set_lower_bound(i[86], 0.0)
set_upper_bound(i[86], 100.0)
set_lower_bound(i[74], 0.0)
set_upper_bound(i[74], 100.0)
set_lower_bound(i[58], 0.0)
set_upper_bound(i[58], 100.0)
set_lower_bound(i[41], 0.0)
set_upper_bound(i[41], 100.0)
set_lower_bound(i[31], 0.0)
set_upper_bound(i[31], 100.0)
set_lower_bound(i[34], 0.0)
set_upper_bound(i[34], 100.0)
set_lower_bound(i[61], 0.0)
set_upper_bound(i[61], 100.0)
set_lower_bound(i[22], 0.0)
set_upper_bound(i[22], 100.0)
set_lower_bound(i[14], 0.0)
set_upper_bound(i[14], 100.0)
set_lower_bound(i[37], 0.0)
set_upper_bound(i[37], 100.0)
set_lower_bound(i[45], 0.0)
set_upper_bound(i[45], 100.0)
set_lower_bound(i[15], 0.0)
set_upper_bound(i[15], 100.0)
set_lower_bound(i[75], 0.0)
set_upper_bound(i[75], 100.0)
set_lower_bound(i[76], 0.0)
set_upper_bound(i[76], 100.0)
set_lower_bound(i[77], 0.0)
set_upper_bound(i[77], 100.0)
set_lower_bound(i[25], 0.0)
set_upper_bound(i[25], 100.0)
set_lower_bound(i[60], 0.0)
set_upper_bound(i[60], 100.0)
set_lower_bound(i[53], 0.0)
set_upper_bound(i[53], 100.0)
set_lower_bound(i[21], 0.0)
set_upper_bound(i[21], 100.0)
set_lower_bound(i[73], 0.0)
set_upper_bound(i[73], 100.0)
set_lower_bound(i[63], 0.0)
set_upper_bound(i[63], 100.0)
set_lower_bound(i[56], 0.0)
set_upper_bound(i[56], 100.0)
set_lower_bound(i[64], 0.0)
set_upper_bound(i[64], 100.0)
set_lower_bound(i[72], 0.0)
set_upper_bound(i[72], 100.0)
set_lower_bound(i[49], 0.0)
set_upper_bound(i[49], 100.0)
set_lower_bound(i[2], 0.0)
set_upper_bound(i[2], 100.0)
set_lower_bound(i[13], 0.0)
set_upper_bound(i[13], 100.0)
set_lower_bound(i[6], 0.0)
set_upper_bound(i[6], 100.0)
set_lower_bound(i[26], 0.0)
set_upper_bound(i[26], 100.0)
set_lower_bound(i[78], 0.0)
set_upper_bound(i[78], 100.0)
set_lower_bound(i[82], 0.0)
set_upper_bound(i[82], 100.0)
set_lower_bound(i[89], 0.0)
set_upper_bound(i[89], 100.0)
set_lower_bound(i[80], 0.0)
set_upper_bound(i[80], 100.0)
set_lower_bound(i[52], 0.0)
set_upper_bound(i[52], 100.0)
set_lower_bound(i[66], 0.0)
set_upper_bound(i[66], 100.0)
set_lower_bound(i[11], 0.0)
set_upper_bound(i[11], 100.0)
set_lower_bound(i[62], 0.0)
set_upper_bound(i[62], 100.0)
set_lower_bound(i[1], 0.0)
set_upper_bound(i[1], 100.0)
set_lower_bound(i[18], 0.0)
set_upper_bound(i[18], 100.0)
set_lower_bound(i[8], 0.0)
set_upper_bound(i[8], 100.0)
set_lower_bound(i[85], 0.0)
set_upper_bound(i[85], 100.0)
set_lower_bound(i[51], 0.0)
set_upper_bound(i[51], 100.0)
set_lower_bound(i[50], 0.0)
set_upper_bound(i[50], 100.0)
set_lower_bound(i[90], 0.0)
set_upper_bound(i[90], 100.0)
set_lower_bound(i[19], 0.0)
set_upper_bound(i[19], 100.0)
set_lower_bound(i[44], 0.0)
set_upper_bound(i[44], 100.0)
set_lower_bound(i[83], 0.0)
set_upper_bound(i[83], 100.0)
set_lower_bound(i[32], 0.0)
set_upper_bound(i[32], 100.0)
set_lower_bound(i[79], 0.0)
set_upper_bound(i[79], 100.0)
set_lower_bound(i[46], 0.0)
set_upper_bound(i[46], 100.0)
set_lower_bound(i[55], 0.0)
set_upper_bound(i[55], 100.0)
set_lower_bound(i[28], 0.0)
set_upper_bound(i[28], 100.0)
set_lower_bound(i[81], 0.0)
set_upper_bound(i[81], 100.0)
set_lower_bound(i[36], 0.0)
set_upper_bound(i[36], 100.0)
set_lower_bound(i[48], 0.0)
set_upper_bound(i[48], 100.0)
set_lower_bound(i[4], 0.0)
set_upper_bound(i[4], 100.0)
set_lower_bound(i[40], 0.0)
set_upper_bound(i[40], 100.0)
set_lower_bound(i[65], 0.0)
set_upper_bound(i[65], 100.0)
set_lower_bound(i[9], 0.0)
set_upper_bound(i[9], 100.0)
set_lower_bound(i[17], 0.0)
set_upper_bound(i[17], 100.0)
set_lower_bound(i[59], 0.0)
set_upper_bound(i[59], 100.0)
set_lower_bound(i[7], 0.0)
set_upper_bound(i[7], 100.0)
set_lower_bound(i[43], 0.0)
set_upper_bound(i[43], 100.0)
set_lower_bound(i[20], 0.0)
set_upper_bound(i[20], 100.0)
set_lower_bound(i[88], 0.0)
set_upper_bound(i[88], 100.0)
set_lower_bound(i[38], 0.0)
set_upper_bound(i[38], 100.0)
set_lower_bound(i[47], 0.0)
set_upper_bound(i[47], 100.0)
set_lower_bound(i[23], 0.0)
set_upper_bound(i[23], 100.0)
set_lower_bound(i[57], 0.0)
set_upper_bound(i[57], 100.0)
set_lower_bound(i[12], 0.0)
set_upper_bound(i[12], 100.0)
set_lower_bound(i[27], 0.0)
set_upper_bound(i[27], 100.0)
set_lower_bound(i[71], 0.0)
set_upper_bound(i[71], 100.0)
set_lower_bound(i[24], 0.0)
set_upper_bound(i[24], 100.0)
set_lower_bound(i[29], 0.0)
set_upper_bound(i[29], 100.0)
set_lower_bound(i[69], 0.0)
set_upper_bound(i[69], 100.0)
set_lower_bound(i[67], 0.0)
set_upper_bound(i[67], 100.0)
set_lower_bound(i[54], 0.0)
set_upper_bound(i[54], 100.0)
set_lower_bound(i[70], 0.0)
set_upper_bound(i[70], 100.0)
set_lower_bound(i[16], 0.0)
set_upper_bound(i[16], 100.0)
set_lower_bound(i[10], 0.0)
set_upper_bound(i[10], 100.0)
set_lower_bound(i[87], 0.0)
set_upper_bound(i[87], 100.0)
set_lower_bound(i[30], 0.0)
set_upper_bound(i[30], 100.0)
set_lower_bound(i[39], 0.0)
set_upper_bound(i[39], 100.0)
set_lower_bound(i[42], 0.0)
set_upper_bound(i[42], 100.0)
set_upper_bound(i[1], 100.0)
set_upper_bound(i[2], 100.0)
set_upper_bound(i[3], 100.0)
set_upper_bound(i[4], 100.0)
set_upper_bound(i[5], 100.0)
set_upper_bound(i[6], 100.0)
set_upper_bound(i[7], 100.0)
set_upper_bound(i[8], 100.0)
set_upper_bound(i[9], 100.0)
set_upper_bound(i[10], 100.0)
set_upper_bound(i[11], 100.0)
set_upper_bound(i[12], 100.0)
set_upper_bound(i[13], 100.0)
set_upper_bound(i[14], 100.0)
set_upper_bound(i[15], 100.0)
set_upper_bound(i[16], 100.0)
set_upper_bound(i[17], 100.0)
set_upper_bound(i[18], 100.0)
set_upper_bound(i[19], 100.0)
set_upper_bound(i[20], 100.0)
set_upper_bound(i[21], 100.0)
set_upper_bound(i[22], 100.0)
set_upper_bound(i[23], 100.0)
set_upper_bound(i[24], 100.0)
set_upper_bound(i[25], 100.0)
set_upper_bound(i[26], 100.0)
set_upper_bound(i[27], 100.0)
set_upper_bound(i[28], 100.0)
set_upper_bound(i[29], 100.0)
set_upper_bound(i[30], 100.0)
set_upper_bound(i[31], 100.0)
set_upper_bound(i[32], 100.0)
set_upper_bound(i[33], 100.0)
set_upper_bound(i[34], 100.0)
set_upper_bound(i[35], 100.0)
set_upper_bound(i[36], 100.0)
set_upper_bound(i[37], 100.0)
set_upper_bound(i[38], 100.0)
set_upper_bound(i[39], 100.0)
set_upper_bound(i[40], 100.0)
set_upper_bound(i[41], 100.0)
set_upper_bound(i[42], 100.0)
set_upper_bound(i[43], 100.0)
set_upper_bound(i[44], 100.0)
set_upper_bound(i[45], 100.0)
set_upper_bound(i[46], 100.0)
set_upper_bound(i[47], 100.0)
set_upper_bound(i[48], 100.0)
set_upper_bound(i[49], 100.0)
set_upper_bound(i[50], 100.0)
set_upper_bound(i[51], 100.0)
set_upper_bound(i[52], 100.0)
set_upper_bound(i[53], 100.0)
set_upper_bound(i[54], 100.0)
set_upper_bound(i[55], 100.0)
set_upper_bound(i[56], 100.0)
set_upper_bound(i[57], 100.0)
set_upper_bound(i[58], 100.0)
set_upper_bound(i[59], 100.0)
set_upper_bound(i[60], 100.0)
set_upper_bound(i[61], 100.0)
set_upper_bound(i[62], 100.0)
set_upper_bound(i[63], 100.0)
set_upper_bound(i[64], 100.0)
set_upper_bound(i[65], 100.0)
set_upper_bound(i[66], 100.0)
set_upper_bound(i[67], 100.0)
set_upper_bound(i[68], 100.0)
set_upper_bound(i[69], 100.0)
set_upper_bound(i[70], 100.0)
set_upper_bound(i[71], 100.0)
set_upper_bound(i[72], 100.0)
set_upper_bound(i[73], 100.0)
set_upper_bound(i[74], 100.0)
set_upper_bound(i[75], 100.0)
set_upper_bound(i[76], 100.0)
set_upper_bound(i[77], 100.0)
set_upper_bound(i[78], 100.0)
set_upper_bound(i[79], 100.0)
set_upper_bound(i[80], 100.0)
set_upper_bound(i[81], 100.0)
set_upper_bound(i[82], 100.0)
set_upper_bound(i[83], 100.0)
set_upper_bound(i[84], 100.0)
set_upper_bound(i[85], 100.0)
set_upper_bound(i[86], 100.0)
set_upper_bound(i[87], 100.0)
set_upper_bound(i[88], 100.0)
set_upper_bound(i[89], 100.0)
set_upper_bound(i[90], 100.0)


# ----- Constraints ----- #
@constraint(m, e1, i[1]+i[2]+i[3]+i[4]+i[5]+i[6]+i[7]+i[8]+i[9]+i[10]+i[11]+i[12]+i[13]+i[14]+i[15]+i[16]+i[17]+i[18]+i[19]+i[20]+i[21]+i[22]+i[23]+i[24]+i[25]+i[26]+i[27]+i[28]+i[29]+i[30]+i[31]+i[32]+i[33]+i[34]+i[35]+i[36]+i[37]+i[38]+i[39]+i[40]+i[41]+i[42]+i[43]+i[44]+i[45]+i[46]+i[47]+i[48]+i[49]+i[50]+i[51]+i[52]+i[53]+i[54]+i[55]+i[56]+i[57]+i[58]+i[59]+i[60]+i[61]+i[62]+i[63]+i[64]+i[65]+i[66]+i[67]+i[68]+i[69]+i[70]+i[71]+i[72]+i[73]+i[74]+i[75]+i[76]+i[77]+i[78]+i[79]+i[80]+i[81]+i[82]+i[83]+i[84]+i[85]+i[86]+i[87]+i[88]+i[89]+i[90]-x[91] == 0.0)
@NLconstraint(m, e2, (-0.0413926851582251+i[1]/(4157+x[91]))/sqrt(0.0396793307736171/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e3, (-0.0377885608893998+i[2]/(4157+x[91]))/sqrt(0.0363605855553079/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e4, (-0.0347621062592119+i[3]/(4157+x[91]))/sqrt(0.0335537022276352/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e5, (-0.0321846833714012+i[4]/(4157+x[91]))/sqrt(0.0311488295276839/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e6, (-0.0299632233774432+i[5]/(4157+x[91]))/sqrt(0.0290654286222766/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e7, (-0.0280287236002435+(148+i[6])/(4157+x[91]))/sqrt(0.0272431142535847/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e8, (-0.0263289387223491+(127+i[7])/(4157+x[91]))/sqrt(0.0256357257081039/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e9, (-0.0248235837250321+(125+i[8])/(4157+x[91]))/sqrt(0.0242073734160784/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e10, (-0.0234810958495229+(119+i[9])/(4157+x[91]))/sqrt(0.0229297339872284/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e11, (-0.0222763947111522+(122+i[10])/(4157+x[91]))/sqrt(0.0217801569498252/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e12, (-0.0211892990699381+(97+i[11])/(4157+x[91]))/sqrt(0.0207403126748628/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e13, (-0.020203386088287+(95+i[12])/(4157+x[91]))/sqrt(0.0197952092788546/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e14, (-0.0193051551953866+(111+i[13])/(4157+x[91]))/sqrt(0.0189324661782686/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e15, (-0.0184834056940131+(104+i[14])/(4157+x[91]))/sqrt(0.0181417694079636/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e16, (-0.0177287669604316+(79+i[15])/(4157+x[91]))/sqrt(0.0174144577824943/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e17, (-0.0170333392987804+(91+i[16])/(4157+x[91]))/sqrt(0.016743204651113/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e18, (-0.0163904161881694+(84+i[17])/(4157+x[91]))/sqrt(0.016121770445348/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e19, (-0.0157942671832319+(76+i[18])/(4157+x[91]))/sqrt(0.0155448083073766/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e20, (-0.0152399665567369+(69+i[19])/(4157+x[91]))/sqrt(0.0150077099760864/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e21, (-0.0147232568207064+(70+i[20])/(4157+x[91]))/sqrt(0.0145064825292979/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e22, (-0.0142404391146103+(67+i[21])/(4157+x[91]))/sqrt(0.0140376490084334/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e23, (-0.0137882844856333+(74+i[22])/(4157+x[91]))/sqrt(0.0135981676965765/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e24, (-0.0133639615579815+(58+i[23])/(4157+x[91]))/sqrt(0.0131853660894583/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e25, (-0.0129649771643676+(63+i[24])/(4157+x[91]))/sqrt(0.012796886531495/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e26, (-0.0125891273080205+(64+i[25])/(4157+x[91]))/sqrt(0.012430641181643/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e27, (-0.0122344564170116+(73+i[26])/(4157+x[91]))/sqrt(0.0120847744931918/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e28, (-0.0118992232997077+(54+i[27])/(4157+x[91]))/sqrt(0.0117576317845714/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e29, (-0.0115818725498151+(51+i[28])/(4157+x[91]))/sqrt(0.0114477327780549/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e30, (-0.0112810104096891+(55+i[29])/(4157+x[91]))/sqrt(0.0111537492138256/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e31, (-0.0109953843014631+(57+i[30])/(4157+x[91]))/sqrt(0.0108744858255262/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e32, (-0.0107238653917731+(56+i[31])/(4157+x[91]))/sqrt(0.0106088641028322/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e33, (-0.010465433678165+(68+i[32])/(4157+x[91]))/sqrt(0.0103559083760929/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e34, (-0.010219165181686+(54+i[33])/(4157+x[91]))/sqrt(0.0101147338446754/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e35, (-0.0099842209066009+(44+i[34])/(4157+x[91]))/sqrt(0.00988453623948909/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e36, (-0.0097598372891562+(55+i[35])/(4157+x[91]))/sqrt(0.0096645828652454/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e37, (-0.0095453179062304+(48+i[36])/(4157+x[91]))/sqrt(0.0094542048122994/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e38, (-0.0093400262541434+(41+i[37])/(4157+x[91]))/sqrt(0.00925279016371531/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e39, (-0.0091433794398697+(45+i[38])/(4157+x[91]))/sqrt(0.00905977805228827/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e40, (-0.0089548426529264+(45+i[39])/(4157+x[91]))/sqrt(0.00887465344598773/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e41, (-0.0087739243075052+(44+i[40])/(4157+x[91]))/sqrt(0.00869694255975137/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e42, (-0.0086001717619176+(33+i[41])/(4157+x[91]))/sqrt(0.00852620880758312/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e43, (-0.0084331675368628+(38+i[42])/(4157+x[91]))/sqrt(0.008362049222158/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e44, (-0.0082725259659899+(49+i[43])/(4157+x[91]))/sqrt(0.00820409128013192/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e45, (-0.0081178902221795+(38+i[44])/(4157+x[91]))/sqrt(0.00805199008052014/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e46, (-0.0079689296712754+(41+i[45])/(4157+x[91]))/sqrt(0.00790542583116967/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e47, (-0.0078253375119565+(45+i[46])/(4157+x[91]))/sqrt(0.00776410160478047/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e48, (-0.007686828666291+(38+i[47])/(4157+x[91]))/sqrt(0.00762774133134609/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e49, (-0.0075531378904459+(51+i[48])/(4157+x[91]))/sqrt(0.00749608799845381/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e50, (-0.0074240180792069+(34+i[49])/(4157+x[91]))/sqrt(0.00736890203476651/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e51, (-0.0072992387414994+(41+i[50])/(4157+x[91]))/sqrt(0.00724595985529399/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e52, (-0.0071785846271234+(46+i[51])/(4157+x[91]))/sqrt(0.00712705254987463/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e53, (-0.0070618544874869+(32+i[52])/(4157+x[91]))/sqrt(0.00701198469868446/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e54, (-0.0069488599553278+(24+i[53])/(4157+x[91]))/sqrt(0.00690057330064904/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e55, (-0.0068394245303054+(44+i[54])/(4157+x[91]))/sqrt(0.00679264680239966/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e56, (-0.0067333826589684+(37+i[55])/(4157+x[91]))/sqrt(0.0066880442169363/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e57, (-0.0066305788990131+(28+i[56])/(4157+x[91]))/sqrt(0.00658661432247706/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e58, (-0.0065308671589578+(34+i[57])/(4157+x[91]))/sqrt(0.00648821493310985/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e59, (-0.0064341100054099+(37+i[58])/(4157+x[91]))/sqrt(0.00639271223384818/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e60, (-0.006340178031019+(29+i[59])/(4157+x[91]))/sqrt(0.00629998017355398/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e61, (-0.0062489492770015+(37+i[60])/(4157+x[91]))/sqrt(0.00620989990993496/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e62, (-0.0061603087048184+(31+i[61])/(4157+x[91]))/sqrt(0.00612235930147974/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e63, (-0.0060741477121932+(34+i[62])/(4157+x[91]))/sqrt(0.00603725244176366/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e64, (-0.0059903636891874+(28+i[63])/(4157+x[91]))/sqrt(0.00595447923205867/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e65, (-0.0059088596105203+(30+i[64])/(4157+x[91]))/sqrt(0.00587394498862346/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e66, (-0.0058295436607239+(32+i[65])/(4157+x[91]))/sqrt(0.00579556008143161/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e67, (-0.0057523288890913+(33+i[66])/(4157+x[91]))/sqrt(0.00571923960144303/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e68, (-0.0056771328916905+(33+i[67])/(4157+x[91]))/sqrt(0.00564490305382059/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e69, (-0.0056038775179985+(31+i[68])/(4157+x[91]))/sqrt(0.00557247407476177/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e70, (-0.005532488599961+(33+i[69])/(4157+x[91]))/sqrt(0.0055018801698523/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e71, (-0.0054628957015022+(29+i[70])/(4157+x[91]))/sqrt(0.00543305247205671/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e72, (-0.0053950318867061+(26+i[71])/(4157+x[91]))/sqrt(0.00536592551764752/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e73, (-0.005328833505067+(29+i[72])/(4157+x[91]))/sqrt(0.00530043703854228/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e74, (-0.0052642399923572+(21+i[73])/(4157+x[91]))/sqrt(0.00523652776966007/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e75, (-0.0052011936858077+(25+i[74])/(4157+x[91]))/sqrt(0.00517414127005041/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e76, (-0.0051396396524111+(29+i[75])/(4157+x[91]))/sqrt(0.00511322375665446/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e77, (-0.005079525529275+(26+i[76])/(4157+x[91]))/sqrt(0.00505372394967244/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e78, (-0.0050208013750508+(22+i[77])/(4157+x[91]))/sqrt(0.00499559292860309/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e79, (-0.0049634195315501+(22+i[78])/(4157+x[91]))/sqrt(0.00493878399810393/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e80, (-0.0049073344947442+(25+i[79])/(4157+x[91]))/sqrt(0.00488325256290089/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e81, (-0.0048525027944121+(25+i[80])/(4157+x[91]))/sqrt(0.00482895601104232/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e82, (-0.0047988828817687+(19+i[81])/(4157+x[91]))/sqrt(0.00477585360485577/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e83, (-0.0047464350244617+(23+i[82])/(4157+x[91]))/sqrt(0.00472390637902026/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e84, (-0.0046951212083799+(21+i[83])/(4157+x[91]))/sqrt(0.00467307704521852/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e85, (-0.0046449050457635+(28+i[84])/(4157+x[91]))/sqrt(0.00462332990287934/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e86, (-0.0045957516891491+(15+i[85])/(4157+x[91]))/sqrt(0.00457463075556078/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e87, (-0.0045476277507207+(21+i[86])/(4157+x[91]))/sqrt(0.00452694683256157/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e88, (-0.0045005012266765+(24+i[87])/(4157+x[91]))/sqrt(0.00448024671538518/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e89, (-0.00445434142625+(17+i[88])/(4157+x[91]))/sqrt(0.00443450026870839/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e90, (-0.004409118905055+(22+i[89])/(4157+x[91]))/sqrt(0.00438967857553609/(4157+x[91])) >= -2.575829304)
@NLconstraint(m, e91, (-0.0043648054024501+(14+i[90])/(4157+x[91]))/sqrt(0.00434575387624884/(4157+x[91])) >= -2.575829304)
@constraint(m, e92, i[1] == 0.0)
@constraint(m, e93, i[2] == 175.0)
@constraint(m, e94, i[3] == 157.0)
@constraint(m, e95, i[4] == 143.0)
@constraint(m, e96, i[5] == 158.0)


# ----- Objective ----- #
@objective(m, Min, x[91])

m = m 		 # model get returned when including this script. 
