tests
testLongerExpression

	| grammar |
	grammar := MOGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression> '.
		'<expression> ::= 
			\ <expression> ("+"|"-") <expression>
			\ <expression> ("*"|"/") <expression>
			/ <expression> "^" <expression>
			|| "(" <expression> ")" 
			| <number>' ==> {
					[ :v | v first |> {v second . v third} ].
					[ :v | v first |> {v second . v third}].
					[ :v | v first |> { #raisedTo: . v last } ].
					[ :v | v second ].
					[ :v | v number lit ].
				}.
		'<number> ::= ''[0-9]+(\.[0-9]+)?''' 
	}.


 self assert: (grammar  compileval: '2+4+2+4+2+4+(2+4*5^8)^9^1^1*12*34+82*12*(12*14^6+2*34)-56*12*12^1^1^1') equals: 22648810614981634341187984953195198796879590001557709028850