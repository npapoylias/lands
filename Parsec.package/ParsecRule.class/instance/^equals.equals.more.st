logical operations
==> aBlockOrBlocks

	aBlockOrBlocks isCollection
		ifFalse: [ action at: rightHandSide size put: aBlockOrBlocks ]
		ifTrue: [ aBlockOrBlocks doWithIndex: [ :aBlock :index |  
				action at: index put: aBlock	
		]]
	
	
	