(defun s (lst n1 n2 fe se)

	(cond 
		((= n1 0) (setf fe (car lst))))

	(if (Null (cdr lst))
		
		lst

			(let ((res))
				(progn

					(setf res (s (cdr lst) (- n1 1) (- n2 1) fe se))
				
					(print lst)
					(print res)

					(cond
						((< n2 0)	(cons (car lst) res))
						((= n2 0) 	(cons fe res))
						((< n1 0)	(cons (car lst) res))
						((= n1 0) 	(cons se res))
						(T			(cons (car lst) res))
					)
				)
			)

		;(cons lst1 (cons se (cons lst2 (cons fe lst3))))
	)

)

(defun swap (lst n1 n2)
	(cond 
		((< n1 n2) (s lst n1 n2 0 0))
		(T (s lst n2 n1 0 0))
	)
)

(print (swap '(a b c d e) 1 3))