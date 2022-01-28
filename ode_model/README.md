## Steps:
#### 1. Translate all observables in RB to patterns to fish and
####  sum the right observables from assigned labels to the original model:

-----------------------------------------------------------------------------
"cAMP", "Ca", "PKA", "_CDK5", "CK1.", "PP2AP", "_PP2C", "PP2B.", "PDEP", "D.",
"D34", "D75", "D137"

-----------------------------------------------------------------------------
%obs: 'cAMP_on' cAMP(c~on?)
%obs: 'all_Ca2+' Ca2+()
%obs: 'PKAa?' PKA()
%obs: 'CDK5!_' CDK5(a!_)
%obs: 'CK1u~?' CK1(pSite~u?)
%obs: 'PP2Ap~?' PP2A(pSite~p?)
%obs: 'PP2C!_' PP2C(a!_)
%obs: 'PP2Ba~?' PP2B(state~a?)
%obs: 'PDEp~?' PDE(pSite~p?)
%obs: 'DARPP_unphosph~?' D(thr34~u?, ser137~u?, thr75~u?)
%obs: 'D34*~?' D(thr34~p?)
%obs: 'D75*~?' D(thr75~p?)
%obs: 'D137*~?' D(ser137~p?)
