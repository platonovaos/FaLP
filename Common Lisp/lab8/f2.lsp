(defun dec (lst)
	(mapcar 
		#' (lambda(x)
				(if (numberp x)
					(- x 10)
					x
				)
			)
		lst
	)
)
