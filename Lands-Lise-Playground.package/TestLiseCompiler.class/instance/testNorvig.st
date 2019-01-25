tests
testNorvig
   
	"ops with | use the compiler rather than the interpreter, 
	use gdefine / gset with symbols
	promote to special forms if needed, or just straight up 
	use macros when avail."
  
   self assert: (LiseCompiler compileval: '(gdefine ''twice (lambda (x) (* 2 x)))') class = BlockClosure.
	self assert: (LiseCompiler compileval: '(twice 5)') = 10.
	"enough of these -- use helper method"
	'(gdefine ''compose (lambda (f g) (lambda (x) (f (g x)))))' 
		|->? BlockClosure. 
	'((compose list twice) 5)' 
		|=? { 10 }.
	'(gdefine ''repeat (lambda (f) (compose f f)))' 
		|->? BlockClosure.
	'((repeat twice) 5)' 
		|=? 20. 
	'((repeat (repeat twice)) 5)' 
		|=? 80.
   '(gdefine ''fact (lambda (n) (if (<= n 1) 1 (* n (fact (- n 1))))))' 
		|->? BlockClosure.
   '(fact 3)' 
		|=? 6.
   '(fact 50)' 
		|=? 30414093201713378043612608166064768844377641568960512000000000000.
	'(gdefine ''abs (lambda (n) ((if (> n 0) + -) 0 n)))' 
		|->? BlockClosure.
    '(list (abs -3) (abs 0) (abs 3))' 
		|=? {3 . 0 . 3 }.
    '(gdefine ''combine (lambda (f)
    	(lambda (x y)
      (if (null x) (quote ())
          (f (list (car x) (car y))
             ((combine f) (cdr x) (cdr y)))))))'
		|->? BlockClosure.
	 '(null (cdr (quote ())))' |=? true.
    '(gdefine ''zip (combine cons))' 
		|->? BlockClosure.
    '(zip (list 1 2 3 4) (list 5 6 7 8))' 
		|=? {{1. 5} . {2 . 6} . {3 . 7} . {4 . 8} } .
    '(gdefine ''riff-shuffle (lambda (deck) (begin
    	(define take 
			(lambda (n seq) (if (<= n 0) (quote ()) (cons (car seq) (take (- n 1) (cdr seq))))))
    (define drop 
			(lambda (n seq) (if (<= n 0) seq (drop (- n 1) (cdr seq)))))
    (define mid 
			(lambda (seq) (floor (/ (length seq) 2))))
    ((combine append) (take (mid deck) deck) (drop (mid deck) deck))
		)))'
		|->? BlockClosure.
    '(riff-shuffle (list 1 2 3 4 5 6 7 8))' 
		|=? {1 . 5. 2. 6. 3. 7. 4. 8}.
    '((repeat riff-shuffle) (list 1 2 3 4 5 6 7 8))' 
		|=? {1 . 3 . 5 . 7 . 2 . 4 . 6 . 8}.
    '(riff-shuffle (riff-shuffle (riff-shuffle (list 1 2 3 4 5 6 7 8))))' 
		|=? {1 . 2 . 3 . 4 . 5 . 6 . 7 . 8}