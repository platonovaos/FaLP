;Вариант 1
(defun swap_two_ellement (lst num1 num2)
	(let 
		((n1 (- num1 1))
		(n2 (- num2 1)))
		
		(if 
			(or 
				(< n1 0)
				(< n2 0)

				(>= n1 (length lst))
				(>= n2 (length lst))
			)
			
			Nil
			
			(rotatef 
				(nth n1 lst)
				(nth n2 lst)
			)
		)
		
		lst
	)
)


;Вариант 2
(defun swap_te (lst num1 num2)
	(let 
		((n1 (- num1 1))
		(n2 (- num2 1)))
		
		(if 
			(or 
				(< n1 0)
				(< n2 0)
				
				(>= n1 (length lst))
				(>= n2 (length lst))
			)
			
			Nil
			
			(append (subseq lst 0 n1)
					(list (nth n2 lst))
					(subseq lst num1 n2)
					(list (nth n1 lst))
					(nthcdr num2 lst)
			)
		)
	)
)

;Вариант 3
(defun swap_te2 (lst num1 num2)
	(let 
		((n1 (- num1 1))
		(n2 (- num2 1))
		(e1 0)
		(e2 0))
		
		(if 
			(or 
				(< n1 0)
				(< n2 0)
				
				(>= n1 (length lst))
				(>= n2 (length lst))
			)
			
			Nil
			
			(progn
				(setf e1 (nth n1 lst))
				(setf e2 (nth n2 lst))
				(setf (nth n1 lst) e2)
				(setf (nth n2 lst) e1)
				lst
			)
		)
	)
)