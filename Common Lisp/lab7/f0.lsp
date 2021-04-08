(defun test (lst)
	(let ((res))
		(cond
			((Null (cddr lst)) (cons (cdr lst) 
										(cons (car lst) Nil)))

			(T 
				(setf res (test (cdr lst)))

				(cons 
					(car res)
					(cons 
						(car lst)
						(cdr res))))
		)
	)
)

(defun swap (lst)
	(cons (test (cdr lst)) (car lst))
)
