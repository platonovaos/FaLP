predicates
	fib(integer, integer, integer, integer).
	
clauses
	fib(1, _, Res, Res) :- !.
	fib(Idx, LastE, CurE, Res) :- NIdx = Idx - 1, 
				      NLastE = CurE,
				      NCurE = LastE + CurE,
				      fib(NIdx, NLastE, NCurE, Res).

goal
	fib(4, 0, 1, Res).