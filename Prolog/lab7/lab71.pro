predicates
    	getMax(integer, integer, integer).
    	getMaxOpt(integer, integer, integer).

clauses
	getMax(El1, El1, El2):- El1 > El2.
    	getMax(El2, El1, El2):- El1 <= El2.
    	
	getMaxOpt(El1, El1, El2):- El1 > El2, !.
    	getMaxOpt(El2, El1, El2):- !.
    
goal
	%getMax(Max, 2, 4).
	getMaxOpt(Max, 2, 4).