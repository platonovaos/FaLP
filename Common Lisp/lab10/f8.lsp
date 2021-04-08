(defun rec_add (lst)
	(cond
		((Null lst) 0)
		((numberp (car lst)) (+ (car lst) (rec_add (cdr lst))))
		(T (+ (rec_add (car lst)) (rec_add (cdr lst))))
	)
)

(print (rec_add '(1 (2) 3 4 ((5)))))
