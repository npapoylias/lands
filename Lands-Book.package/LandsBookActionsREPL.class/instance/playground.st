not defined category
playground
grammar := MOGrammar new
		named: #ExpressionGrammar;
		with: { 
		'<start> ::= <expression>'.
		'<expression> ::= 
			\ <expression> ("+"|"-") <expression>
			\ <expression> ("*"|"/") <expression>
			| <expression> "^" <expression>
			|| "(" <expression> ")" 
			| <number>
		' ==> {
			[ :v | v first |> {v second . v third} ].
			[ :v | v first |> {v second . v third}].
			[ :v | v first |> { #raisedTo: . v last } ].
			[ :v | v second ].
			[ :v | v number lit ].
		}.
		'<number> ::= ''[0-9]+(\.[0-9]+)?'''.
	}.
	
grammar  parseview: '(2*3^4^5)+(6*7/8)'.

grammar parseval: '(2*3^4^5)+(6*7/8)'.

grammar compileval: '(2*3^4^5)+(6*7/8)'.

self assert: (grammar compileval: '(2*3^4^5)+(6*7/8)') rounded equals: 746783697482040087065919508369733176450819553567468015501273863444158081234530502459987377877607954440937530130862950316217454109184321717162702673965618374628383497188525161877614039903912808571143636082093362577594805851035336024681234596793149463238304773446092470251869792117181176569309587081011872404753095614885461164289054117977512502905635586826704283841489246055037458370865724751474127970970638952833852527639945774013814027798513048594397055397498548392553622121404667420712967