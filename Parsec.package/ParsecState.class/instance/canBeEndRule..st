accessing
canBeEndRule: aRule
	
	^ (((dRefRightHand indexOf: aRule) + 1 to: dRefRightHand size) 
			detect: [ :i | (dRefRightHand at: i) canBeEmpty not] 
			ifNone: [ 0 ]) = 0
	