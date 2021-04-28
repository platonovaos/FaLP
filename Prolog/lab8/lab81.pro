predicates
	fact(integer, integer, integer).
	
clauses
	fact(1, Res, Res) :- !.
	fact(N, CRes, Res) :- NN = N - 1, NCRes = CRes * N, fact(NN, NCres, Res).

goal
	fact(3, 1, Res).