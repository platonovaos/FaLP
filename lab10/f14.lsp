(defun sqrt_rec (lst &optional res)
	(if 
		(Null lst)
		(reverse res)

		(if 
			(numberp (car lst)) 
			(sqrt_rec (cdr lst)
						(cons (* (car lst) (car lst)) res))
			(sqrt_rec (append (car lst) (cdr lst)) res)
		)
	)
)