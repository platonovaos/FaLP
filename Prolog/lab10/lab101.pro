domains
	list = integer*.

predicates
	formBigger(list, integer, list).
	
clauses
	formBigger([], _, []) :- !. 
	formBigger([H | T], N, [H | Ta]) :- H > N, formBigger(T, N, Ta). 
	formBigger([H | T], N, Lst) :- H <= N, formBigger(T, N, Lst).
	
goal
	formBigger([1, 2, 3, 4], 2, Res).