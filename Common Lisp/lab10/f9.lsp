(defun rec_nth (n lst)
	(if (zerop n)
		(car lst)
		(rec_nth (1- n) (cdr lst))
	)
)

(print (rec_nth 3 '(a b (c) ((d)) ((e)))))