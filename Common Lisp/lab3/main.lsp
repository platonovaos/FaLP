(defun flist (a b c d e f g h i)
	(list a 
		(list b 
			(list c)
		) d 
		(list 
			(list e) (list f) (list g)
		) h 
		(list 
			(list i)
		)
	)
)


(defun clist (a b c d e f g h i)
	(cons a 
		(cons 
			(cons b 
				(cons 
					(cons c Nil) 
					Nil)
				) 
			(cons d 
				(cons 
					(cons 
						(cons e Nil) 
					(cons 
						(cons f Nil) 
						(cons 
							(cons g Nil) 
							Nil)
						)
					) 
				(cons h 
					(cons 
						(cons 
							(cons i Nil) 
							Nil) 
						Nil)
					)
				)
			)
		)		
	)
)




