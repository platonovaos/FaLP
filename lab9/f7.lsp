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
(defun ll_rec (lst res)
	(cond 
		((Null lst) res)
		(T (ll_rec (cdr lst) 
					(+ res (length (car lst)))))
	)
)

(defun ll (lst)
	(ll_rec lst 0)
)