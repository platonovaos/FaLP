(defun select_between (lst a b)
	(sort
		(remove Nil
			(mapcar 
				#'(lambda (x)
					(if 
						(or
							(and (< a x) (< x b))
							(and (< b x) (< x a))
						)
						x
					)
				)
				lst
			)
		)
		#'<
	)
)
