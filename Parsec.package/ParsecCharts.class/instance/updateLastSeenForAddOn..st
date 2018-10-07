recursive-ordering
updateLastSeenForAddOn: aState
	"aState rule name = #message ifTrue: [ self halt ]."
	aState isComplete ifTrue: [ ^ self updateLastSeenOnCompleteFor: aState].
	"aState rule ifNil: [ ^ self ]."
	aState rule isOrdered 
		ifTrue: [   
			(aState rule recursiveIndexOf: aState index) = -1
				ifTrue: [ self enterNewLastSeenScope ]
				ifFalse: [ (self lastSeenIndex at: aState rule name ifAbsentPut: [ Stack new ]) push: aState index].
		]