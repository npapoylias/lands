adding
markFailureFor: aState

	aState ifNotNil: [
				(aState canBeCompleted and: [aState isStarting not]) ifFalse: [ 
						(failures at: aState fromTerminal + 1 ifAbsentPut: [GrayCollection new]) add: aState.
				].
				self do: [ :s | (s state equalTo: aState) ifTrue: [ s failed ] ]
	]