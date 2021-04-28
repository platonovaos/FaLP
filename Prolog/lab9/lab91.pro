domains
	list = integer*.
	
predicates
	getLen(list, integer, integer).
	
clauses
	getLen([], Res, Res) :- !.
	getLen([_ | T], Cntr, Res) :- NCntr = Cntr + 1, getLen(T, NCntr, Res).
	
goal
	getLen([1, 2, 3], 0, Res).