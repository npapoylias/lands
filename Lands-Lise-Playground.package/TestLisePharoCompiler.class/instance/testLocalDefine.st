tests
testLocalDefine

	(:define m (lambda (x) (* 2 x))).
	self assert: (:m 5) = 10.
	(:define k (lambda (f g) (lambda (x) (f (g x))))). 
	self assert: (:(k list m)  5) = {10}  