tests
testCdrCarCons

	self assert: (:cons (car (cdr '(3434.3 afsdf ''asdfasdfas'' 5))) '(5)) = {#afsdf . 5 } 