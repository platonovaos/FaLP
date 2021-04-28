domains 
	list = integer*.
	
predicates
	getSum(list, integer, integer).
	
clauses
	getSum([], Res, Res) :- !.
	getSum([H | T], Sum, Res) :- NSum = Sum + H, getSum(T, NSum, Res).
	
goal
	getSum([1, 2, 3, 4], 0, Res).