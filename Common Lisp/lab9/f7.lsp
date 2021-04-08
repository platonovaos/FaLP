;Вариант1
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

;Вариант 2
(defun ll_rec (lst)
	(if 
		(Null lst) 
		0
		(+ (length (car lst)) (ll_rec (cdr lst)))
	)
)
