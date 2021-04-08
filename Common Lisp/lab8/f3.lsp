(defun get_first (lst)
	(if 
		(Null lst)
		Nil
		
		(if 
			(and 
				(listp (car lst))
				(not (Null (car lst))))
			(car lst)
			(get_first (cdr lst))
		)
	)
)
