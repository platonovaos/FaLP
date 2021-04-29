domains
	list = integer*.

predicates
	deleteElem(list, integer, list).
	formSet(list, list).

clauses
	deleteElem([], _, []) :- !.
	deleteElem([Elem | T], Elem, Res) :- deleteElem(T, Elem, Res), !.
	deleteElem([H | T], Elem, [H | Ta]) :- deleteElem(T, Elem, Ta).
	
	formSet([], []) :- !.
	formSet([H | T], [H | Ta]) :- deleteElem(T, H, Res), formSet(Res, Ta). 
	
goal
	%deleteElem([1, 2, 3, 4, 3], 3, Res).
	formSet([1, 2, 3, 2, 1, 3, 4], Res).