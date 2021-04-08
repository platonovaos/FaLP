domains
	id = integer.
	name, university = string.
	
predicates
	student(id, name, university).
	manyUnivers(id, name).

clauses
	student(1, pasha, "BMSTU").
	student(2, danya, "MSU").
	student(3, denis, "HSE").
	student(4, denis, "BMSTU").
	student(5, dasha, "MISIS").
	student(6, dasha, "MEPHI").
	
	manyUnivers(Id, Name) :- student(Id, Name, U), student(Idx, Name, Ux), Id > Idx.
	
goal
	%student(Id, Name, "BMSTU").
	%student(Id, dasha, University).
	%student(2, Name, University).
	
	manyUnivers(Id, Name).
	
	