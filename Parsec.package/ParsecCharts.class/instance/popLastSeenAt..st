recursive-ordering-api
popLastSeenAt: aState

	|s|
	s := self lastSeenAt: aState rule name.
	s isEmpty ifFalse: [ 
		[s isEmpty not and: [s top ~= aState index and: [ s top y <= aState to ]]] whileTrue: [ s pop ].
		"self assert: s top = aState index.
		self assert: s top y <= aState to."
		s isEmpty not ifTrue: [s pop]. 
	]