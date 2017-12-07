as yet unclassified
runFilteredWithPPC
		
	self use: ParsecMixedOrderFilteredAlgo.

	^ (self totJson / self ppcJson) asFloat