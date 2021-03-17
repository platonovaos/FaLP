(defun sum_lst (lst)
	(let ((s 0))
		(mapcar 
			#'(lambda (x)
				(if 
					(numberp x)
					(setf s (+ s x))
				)
			)
			lst
		)
		s
	)
)