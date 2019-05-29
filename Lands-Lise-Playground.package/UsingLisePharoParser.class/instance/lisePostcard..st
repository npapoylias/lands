as yet unclassified
lisePostcard: x
	<menu: 3 priority: #'-34'>
 	
	^ (:begin	
			(define y (+ #[100] (self 'bSize) ('bSize super)))  
			(define d (dict '()))   
   
			(if (& true (not false) (isNil nil)) (begin 
					(define inter (groupByHaving 
											(intersection 
												(list $a ('class #a) -4e-2 -10r2 3s2) 
												(list $b #b -0.04 -2 3))
											(lambda (i) (class i))
											(lambda (group) (> (size group) 1))))
					
					(define step (lambda (i) (set y (+ y i))))
					 
					(whileTrue (lambda () (< (+ (y 'first) x) 255)) (lambda () (step x)))
					
					(do inter (lambda (item) (begin
						(define t ('name (class item)))
						(:t copyFrom: 1 to: t size -1) 
				 		(atPut d t item)
				 		(print t ' ')
						(print item ' ')))) 
			) (self 'halt))
			
		(< x (y 'first)))