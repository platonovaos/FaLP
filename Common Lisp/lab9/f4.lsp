(defun select_between (lst)
	(remove Nil
		(mapcar 
			#'(lambda (x)
				(if 
					(< 1 x 10)
					x
				)
			)
			lst
		)
	)
)

(defun sb_rec (lst &optional res)
	(if
		(Null lst) 
		(reverse res)
		
		(if 
			(not (listp (car lst)))

			(if 
				(< 1 (car lst) 10)
				(sb_rec (cdr lst) (cons (car lst) res))
				(sb_rec (cdr lst) res)
			)

			(sb_rec (append (car lst) (cdr lst)) res)
		)
	)
)