using JuMP
using PiecewiseLinearOpt

m = Model()
@variable(m, x)
d = [0, 1, 2, 3, 4]
f(x) = x^2
fd = [f(x) for x in d]
println(all_variables(m))

piecewiselinear(m, x, d, fd; method = :DLog)

println(all_variables(m))
