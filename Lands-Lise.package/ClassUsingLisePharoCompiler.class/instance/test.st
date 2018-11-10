tests
test

	self assert: (:begin 
		(gdefine 'twice (lambda (x) (* 2 x))) 
		(twice 5)) = 10