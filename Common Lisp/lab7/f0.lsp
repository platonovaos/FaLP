(defun test (tail head)
	(let ((res))
		(cond
			((Null (cdr tail)) (cons (car tail) 
										(cons head Nil)))

			(T 
				(setf res (test (cdr tail) head))

				(cons 
					(car res)
					(cons 
						(car tail)
						(cdr res))))
		)
	)
)

(defun swap (lst)
	(test (cdr lst) (car lst))
)