;Вариант 1
(defun swap_to_left (lst)
	(append (cdr lst) 
			(list (car lst))
	)
)

(defun swap_to_right (lst)
	(let ((lastidx (- (length lst) 1)))
	
		(append (last lst)
				(subseq lst 0 lastidx)
		)
	)
)


;Вариант 2
(defun swap_tl (lst idx)
	(cond 
		((< idx 1) lst)
		((>= idx (length lst)) (swap_tl lst (rem idx (length lst))))
		(T (swap_tl 
				(append (cdr lst) 
						(list (car lst))) 
				(- idx 1)))
	)
)

(defun swap_tr (lst idx)
	(cond 
		((< idx 1) lst)
		((>= idx (length lst)) (swap_tr lst (rem idx (length lst))))
		(T (swap_tr 
				(append (last lst) 
						(subseq lst 0 (- (length lst) 1)))
				(- idx 1)))
	)
)
