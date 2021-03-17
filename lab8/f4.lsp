(defun sum_lst (lst)
	(apply #' +
		(mapcar 
			#'(lambda (x)
				(if 
					(numberp x)
					x
				)
			)
			lst
		)
	)
)