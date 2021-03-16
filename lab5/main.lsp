(defun f1 (x y)
	(if (= x y)
		'the_same
		(if (equal x y)
			'the_same
			(if (oddp x)
				(if (oddp y)
					'both_odd
					'difference
				)
				(if (evenp y)
					'both_even
					'difference
				)
			)
		)
	)
)

(defun f2 (x y)
	(or 
		(and
			(or (= x y) (equal x y))
			'the_same)
		
		(and (evenp x) (evenp y) 'both_even)
		
		(and (oddp x) (oddp y) 'both_odd)

		'difference
	)
)