;Вариант 1
(defun swap_first_last (lst)
	(or
		(rotatef 
				(car lst) 
				(car (last lst))
		) 
		lst
	)
)

;Вариант 2
(defun swap_fl (lst)
	(let 
		((firstE (car lst))
		(lastE (car (last lst)))
		(lstWFL (reverse (cdr (reverse (cdr lst))))))

		(append (list lastE) lstWFL (list firstE))
	)
)

;Вариант 3
(defun swap_fl2 (lst)
	(let 
		((firstE (car lst))
		(lastE (car (last lst)))

		(setf (car lst) lastE)
		(setf (car (last lst)) firstE)

		lst
	)
)