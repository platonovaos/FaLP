(defun s (lst n1 n2 fe res)

	(if (= n1 0) (setf fe (car lst)))

	(cond 
		((Null (cdr lst)) lst)
		
		(T (setf res (s (cdr lst) (- n1 1) (- n2 1) fe res))

			(cond
				((< n2 0)	(cons (car lst) res))
				((= n2 0) 	(cons (car lst) (cons fe res)))
				((< n1 0)	(cons (car res) (cons (car lst) (cdr res))))
				((= n1 0) 	res)
				(T			(cons (car lst) res))
			)
		)
	)
)

(defun swap (lst n1 n2)
	(cond 
		((= n1 n2) lst)
		((< n1 n2) (s lst n1 n2 0 Nil))
		(T (s lst n2 n1 0 Nil))
	)
)

(print (swap '(a b (c) d e (f) g) 5 3))
