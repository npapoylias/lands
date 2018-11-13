tests
test

	(:gdefine 'twice (lambda (x) (* 2 x))).
	self assert: (:twice 5) = 10.
	(:gdefine 'compose (lambda (f g) (lambda (x) (f (g x))))). 
	self assert: (:(compose list twice)  5) = {10}. 
	self assert: (:+ 1 2) equals: 3.
	self assert: (:[Object name]) equals: #Object