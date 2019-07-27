tests
testCallingLisePostcardWithFuncDeclaration

	(:begin 
		(define lisePostCard (lambda (x) false))
		(:self assert: (:lisePostCard 100) equals: false) 
		(:self assert: (: (:self lisePostCard) 100))  
		(:self assert: (:lisePostCard 200) equals: false)
		(:self assert: liseVar class equals: Object))