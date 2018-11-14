as yet unclassified
liseMixedPostcard: x
	<menu: 3 priority: #'-34'>
   
	|y d|  
	y := (:+ #[100] (self 'bSize)) + super bSize.  
	(:set d (:Dictionary new)). 
   
	(:if (:true & false not & nil isNil) [  
  		|inter step| 
		inter := (:groupByHaving 
							(:{$a. #a class. -4e-2. -10r2. 3s2} intersection: #($b b -0.04 -2 3))
							(lambda (i) (class i))
							[ :group | group size > 1 ]).
		
		step := [:i | y := y + i ].
	
		(:whileTrue [y first + x < 255] (lambda () (step x))).
	
		inter do: (:lambda (item) (begin
						(define t ('name (class item))) 
				 		(:d at: t put: item)
				 		(print t ' ')
						(print item ' '))) 
	] (self 'halt))

	^ (:< x  (:y first))