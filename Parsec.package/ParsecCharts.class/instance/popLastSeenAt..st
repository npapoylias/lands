recursive-ordering-api
popLastSeenAt: aState

	|s|
	s := self lastSeenAt: aState rule name.
	s isEmpty ifFalse: [ 
		[s isEmpty not and: [s top x ~= aState index and: [ s top y <= aState to ]]] whileTrue: [ s pop ].
		s isEmpty not ifTrue: [
			self assert: s top x = aState index.
			self assert: s top y <= aState to.
			s pop
		]. 
	]