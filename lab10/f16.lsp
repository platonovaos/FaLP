(defun change_salary_name (lst condt)
	(mapcar
		#' (lambda (x)
			(if 
				(not (Null (member condt x)))
				(progn
					(setf (cadr x) (+ 2 (cadr x)))
					x
				)
				x
			)
		)
		lst
	)
)

(defun change_salary_age (lst condt)
	(mapcar
		#' (lambda (x)
			(if 
				(> (caddr x) condt)
				(progn
					(setf (cadr x) (+ 2 (cadr x)))
					x
				)
				x
			)
		)
		lst
	)
)

(defun sum_salary (lst)
	(apply #' +
		(mapcar
			#' (lambda (x)
				(cadr x)
			)
			lst
		)
	)
)

(defun hndlr (lst)
	(print (change_salary_name lst 'FIO2))
	(print (change_salary_age lst 19))
	(sum_salary lst)
)

(print
	(hndlr '((FIO1 1 23 W1) 
				(FIO2 2 20 W2)
				(FIO3 4 19 W3))
	)
)