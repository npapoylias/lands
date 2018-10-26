accessing
canBeEndRule: aRule
	
	^ (((dRefRightHand indexOf: aRule) to: dRefRightHand size) 
			detect: [ :i | (dRefRightHand at: i) canBeEmpty not] 
			ifNone: [ 0 ]) = 0
	