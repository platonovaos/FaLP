(defun sum_all_rec1 (n)
	(if 
		(> n 0)
		(+ n (sum_all_rec1 (1- n)))
		0
	)
)

(defun sum_all_rec2 (n m sd)
	(if 
		(> n m)
		0
		(+ n (sum_all_rec2 (+ n sd) m sd))
	)
)