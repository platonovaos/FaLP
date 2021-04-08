;Вариант 1
(defun stl (head tail)
	(cond
		((Null (cdr tail)) (cons (car tail) 
								 (cons head Nil)))
		(T (cons (car tail) 
				 (stl head (cdr tail))))
	)
)

(defun swap-to-left (lst)
	(stl (car lst) (cdr lst))
)

(defun swap-tl (lst idx)
	(cond 
		((< idx 1) lst)
		((>= idx (length lst)) (stl lst (rem idx (length lst))))
		(T (swap-tl (stl (car lst) (cdr lst)) (- idx 1)))
	)
)


;Вариант 2
(defun str (lst res)
	(cond
		((Null (cdr lst)) lst)
		(T 	(setf res (str (cdr lst) res))
			(cons (car res) 
				  (cons (car lst) (cdr res))))
	)
)

(defun swap-to-right (lst)
	(str lst Nil)
)

(defun swap-tr (lst idx)
	(cond 
		((< idx 1) lst)
		((>= idx (length lst)) (swap_tr lst (rem idx (length lst))))
		(T (swap-tr (str lst Nil) (- idx 1)))
	)
)

(print (swap-tr '(a b c d) 3))
