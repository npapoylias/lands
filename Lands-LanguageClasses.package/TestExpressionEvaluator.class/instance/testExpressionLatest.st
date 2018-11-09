tests
testExpressionLatest

	|results grammar|
	grammar := GrayGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<number> ::= ''[0-9]+(\.[0-9]+)?''' ==> [:token | token string asNumber].
		'<expression> ::= 
			\ <expression> ("+"|"-") <expression>
			\ <expression> ("*"|"/") <expression>
			| <expression> "^" <expression>
			|| "(" <expression> ")" 
			| <number>
		' ==> { "will be fun to do this with ASL and embed"
			[ :tokens | tokens first perform: tokens second string asSymbol withArguments: { tokens last } ].
			[ :tokens | tokens first perform: tokens second string asSymbol withArguments: { tokens last } ].
			[ :tokens | tokens first raisedTo: tokens last ].
			[ :tokens | tokens second ].
			[ :tokens | tokens ].
		}
	}.

	results := grammar parse: '5*3*4+4/(2-8)^2^3-7' using: GrayMixedOrderedFilteredAlgo  new log."'4+3*4^7^9/7-6'." "5*3*4+4/2-8^2^3-7"
	
	self assert: results eval first = (22254913/419904).

	"self assert: results trees size = 1.
	
	self assert: results results first value = 2417851639229258349412352."

	(GrayTree new 
			startingFrom: results
			withChildren: #childrenForestTraversingTemps 
			named: #rulePrettyName
			forest: #memoizedChildrenForestTraversingTempsAsSet
			size: #memoizedChildrenForestTraversingTempsSize
			popUp: [ :e | results input "you can show the action values also here, optimally per node"
				atAll: (e interval key + 1 to:  e interval value)]
			andEdges: #interval "this should be sent to the children for marking the interval"
			"thatRepeat: false") view.

	