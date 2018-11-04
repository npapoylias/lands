logical operations
annotate: aBlockOrBlocks
	
	annotated ifFalse: [ ^ aBlockOrBlocks ].
	
	^ aBlockOrBlocks isCollection
		ifFalse: [ 
			[ :value | self name -> (aBlockOrBlocks value: value) ]
		] ifTrue: [ 
			aBlockOrBlocks collect: [ :b | [ :value | self name -> (b value: value) ] ]
		]
	
	
	