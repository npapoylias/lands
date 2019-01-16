accessing
sanitizeChoice: aChoice havingSeen: seenSet

	^ (aChoice collect: [:c | |r seen|
		r := self at: c.
		seen := seenSet includes: c.
		(seen not 
			and: [ r isSubRule 
			and: [ r isTerminal not 
			and: [ r rightHandSide size = 1 ]]]) ifTrue: [  
				seenSet add: c.
				self sanitizeChoice: r rightHandSide first havingSeen: seenSet copy
		] ifFalse: [ (seen or: [ r isTerminal ]) ifFalse: [ self sanitize: c havingSeen: seenSet copy ]. c ] 
	]) deepFlatten
		