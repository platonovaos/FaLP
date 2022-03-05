(defun s (lst)
	(cond 
		((Null lst) 0)
		((numberp (car lst)) (+ (car lst) (s (cdr lst))))
		(T (+ (s (car lst)) (s (cdr lst))))
	)
)