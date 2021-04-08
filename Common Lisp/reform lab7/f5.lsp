;Вариант 1

(defun s (lst n1 n2 
			fe se lst1 lst2 lst3)

	(if (not (Null (car lst)))
		(progn
			(cond 	
				((> n1 0) 	(setf lst1 (append lst1 (list (car lst)))))
				((= n1 0) 	(setf fe (car lst))) 
				((> n2 0) 	(setf lst2 (append lst2 (list (car lst)))))
				((= n2 0) 	(setf se (car lst)))
				(T 			(setf lst3 (append lst3 (list (car lst)))))
			)

			(print n1)
			(print n2)
			(print lst1)
			(print fe)
			(s (cdr lst) (- n1 1) (- n2 1) fe se lst1 lst2 lst3)

		)
		(append lst1 (list se) lst2 (list fe) lst3)
	)
)

(defun swap (lst n1 n2)
	(s lst n1 n2 0 0 Nil Nil Nil)
)


;Вариант 2
;(defun get-n-elem (lst n)
;	(cond 
;		((or (< n 0) (>= n (length lst))) Nil)
;		((= n 0) (car lst))
;		(T (get-n-elem (cdr lst) (- n 1)))
;	)
;)

;(defun swap-two-ellement (lst num1 num2)
;	(let 
;		((n1 (- num1 1))
;		(n2 (- num2 1))
;		(tmp))
;		
;		(cond 
;			((or 
;				(< n1 0)
;				(< n2 0)
;
;				(>= n1 (length lst))
;				(>= n2 (length lst))
;			)
;			
;			Nil)
;			
;			(T 
;				(setf tmp (nth n1 lst))
;				(setf (nth n1 lst) (nth n2 lst))
;				(setf (nth n2 lst) tmp))
;		)
;		
;		lst
;	)
;)


;Вариант 2
;(defun swap_te (lst num1 num2)
;	(let 
;		((n1 (- num1 1))
;		(n2 (- num2 1)))
;		
;		(if 
;			(or 
;				(< n1 0)
;				(< n2 0)
;				
;				(>= n1 (length lst))
;				(>= n2 (length lst))
;			)
;			
;			Nil
;			
;			(append (subseq lst 0 n1)
;					(list (nth n2 lst))
;					(subseq lst num1 n2)
;					(list (nth n1 lst))
;					(nthcdr num2 lst)
;			)
;		)
;	)
;)

;Вариант 3
;(defun swap_te2 (lst num1 num2)
;	(let 
;		((n1 (- num1 1))
;		(n2 (- num2 1))
;		(e1 0)
;		(e2 0))
;		
;		(if 
;			(or 
;				(< n1 0)
;				(< n2 0)
;				
;				(>= n1 (length lst))
;				(>= n2 (length lst))
;			)
;			
;			Nil
;			
;			(progn
;				(setf e1 (nth n1 lst))
;				(setf e2 (nth n2 lst))
;				(setf (nth n1 lst) e2)
;				(setf (nth n2 lst) e1)
;				lst
;			)
;		)
;	)
;)
