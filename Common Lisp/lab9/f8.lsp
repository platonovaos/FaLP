(defun sqrt_rec (lst &optional res)
	(cond 
		((Null lst) (reverse res))
		((numberp (car lst)) 
			(sqrt_rec (cdr lst)
						(cons (* (car lst) (car lst)) res)))
	)
)
