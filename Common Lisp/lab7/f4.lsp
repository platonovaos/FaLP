;Вариант 1
;3 прохода
(defun swap-fl (lst)
	(let 
		((firstE (car lst))
		(lastE (car (last lst)))
		(lstWFL (cdr (reverse (cdr lst)))))

		(cons lastE 
			(reverse (cons firstE lstWFL))
		)
	)
)


;Вариант 2
;2 прохода
(defun get-last (lst)
	(cond
		((Null (cdr lst)) (car lst))
		(T (get-last (cdr lst)))
	)
)

(defun set-last (lst elem)
	(cond 
		((Null (cdr lst)) (setf (car lst) elem))
		(T (set-last (cdr lst) elem))
	)
)

(defun swap-fl2 (lst)
	(let 
		((tmp (car lst)))

		(setf (car lst) (get-last lst))
		(set-last lst tmp)
	)
	lst
)


;Вариант 3
;1 проход
(defun swap (tail head res)
	(cond
		((Null (cdr tail)) (cons (car tail) 
								 (cons head Nil)))

		(T 	(setf res (swap (cdr tail) head res))
			
			(cons (car res)
				  (cons (car tail)
					    (cdr res))))
	)
)

(defun swap-fl3 (lst)
	(swap (cdr lst) (car lst) Nil)
)
