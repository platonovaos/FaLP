(defun mappend (lst1 lst2)
	(cond
		((Null lst1) lst2)
		(T (cons (car lst1) (mappend (cdr lst1) lst2)))
	)
)

;Вход числа + символы
;Вывод только числа
(defun sqrt_rec (lst &optional res)
	(cond 
		((Null lst) res)

		((numberp (car lst)) 
			(sqrt_rec (cdr lst)
						(cons (* (car lst) (car lst)) res)))
		
		((listp (car lst)) (sqrt_rec (cons (car lst) (cdr lst)) res))

		(T (sqrt_rec (cdr lst) res))
	)
)


;Вход числа + символы
;Вывод числа + символы
(defun sqrt_rec2 (lst &optional res)
	(cond 
		((Null lst) res)

		((numberp (car lst)) 
			(sqrt_rec2 (cdr lst)
						(cons (* (car lst) (car lst)) res)))
		
		((listp (car lst)) (sqrt_rec2 (mappend (car lst) (cdr lst)) res))

		(T (sqrt_rec2 (cdr lst) (mappend (list (car lst)) res)))
	)
)


;Вход числа + символы
;Вывод сохранение структуры
(defun sqrt_rec3 (lst &optional res)
	(cond 
		((Null lst) (reverse res))

		((numberp (car lst)) 
			(sqrt_rec2 (cdr lst)
						(cons (* (car lst) (car lst)) res)))
		
		((listp (car lst)) (sqrt_rec2 (mappend (car lst) (cdr lst)) res))

		(T (sqrt_rec2 (cdr lst) (mappend (list (car lst)) res)))
	)
)