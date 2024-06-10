x0 = [-0.5 0.5 -0.5]
x1 = [0.5 0.5 0.5]

[result0 f0] = fsolve(@TripleFunc_Moogk, x0)
[result1 f1] = fsolve(@TripleFunc_Moogk, x1)