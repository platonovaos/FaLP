(defun get_last_rec (lst)
	(if 
		(Null (cdr lst))
		(car lst)
		(get_last_rec (cdr lst))
	)
)
