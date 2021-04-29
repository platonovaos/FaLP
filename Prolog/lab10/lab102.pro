domains
	list = integer*.
	
predicates
	formOdd(list, list).

clauses
	formOdd([], []) :- !.
	formOdd([_ | []], []) :- !.
	formOdd([_, H | T], [H | Ta]) :- formOdd(T, Ta).

goal
	formOdd([1, 2, 3, 4, 5, 6], Res).