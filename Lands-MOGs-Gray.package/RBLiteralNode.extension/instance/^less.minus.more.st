*Lands-MOGs-Gray
<-> aListOfTokensOrNodes

	aListOfTokensOrNodes isToken
		ifTrue: [ 
			start := aListOfTokensOrNodes start. stop := aListOfTokensOrNodes stop 
		] ifFalse: [ 
			start := aListOfTokensOrNodes first start.
			stop := aListOfTokensOrNodes last stop
		]