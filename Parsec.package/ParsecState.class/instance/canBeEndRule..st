accessing
canBeEndRule: aRule
	
	|nonEmptyIndex|
	
	nonEmptyIndex := ((dRefRightHand indexOf: aRule) to: dRefRightHand size) 
		detect: [ :i | |r|
			r := dRefRightHand at: i.
			(r canBeEmpty or: [ r isEof ]) not
		] ifNone: [ 0 ].
	
	^ nonEmptyIndex = 0