;Вариант 1
(defun swap_two_ellement (lst num1 num2)
	(let 
		((n1 (- num1 1))
		(n2 (- num2 1)))
		
		(if 
			(or 
				(< n1 0)
				(< n2 0)
				
				(> n1 (length lst))
				(> n2 (length lst))
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
				(> n1 (length lst))
				(> n2 (length lst))
			)
			
			Nil
			
			(append 
			)
		)
	)
)