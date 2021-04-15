domains
	name, phone, city, street = string.
	model, color = string.
	bank = string.
	
	house, flat = integer.
	cost, year = integer.
	account, amount, cell = integer.
	
	address = address(city, street, house, flat).

predicates
	phoneRecord(name, phone, address).
	carRecord(name, model, color, cost, year).
	bankRecord(name, bank, account, amount, cell).
	
	getNameCityPhoneBankByModelColor(Model, Color, Name, City, Phone, Bank).
	
clauses
	phoneRecord("Ivanov", "+7910284", address("Moscow", "Berezovaya", 4, 23)).
	phoneRecord("Petrov", "+7902873", address("Riga", "Grushnevaya", 36, 109)).	
	phoneRecord("Sidorov", "+7902873", address("Kazan", "Dryzby", 84, 91)).
	phoneRecord("Fedotov", "+7918276", address("Piter", "Smolenskaya", 62, 41)).
	
	carRecord("Ivanov", "Volvo", "blue", 891000, 2009). 
	carRecord("Ivanov", "Suzuki", "black", 919000, 2017).
	carRecord("Petrov", "BMW", "white", 1000000, 2010).
	carRecord("Sidorov", "BMW", "white", 1200000, 2020).
	carRecord("Fedotov", "Lambargini", "red", 5901000, 2021).
	
	bankRecord("Petrov", "Sber", 8019, 190276, 346).
	bankRecord("Sidorov", "Tinkoff", 0923, 19872, 901).
	bankRecord("Fedotov", "Raif", 8801, 80238, 19).
	bankRecord("Fedotov", "Russ", 1874, 901238, 1984).
	
	getNameCityPhoneBankByModelColor(Model, Color, Name, City, Phone, Bank) :- carRecord(Name, Model, Color, _, _),
											phoneRecord(Name, Phone, address(City, _, _, _)),
											bankRecord(Name, Bank, _, _, _). 
goal
	%getNameCityPhoneBankByModelColor("BMW", "red", Name, City, Phone, Bank).
	%getNameCityPhoneBankByModelColor("Lambargini", "red", Name, City, Phone, Bank).
	getNameCityPhoneBankByModelColor("BMW", "white", Name, City, Phone, Bank).