domains
	name, phone, city, street = string.
	model, color = string.
	bank = string.
	
	house, flat, nfloors, nha = integer.
	cost, year = integer.
	account, amount, cell = integer.
	
	sea = string.
	
	address = address(city, street, house, flat).
	
	property = car(model, color, cost, year);
		   building(cost, year, nfloors);
		   ground(cost, nha);
		   boat(cost, year, sea).

predicates
	phoneRecord(name, phone, address).
	bankRecord(name, bank, account, amount, cell).
	ownRecord(name, city, property).
	
	getNameOwn(name, string).
	getNameCostOwn(name, string, integer).
	
clauses
	phoneRecord("Ivanov", "+7910284", address("Moscow", "Berezovaya", 4, 23)).
	phoneRecord("Petrov", "+7902873", address("Riga", "Grushnevaya", 36, 109)).	
	phoneRecord("Sidorov", "+7902873", address("Kazan", "Dryzby", 84, 91)).
	phoneRecord("Fedotov", "+7918276", address("Piter", "Smolenskaya", 62, 41)).
	
	bankRecord("Petrov", "Sber", 8019, 190276, 346).
	bankRecord("Sidorov", "Tinkoff", 0923, 19872, 901).
	bankRecord("Fedotov", "Raif", 8801, 80238, 19).
	bankRecord("Fedotov", "Russ", 1874, 901238, 1984).
	
	ownRecord("Ivanov", "Moscow", building(8000000, 1990, 1)).
	ownRecord("Ivanov", "Moscow", car("Volvo", "blue", 891000, 2009)). 
	ownRecord("Petrov", "Riga", ground(800000, 45)).
	ownRecord("Petrov", "Riga", car("BMW", "white", 1000000, 2010)).
	ownRecord("Sidorov", "Kazan", car("BMW", "white", 1200000, 2020)).
	ownRecord("Fedotov", "Piter", car("Lambargini", "red", 5901000, 2021)).
	ownRecord("Fedotov", "Piter", building(38000000, 2020, 5)).
	ownRecord("Fedotov", "Piter", boat(12000000, 2019, "Red")).
	
	getNameOwn(Name, NProp) :- ownRecord(Name, _, car(_, _, _, _)), NProp = "Car".
	getNameOwn(Name, NProp) :- ownRecord(Name, _, building(_, _, _)), NProp = "Building".
	getNameOwn(Name, NProp) :- ownRecord(Name, _, ground(_, _)), NProp = "Ground".
	getNameOwn(Name, NProp) :- ownRecord(Name, _, boat(_, _, _)), NProp = "Boat".
	
	getNameCostOwn(Name, NProp, CProp) :- ownRecord(Name, _, car(_, _, CProp, _)), NProp = "Car".
	getNameCostOwn(Name, NProp, CProp) :- ownRecord(Name, _, building(CProp, _, _)), NProp = "Building".
	getNameCostOwn(Name, NProp, CProp) :- ownRecord(Name, _, ground(CProp, _)), NProp = "Ground".
	getNameCostOwn(Name, NProp, CProp) :- ownRecord(Name, _, boat(CProp, _, _)), NProp = "Boat".
	
goal
	%getNameOwn("Fedotov", NameProperty).
	getNameCostOwn("Fedotov", NameProperty, CostProperty).	