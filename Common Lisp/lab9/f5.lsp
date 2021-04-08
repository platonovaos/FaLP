;Вариант 1
(defun dec_mul (lst1 lst2)
	(mapcar 
		#' (lambda (x)
			(mapcar
				#' (lambda (y)
					(list x y)
				)
				lst2
			)
		)
		lst1
	)	
)


;Вариант 2
(defun dm_rec (nlst1 lst2 lst1 res)
	(cond 
		((Null lst2) res)
		((Null nlst1) (dm_rec lst1 (cdr lst2) lst1 res))
		
		(T (dm_rec (cdr nlst1) 
					lst2
					lst1 
					(cons (list (car nlst1) (car lst2)) res)))
	)
)

(defun dm (lst1 lst2)
	(dm_rec lst1 lst2 lst1 ())
)
