(defun belong (s1 s2)
	(cond
		((Null s1) T)
		((Null (member (car s1) s2)) Nil)
		(T (belong (cdr s1) s2))
	)
)

(defun set_equal (s1 s2)
	(and
		(= (length s1) (length s2))
		(belong s1 s2)
	)
)



