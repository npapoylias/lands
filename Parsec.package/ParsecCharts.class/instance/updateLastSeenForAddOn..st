recursive-ordering
updateLastSeenForAddOn: aState
	"aState rule name = #message ifTrue: [ self halt ]."
	aState isComplete ifTrue: [ ^ self updateLastSeenOnCompleteFor: aState].
	aState rule recParent ifNil: [ ^ self ].
	aState rule recParent isOrdered 
		ifTrue: [   
			(aState rule recParent recursiveIndexOf: aState index) = -1
				ifTrue: [ self enterNewLastSeenScope ]
				ifFalse: [ (self lastSeenIndex at: aState rule recParent name ifAbsentPut: [ Stack new ]) push: aState index].
		]