changing suspended state
complete: aState

	aState rule isOrdered
		ifTrue: [ |index|
			charts memoizeLastSeenStack. 
			super complete: aState.
			index := self lastSeenIndex at: aState rule name ifAbsent: [ nil ].
			index ifNotNil: [  |recursiveAddedIndex|
				index := index top. 
				recursiveAddedIndex := aState rule parent recursiveIndexOf: index.
				recursiveAddedIndex = -1
					ifTrue: [ charts exitCurrentLastSeenScope ] "a || rule was completed"
			]
		] ifFalse: [super completeUnordered: aState].
	