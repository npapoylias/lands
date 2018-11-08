tests
testNorvig
   
	"ops with | use the compiler rather than the interpreter"
 
   self assert: (LiseCompiler compileval: '(define twice (lambda (x) (* 2 x)))') class = UserProcedure.
	self assert: (LiseCompiler compileval: '(twice 5)') = 10.
	"enough of these -- use helper method"
	'(define compose (lambda (f g) (lambda (x) (f (g x)))))' 
		|->? UserProcedure. 
	'((compose list twice) 5)' 
		|=? { 10 } asOrderedCollection.
	'(define repeat (lambda (f) (compose f f)))' 
		|->? UserProcedure.
	'((repeat twice) 5)' 
		|=? 20. 
	'((repeat (repeat twice)) 5)' 
		|=? 80.
   '(define fact (lambda (n) (if (<= n 1) 1 (* n (fact (- n 1))))))' 
		|->? UserProcedure.
   '(fact 3)' 
		|=? 6.
   '(fact 50)' 
		|=? 30414093201713378043612608166064768844377641568960512000000000000.
	'(define abs (lambda (n) ((if (> n 0) + -) 0 n)))' 
		|->? UserProcedure.
    '(list (abs -3) (abs 0) (abs 3))' 
		|=? {3 . 0 . 3 } asOrderedCollection.
    '(define combine (lambda (f)
    	(lambda (x y)
      (if (null x) (quote ())
          (f (list (car x) (car y))
             ((combine f) (cdr x) (cdr y)))))))'
		|->? UserProcedure.
	 '(null (cdr (quote ())))' |=? true.
    '(define zip (combine cons))' 
		|->? UserProcedure.
    '(zip (list 1 2 3 4) (list 5 6 7 8))' 
		|=? {{1. 5} asOrderedCollection . {2 . 6} asOrderedCollection . {3 . 7} asOrderedCollection . {4 . 8} asOrderedCollection} asOrderedCollection.
    '(define riff-shuffle (lambda (deck) (begin
    	(define take 
			(lambda (n seq) (if (<= n 0) (quote ()) (cons (car seq) (take (- n 1) (cdr seq))))))
    (define drop 
			(lambda (n seq) (if (<= n 0) seq (drop (- n 1) (cdr seq)))))
    (define mid 
			(lambda (seq) (floor (/ (length seq) 2))))
    ((combine append) (take (mid deck) deck) (drop (mid deck) deck))
		)))'
		|->? UserProcedure.
    '(riff-shuffle (list 1 2 3 4 5 6 7 8))' 
		|=? {1 . 5. 2. 6. 3. 7. 4. 8} asOrderedCollection.
    '((repeat riff-shuffle) (list 1 2 3 4 5 6 7 8))' 
		|=? {1 . 3 . 5 . 7 . 2 . 4 . 6 . 8} asOrderedCollection.
    '(riff-shuffle (riff-shuffle (riff-shuffle (list 1 2 3 4 5 6 7 8))))' 
		|=? {1 . 2 . 3 . 4 . 5 . 6 . 7 . 8} asOrderedCollection