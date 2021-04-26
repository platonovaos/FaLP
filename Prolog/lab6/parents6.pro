predicates
    	father(string, string).
    	mother(string, string).
    	
    	getGrandMotherByMom(string, string).
    	getGrandMotherByDad(string, string).
    	getGrandMother(string, string).
    	
    	getGrandFatherByMom(string, string).
    	getGrandFatherByDad(string, string).
    	getGrandFather(string, string).
    	
    	getGrands(string, string).
    	
    	getGrandsByMom(string, string).

clauses
	father("Yuriy", "Sergei").
	father("Slava", "Irina").
	father("Slava", "Dima").
	father("Sergei", "Olga"). 
	father("Sergei", "Ivan").

	mother("Tamara", "Sergei").
	mother("Larisa", "Irina").
	mother("Larisa", "Dima").	
	mother("Irina", "Olga").
	mother("Irina", "Ivan").
	
	getGrandMotherByMom(Child, GM) :- mother(Mom, Child), !, mother(GM, Mom).
	getGrandMotherByDad(Child, GM) :- father(Dad, Child), !, mother(GM, Dad).
	
	getGrandFatherByMom(Child, GF) :- mother(Mom, Child), !, father(GF, Mom).
	getGrandFatherByDad(Child, GF) :- father(Dad, Child), !, father(GF, Dad).
	
	getGrandMother(Child, GM) :- getGrandMotherByMom(Child, GM).
	getGrandMother(Child, GM) :- getGrandMotherByDad(Child, GM).

	getGrandFather(Child, GF) :- getGrandFatherByMom(Child, GF).
	getGrandFather(Child, GF) :- getGrandFatherByDad(Child, GF).
	
	getGrands(Child, GP) :- getGrandMother(Child, GP).
	getGrands(Child, GP) :- getGrandFather(Child, GP).
	
	getGrandsByMom(Child, GP) :- getGrandMotherByMom(Child, GP).
	getGrandsByMom(Child, GP) :- getGrandFatherByMom(Child, GP).
	
goal
	%getGrandMother("Olga", GM).
	%getGrandMother("Ivan", GM).
	
	%getGrandFather("Ivan", GF).
	%getGrandFather("Olga", GF).
	
	%getGrands("Olga", GP).
	
	getGrandMotherByMom("Ivan", GM).
	
	%getGrandsByMom("Olga", GM).
	