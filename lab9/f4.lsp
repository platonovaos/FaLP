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

(defun sb_rec (lst res)
	(cond 
		((Null lst) (reverse res))
		
		((and (< 1 (car lst)) (< (car lst) 10))
			(sb_rec (cdr lst) (cons (car lst) res)))

		(T (sb_rec (cdr lst) res))
	)
)

(defun sb (lst)
	(sb_rec lst ())
)