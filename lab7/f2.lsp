(defun belong (s1 s2)
	(if 
		(Null s1)
		T
		
		(if (Null (member (car s1) s2)) 	
			Nil
			(belong (cdr s1) s2)
		)
	)
)

(defun set_equal (s1 s2)
	(if
		(eql (length s1) (length s2))

		(if 
			(and (belong s1 s2) (belong s2 s1))
			'are_equal
			'are_not_equal
		)

		'are_not_equal
	)
)