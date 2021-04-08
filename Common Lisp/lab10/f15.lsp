(defun select_odd (lst &optional res)
	(if 
		(Null lst)
		(reverse res)
			
		(if 
			(numberp (car lst))

			(if 	
				(oddp (car lst))
				(select_odd (cdr lst) (cons (car lst) res))
				(select_odd (cdr lst) res)
			)

			(select_odd (append (car lst) (cdr lst)) res)
		)
	)
)

(defun so (lst)
	(remove Nil
		(mapcar
			#' (lambda (x)
				(if 
					(oddp x)
					x
				)
			)
			lst
		)
	)
)
