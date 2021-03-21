(defun alloddr (lst)
	(if 
		(Null lst) 
		T

		(if 
			(not (listp (car lst)))

			(if 
				(oddp (car lst))
				(and (alloddr (cdr lst)) T)
				Nil
			)

			(alloddr (car lst))
		)
	)
)