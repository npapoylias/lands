changing suspended state
complete: aState

	aState rule isOrdered
		ifTrue: [ |index|
			charts memoizeLastSeenStack. 
			super complete: aState.
			index := charts lastSeenIndex at: aState rule name ifAbsent: [ nil ].
			(index isNil or: [index isEmpty]) ifFalse: [  |recursiveAddedIndex|
				index := index top. 
				recursiveAddedIndex := aState rule recursiveIndexOf: aState rightHandIndex.
				recursiveAddedIndex = -1
					ifTrue: [ charts exitCurrentLastSeenScope ] "a || rule was completed"
			]
		] ifFalse: [super completeUnordered: aState].
	