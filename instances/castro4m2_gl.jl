function castro4m2_gl(;options=Dict())

    haskey(options, :solver_options) ? solver_options=options[:solver_options] : solver_options=Dict()
    haskey(options, :verbose) ? verbose=options[:verbose] : verbose=false

    m = Model(solver=fetch_solver(solver_options))

    # ----- Variables ----- #
	@variable(m, x[1:56])

	setlowerbound(x[16], 0.0)
	setlowerbound(x[14], 0.0)
	setlowerbound(x[38], 0.0)
	setlowerbound(x[42], 0.0)
	setlowerbound(x[22], 0.0)
	setlowerbound(x[2], 0.0)
	setlowerbound(x[9], 0.0)
	setlowerbound(x[8], 0.0)
	setlowerbound(x[43], 0.0)
	setlowerbound(x[36], 0.0)
	setlowerbound(x[4], 0.0)
	setlowerbound(x[32], 0.0)
	setlowerbound(x[54], 0.0)
	setlowerbound(x[27], 0.0)
	setlowerbound(x[3], 0.0)
	setlowerbound(x[25], 0.0)
	setlowerbound(x[30], 0.0)
	setlowerbound(x[11], 0.0)
	setlowerbound(x[29], 0.0)
	setlowerbound(x[53], 0.0)
	setlowerbound(x[5], 0.0)
	setlowerbound(x[37], 0.0)
	setlowerbound(x[55], 0.0)
	setlowerbound(x[24], 0.0)
	setlowerbound(x[41], 0.0)
	setlowerbound(x[18], 0.0)
	setlowerbound(x[52], 0.0)
	setlowerbound(x[1], 0.0)
	setlowerbound(x[7], 0.0)
	setlowerbound(x[13], 0.0)
	setlowerbound(x[49], 0.0)
	setlowerbound(x[21], 0.0)
	setlowerbound(x[10], 0.0)
	setlowerbound(x[26], 0.0)
	setlowerbound(x[45], 0.0)
	setlowerbound(x[12], 0.0)
	setlowerbound(x[40], 0.0)
	setlowerbound(x[44], 0.0)
	setlowerbound(x[50], 0.0)
	setlowerbound(x[31], 0.0)
	setlowerbound(x[33], 0.0)
	setlowerbound(x[47], 0.0)
	setlowerbound(x[28], 0.0)
	setlowerbound(x[35], 0.0)
	setlowerbound(x[6], 0.0)
	setlowerbound(x[17], 0.0)
	setlowerbound(x[23], 0.0)
	setlowerbound(x[34], 0.0)
	setlowerbound(x[46], 0.0)
	setlowerbound(x[51], 0.0)
	setlowerbound(x[19], 0.0)
	setlowerbound(x[48], 0.0)
	setlowerbound(x[20], 0.0)
	setlowerbound(x[39], 0.0)
	setlowerbound(x[15], 0.0)
	setupperbound(x[1],1.0e6)
	setupperbound(x[2],1.0e6)
	setupperbound(x[3],1.0e6)
	setupperbound(x[4],1.0e6)
	setupperbound(x[5],1.0e6)
	setupperbound(x[6],1.0e6)
	setupperbound(x[7],1.0e6)
	setupperbound(x[8],1.0e6)
	setupperbound(x[9],1.0e6)
	setupperbound(x[10],1.0e6)
	setupperbound(x[11],1.0e6)
	setupperbound(x[12],1.0e6)
	setupperbound(x[13],1.0e6)
	setupperbound(x[14],1.0e6)
	setupperbound(x[15],1.0e6)
	setupperbound(x[16],1.0e6)
	setupperbound(x[17],1.0e6)
	setupperbound(x[18],1.0e6)
	setupperbound(x[19],1.0e6)
	setupperbound(x[20],1.0e6)
	setupperbound(x[21],1.0e6)
	setupperbound(x[22],1.0e6)
	setupperbound(x[23],1.0e6)
	setupperbound(x[24],1.0e6)
	setupperbound(x[25],1.0e6)
	setupperbound(x[26],1.0e6)
	setupperbound(x[27],1.0e6)
	setupperbound(x[28],1.0e6)
	setupperbound(x[29],1.0e6)
	setupperbound(x[30],1.0e6)
	setupperbound(x[31],1.0e6)
	setupperbound(x[32],1.0e6)
	setupperbound(x[33],1.0e6)
	setupperbound(x[34],1.0e6)
	setupperbound(x[35],1.0e6)
	setupperbound(x[36],1.0e6)
	setupperbound(x[37],1.0e6)
	setupperbound(x[38],1.0e6)
	setupperbound(x[39],1.0e6)
	setupperbound(x[40],1.0e6)
	setupperbound(x[41],1.0e6)
	setupperbound(x[42],1.0e6)
	setupperbound(x[43],1.0e6)
	setupperbound(x[44],1.0e6)
	setupperbound(x[45],1.0e6)
	setupperbound(x[46],1.0e6)
	setupperbound(x[47],1.0e6)
	setupperbound(x[48],1.0e6)
	setupperbound(x[49],1.0e6)
	setupperbound(x[50],1.0e6)
	setupperbound(x[51],1.0e6)
	setupperbound(x[52],1.0e6)
	setupperbound(x[53],1.0e6)
	setupperbound(x[54],1.0e6)
	setupperbound(x[55],1.0e6)

	@objective(m, Min, x[56])

	@NLconstraint(m, e45,x[40]*x[44]-x[16]>=0.0)
	@NLconstraint(m, e45,x[40]*x[44]-x[16]<=0.0)
	@NLconstraint(m, e46,x[41]*x[44]-x[17]>=0.0)
	@NLconstraint(m, e46,x[41]*x[44]-x[17]<=0.0)
	@NLconstraint(m, e47,x[40]*x[45]-x[18]>=0.0)
	@NLconstraint(m, e47,x[40]*x[45]-x[18]<=0.0)
	@NLconstraint(m, e48,x[41]*x[45]-x[19]>=0.0)
	@NLconstraint(m, e48,x[41]*x[45]-x[19]<=0.0)
	@NLconstraint(m, e49,x[42]*x[46]-x[20]>=0.0)
	@NLconstraint(m, e49,x[42]*x[46]-x[20]<=0.0)
	@NLconstraint(m, e50,x[43]*x[46]-x[21]>=0.0)
	@NLconstraint(m, e50,x[43]*x[46]-x[21]<=0.0)
	@NLconstraint(m, e51,x[42]*x[47]-x[22]>=0.0)
	@NLconstraint(m, e51,x[42]*x[47]-x[22]<=0.0)
	@NLconstraint(m, e52,x[43]*x[47]-x[23]>=0.0)
	@NLconstraint(m, e52,x[43]*x[47]-x[23]<=0.0)
	@NLconstraint(m, e53,x[40]*x[50]-x[28]>=0.0)
	@NLconstraint(m, e53,x[40]*x[50]-x[28]<=0.0)
	@NLconstraint(m, e54,x[41]*x[50]-x[29]>=0.0)
	@NLconstraint(m, e54,x[41]*x[50]-x[29]<=0.0)
	@NLconstraint(m, e55,x[42]*x[51]-x[30]>=0.0)
	@NLconstraint(m, e55,x[42]*x[51]-x[30]<=0.0)
	@NLconstraint(m, e56,x[43]*x[51]-x[31]>=0.0)
	@NLconstraint(m, e56,x[43]*x[51]-x[31]<=0.0)
	@NLconstraint(m, e57,x[14]*x[44]-x[1]>=0.0)
	@NLconstraint(m, e57,x[14]*x[44]-x[1]<=0.0)
	@NLconstraint(m, e58,x[14]*x[45]-x[2]>=0.0)
	@NLconstraint(m, e58,x[14]*x[45]-x[2]<=0.0)
	@NLconstraint(m, e59,x[15]*x[46]-x[3]>=0.0)
	@NLconstraint(m, e59,x[15]*x[46]-x[3]<=0.0)
	@NLconstraint(m, e60,x[15]*x[47]-x[4]>=0.0)
	@NLconstraint(m, e60,x[15]*x[47]-x[4]<=0.0)
	@NLconstraint(m, e61,x[14]*x[50]-x[7]>=0.0)
	@NLconstraint(m, e61,x[14]*x[50]-x[7]<=0.0)
	@NLconstraint(m, e62,x[15]*x[51]-x[8]>=0.0)
	@NLconstraint(m, e62,x[15]*x[51]-x[8]<=0.0)

    @constraint(m, e1, -x[14]-x[15]+x[56]>=0.0)
    @constraint(m, e1, -x[14]-x[15]+x[56]<=0.0)
    @constraint(m, e2, -x[5]-x[9]-x[10]>=-40.0)
    @constraint(m, e2, -x[5]-x[9]-x[10]<=-40.0)
    @constraint(m, e3, -x[6]-x[11]-x[12]>=-40.0)
    @constraint(m, e3, -x[6]-x[11]-x[12]<=-40.0)
    @constraint(m, e4, -x[1]-x[3]-x[9]-x[11]+x[14]>=0.0)
    @constraint(m, e4, -x[1]-x[3]-x[9]-x[11]+x[14]<=0.0)
    @constraint(m, e5, -x[2]-x[4]-x[10]-x[12]+x[15]>=0.0)
    @constraint(m, e5, -x[2]-x[4]-x[10]-x[12]+x[15]<=0.0)
    @constraint(m, e6, -x[1]-x[2]-x[7]+x[14]>=0.0)
    @constraint(m, e6, -x[1]-x[2]-x[7]+x[14]<=0.0)
    @constraint(m, e7, -x[3]-x[4]-x[8]+x[15]>=0.0)
    @constraint(m, e7, -x[3]-x[4]-x[8]+x[15]<=0.0)
    @constraint(m, e8, -x[5]-x[6]-x[7]-x[8]+x[13]>=0.0)
    @constraint(m, e8, -x[5]-x[6]-x[7]-x[8]+x[13]<=0.0)
    @constraint(m, e9, -x[24]-x[32]-x[34]>=-4000.0)
    @constraint(m, e9, -x[24]-x[32]-x[34]<=-4000.0)
    @constraint(m, e10, -x[25]-x[33]-x[35]>=-800.0)
    @constraint(m, e10, -x[25]-x[33]-x[35]<=-800.0)
    @constraint(m, e11, -x[26]-x[36]-x[38]>=-600.0)
    @constraint(m, e11, -x[26]-x[36]-x[38]<=-600.0)
    @constraint(m, e12, -x[27]-x[37]-x[39]>=-8000.0)
    @constraint(m, e12, -x[27]-x[37]-x[39]<=-8000.0)
    @constraint(m, e13, -x[32]+4000*x[52]>=0.0)
    @constraint(m, e13, -x[32]+4000*x[52]<=0.0)
    @constraint(m, e14, -x[33]+800*x[52]>=0.0)
    @constraint(m, e14, -x[33]+800*x[52]<=0.0)
    @constraint(m, e15, -x[34]+4000*x[53]>=0.0)
    @constraint(m, e15, -x[34]+4000*x[53]<=0.0)
    @constraint(m, e16, -x[35]+800*x[53]>=0.0)
    @constraint(m, e16, -x[35]+800*x[53]<=0.0)
    @constraint(m, e17, -x[36]+600*x[54]>=0.0)
    @constraint(m, e17, -x[36]+600*x[54]<=0.0)
    @constraint(m, e18, -x[37]+8000*x[54]>=0.0)
    @constraint(m, e18, -x[37]+8000*x[54]<=0.0)
    @constraint(m, e19, -x[38]+600*x[55]>=0.0)
    @constraint(m, e19, -x[38]+600*x[55]<=0.0)
    @constraint(m, e20, -x[39]+8000*x[55]>=0.0)
    @constraint(m, e20, -x[39]+8000*x[55]<=0.0)
    @constraint(m, e21, -x[24]+4000*x[48]>=0.0)
    @constraint(m, e21, -x[24]+4000*x[48]<=0.0)
    @constraint(m, e22, -x[25]+800*x[48]>=0.0)
    @constraint(m, e22, -x[25]+800*x[48]<=0.0)
    @constraint(m, e23, -x[26]+600*x[49]>=0.0)
    @constraint(m, e23, -x[26]+600*x[49]<=0.0)
    @constraint(m, e24, -x[27]+8000*x[49]>=0.0)
    @constraint(m, e24, -x[27]+8000*x[49]<=0.0)
    @constraint(m, e25, -x[9]+40*x[52]>=0.0)
    @constraint(m, e25, -x[9]+40*x[52]<=0.0)
    @constraint(m, e26, -x[10]+40*x[53]>=0.0)
    @constraint(m, e26, -x[10]+40*x[53]<=0.0)
    @constraint(m, e27, -x[11]+40*x[54]>=0.0)
    @constraint(m, e27, -x[11]+40*x[54]<=0.0)
    @constraint(m, e28, -x[12]+40*x[55]>=0.0)
    @constraint(m, e28, -x[12]+40*x[55]<=0.0)
    @constraint(m, e29, -x[5]+40*x[48]>=0.0)
    @constraint(m, e29, -x[5]+40*x[48]<=0.0)
    @constraint(m, e30, -x[6]+40*x[49]>=0.0)
    @constraint(m, e30, -x[6]+40*x[49]<=0.0)
    @constraint(m, e31, x[48]+x[52]+x[53]>=1.0)
    @constraint(m, e31, x[48]+x[52]+x[53]<=1.0)
    @constraint(m, e32, x[49]+x[54]+x[55]>=1.0)
    @constraint(m, e32, x[49]+x[54]+x[55]<=1.0)
    @constraint(m, e33, -200*x[14]+x[16]+x[20]+x[32]+x[36]<=0.0)
    @constraint(m, e34, -200*x[14]+x[17]+x[21]+x[33]+x[37]<=0.0)
    @constraint(m, e35, -200*x[15]+x[18]+x[22]+x[34]+x[38]<=0.0)
    @constraint(m, e36, -200*x[15]+x[19]+x[23]+x[35]+x[39]<=0.0)
    @constraint(m, e37, 0.05*x[16]+0.05*x[20]+0.05*x[32]+0.05*x[36]-x[40]>=0.0)
    @constraint(m, e37, 0.05*x[16]+0.05*x[20]+0.05*x[32]+0.05*x[36]-x[40]<=0.0)
    @constraint(m, e38, x[17]+x[21]+x[33]+x[37]-x[41]>=0.0)
    @constraint(m, e38, x[17]+x[21]+x[33]+x[37]-x[41]<=0.0)
    @constraint(m, e39, x[18]+x[22]+x[34]+x[38]-x[42]>=0.0)
    @constraint(m, e39, x[18]+x[22]+x[34]+x[38]-x[42]<=0.0)
    @constraint(m, e40, 0.024*x[19]+0.024*x[23]+0.024*x[35]+0.024*x[39]-x[43]>=0.0)
    @constraint(m, e40, 0.024*x[19]+0.024*x[23]+0.024*x[35]+0.024*x[39]-x[43]<=0.0)
    @constraint(m, e41, -x[16]-x[18]-x[28]+x[40]>=0.0)
    @constraint(m, e41, -x[16]-x[18]-x[28]+x[40]<=0.0)
    @constraint(m, e42, -x[17]-x[19]-x[29]+x[41]>=0.0)
    @constraint(m, e42, -x[17]-x[19]-x[29]+x[41]<=0.0)
    @constraint(m, e43, -x[20]-x[22]-x[30]+x[42]>=0.0)
    @constraint(m, e43, -x[20]-x[22]-x[30]+x[42]<=0.0)
    @constraint(m, e44, -x[21]-x[23]-x[31]+x[43]>=0.0)
    @constraint(m, e44, -x[21]-x[23]-x[31]+x[43]<=0.0)
    @constraint(m, e63, x[44]+x[45]+x[50]>=1.0)
    @constraint(m, e63, x[44]+x[45]+x[50]<=1.0)
    @constraint(m, e64, x[46]+x[47]+x[51]>=1.0)
    @constraint(m, e64, x[46]+x[47]+x[51]<=1.0)
    @constraint(m, e65, -10*x[13]+x[24]+x[26]+x[28]+x[30]<=0.0)
    @constraint(m, e66, -10*x[13]+x[25]+x[27]+x[29]+x[31]<=0.0)

    if verbose
        print(m)
    end

    return m
end
