(defun swp (lst n1 n2 fe res)

	(if (= n1 0) (setf fe (car lst)))

	(cond 
		((Null (cdr lst)) lst)
		
		(T (setf res (swp (cdr lst) (- n1 1) (- n2 1) fe res))

			(print(cond
				((< n2 0)	(cons (car lst) res))
				((= n2 0) 	(cons (car lst) (cons fe res)))
				((< n1 0)	(cons (car res) (cons (car lst) (cdr res))))
				((= n1 0) 	res)
				(T			(cons (car lst) res))
			))
		)
	)
)

(defun swap (lst n1 n2)
	(cond 
		((= n1 n2) lst)
		((< n1 n2) (swp lst n1 n2 0 Nil))
		(T (swp lst n2 n1 0 Nil))
	)
)