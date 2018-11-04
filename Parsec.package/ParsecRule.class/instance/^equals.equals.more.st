logical operations
==> aBlockOrBlocks
	|blocks|
	
	blocks := self annotate: aBlockOrBlocks.
	
	blocks isCollection
		ifFalse: [ 
			1 to: rightHandSide size do: [ :i | action at: i put: blocks] ]
		ifTrue: [ blocks doWithIndex: [ :aBlock :index |  
				action at: index put: aBlock	
		]]
	
	
	