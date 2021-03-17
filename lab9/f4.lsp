(defun select_between (lst)
	(remove Nil
		(mapcar 
			#'(lambda (x)
				(if 
					(and (< 1 x) (< x 10))
					x
				)
			)
			lst
		)
	)
)