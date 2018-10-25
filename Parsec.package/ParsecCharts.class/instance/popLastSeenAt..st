recursive-ordering-api
popLastSeenAt: aState

	|s|
	s := self lastSeenAt: aState rule name.
	s isEmpty ifFalse: [ 
		[s isEmpty not and: [ s top x ~= aState index and: [ s top y <= aState to ]]] whileTrue: [ s pop ].
		(s isEmpty not and: [ s top x = aState index and: [ s top y <= aState to ] ]) 
			ifTrue: [ s pop ] ifFalse: [ self halt ]
		
	]