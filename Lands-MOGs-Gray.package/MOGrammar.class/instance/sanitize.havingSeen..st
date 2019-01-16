accessing
sanitize: aRule havingSeen: seenSet
	|newRightHandSide|
	seenSet add: aRule.
	newRightHandSide := 
		(self at: aRule) rightHandSide collect: [ :choice | self sanitizeChoice: choice havingSeen: seenSet copy ].
	(self at: aRule) rightHandSide: newRightHandSide.
	^ self at: aRule