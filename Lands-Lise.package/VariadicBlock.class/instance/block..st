accessing
block: aBlock
	initialBlock := aBlock.
	initialBlock argumentCount = 1
		ifTrue: [ block := initialBlock ]
		ifFalse: [ block := [ :args | args reduceLeft: initialBlock ] ]