;4 прохода
(defun get-n-elem (n lst)
	(cond 
		((or (< n 0) (>= n (length lst))) Nil)
		((= n 0) (car lst))
		(T (get-n-elem (- n 1) (cdr lst)))
	)
)

(defun set-n-elem (n lst elem)
	(cond 
		((or (< n 0) (>= n (length lst))) Nil)
		((= n 0) (cons elem (cdr lst)))
		(T (cons (car lst) (set-n-elem (- n 1) (cdr lst) elem)))
	)
)

(defun swap-two-ellement (lst num1 num2)
	(let 
		((n1 (- num1 1))
		(n2 (- num2 1))
		(tmp))
		
		(cond 
			((or 
				(< n1 0)
				(< n2 0)

				(>= n1 (length lst))
				(>= n2 (length lst))
			)
			
			Nil)
			
			(T 
				(setf tmp (get-n-elem n1 lst))
				(setf lst (set-n-elem n1 lst (get-n-elem n2 lst)))
				(setf lst (set-n-elem n2 lst tmp)))
		)
		
		lst
	)
)