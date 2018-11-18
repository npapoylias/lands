recursive-ordering-api
popLastSeenAt: aState

	|s|

	s := self lastSeenAt: aState rule name.
	"aState rule name = #expression ifTrue: [ self halt ]."
	s isEmpty ifFalse: [ 
		[s isEmpty not and: [ s top y <= aState to ]] whileTrue: [ s pop ].
		"[s isEmpty not and: [ s top x = aState index and: [ s top y <= aState to ] ]] 
			whileTrue: [ s pop ]" "ifFalse: [ s isEmpty ifFalse: [self halt] ]"
		
	]