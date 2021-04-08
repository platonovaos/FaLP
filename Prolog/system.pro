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
	
	getCarByPhone(phone, name, model, cost).
	getCarModelByPhone(phone, model).
	getStreetBankPhoneByName(name, city, street, bank, phone).
	
clauses
	phoneRecord("Ivanov", "+7910284", address("Moscow", "Berezovaya", 4, 23)).
	phoneRecord("Petrov", "+7902873", address("Riga", "Grushnevaya", 36, 109)).	
	phoneRecord("Sidorov", "+7902873", address("Kazan", "Dryzby", 84, 91)).
	phoneRecord("Fedotov", "+7918276", address("Piter", "Smolenskaya", 62, 41)).
	
	carRecord("Ivanov", "Volvo", "blue", 891000, 2009). 
	carRecord("Ivanov", "Suzuki", "black", 919000, 2017).
	carRecord("Petrov", "BMW", "white", 1000000, 2010).
	carRecord("Fedotov", "Lambargini", "red", 5901000, 2021).
	
	bankRecord("Petrov", "Sber", 8019, 190276, 346).
	bankRecord("Sidorov", "Tinkoff", 0923, 19872, 901).
	bankRecord("Fedotov", "Raif", 8801, 80238, 19).
	bankRecord("Fedotov", "Russ", 1874, 901238, 1984).
	
	getCarByPhone(Phone, Name, Model, Cost) :- phoneRecord(Name, Phone, _), 
						   carRecord(Name, Model, _, Cost, _).
	getCarModelByPhone(Phone, Model) :- getCarByPhone(Phone, _, Model, _).
	
	getStreetBankPhoneByName(Name, City, Street, Bank, Phone) :- 
			phoneRecord(Name, Phone, address(City, Street, _, _)), 
			bankRecord(Name, Bank, _, _, _).
	
goal
	%getCarByPhone("+7910284", Name, Model, Cost).
	%getCarModelByPhone("+7910284", Model).
	
	getStreetBankPhoneByName("Fedotov", City, Street, Bank, Phone).