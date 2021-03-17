(defun len_lol (lst)
	(apply #' +
		(mapcar 
			#' (lambda (x)
				(length x)
			)
			lst
		)
	)
)