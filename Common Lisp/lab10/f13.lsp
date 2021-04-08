(defun last_odd (lst &optional res)
	(if 
		(Null lst)
		res

		(if 
			(oddp (car lst))
			(last_odd (cdr lst) (car lst))
			(last_odd (cdr lst) res)
		)
	)
)
