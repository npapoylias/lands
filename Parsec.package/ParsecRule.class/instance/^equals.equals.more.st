logical operations
==> aBlockOrBlocks

	aBlockOrBlocks isCollection
		ifFalse: [ 
			1 to: rightHandSide size do: [ :i | action at: i put: aBlockOrBlocks] ]
		ifTrue: [ aBlockOrBlocks doWithIndex: [ :aBlock :index |  
				action at: index put: aBlock	
		]]
	
	
	