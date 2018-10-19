*Parsec
<-> temps

	(temps isEmpty not and: [temps first isToken]) ifTrue: [ 
		leftBar := temps first from.
		rightBar := temps last to
	]	