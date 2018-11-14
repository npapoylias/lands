tests
miscTest

	(:gdefine 'twice (lambda (x) (* 2 x))).
	self assert: (:twice 5) = 10.
	(:gdefine 'compose (lambda (f g) (lambda (x) (f (g x))))). 
	self assert: (:(compose list twice)  5) = {10}. 
	self assert: (:+ 1 2 3) equals: 6.
	self assert: ((:dict (list (cons #key 1))) at: #key) equals: 1. 