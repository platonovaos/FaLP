domains
	list = integer*.
	
predicates
	getSumOdd(list, integer, integer).
	
clauses
	getSumOdd([], Res, Res) :- !.
	getSumOdd([_ | []], Sum, Res) :- getSumOdd([], Sum, Res).
	getSumOdd([_, B | T], Sum, Res) :- NSum = Sum + B, getSumOdd(T, NSum, Res).
	
goal
	getSumOdd([1, 2, 3, 4, 5], 0, Res).