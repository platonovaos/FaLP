predicates
    	getMax(integer, integer, integer, integer).
    	getMaxOpt(integer, integer, integer, integer).

clauses
	getMax(El1, El1, El2, El3) :- El1 > El2, El1 > El3.
	getMax(El2, El1, El2, El3) :- El2 > El1, El2 > El3.
	getMax(El3, El1, El2, El3) :- El3 > El1, El3 > El2.
	
	getMaxOpt(El1, El1, El2, El3) :- El1 > El2, El1 > El3, !.
	getMaxOpt(El2, _, El2, El3) :- El2 > El3, !.
	getMaxOpt(El3, _, _, El3) :- !.
    
goal
	getMax(Max, 2, 3, 1).