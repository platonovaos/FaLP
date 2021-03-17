(defun get_city (tbl country) 
	(cadr 
		(assoc country tbl)
	)
)

(defun get_ci (tbl country)
	(cond 
		((Null tbl) Nil)

		((eq country (caar tbl)) (cadar tbl))

		(T (get_ci (cdr tbl) country))
	)
)

(defun get_country (tbl city) 
	(car
		(rassoc city tbl)
	)
)

(defun get_co (tbl city)
	(cond 
		((Null tbl) Nil)

		((eq city (cadar tbl)) (caar tbl))

		(T (get_co (cdr tbl) city))
	)
)