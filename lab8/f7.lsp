(defun multa (lst kf)
	(mapcar #'(lambda (x) (* x kf))
		lst
	)
)

(defun multb (lst kf)
	(mapcar #'(lambda (x) 
		(if (numberp x)
			(* x kf)
			x
		))
		lst
	)
)