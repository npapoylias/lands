parsing
evaluateActionsFor: aTree on: input

	|childrenTokens|
	
	childrenTokens := aTree childrenForest first "forests have been seperated already"
		collect: [ :child | self evaluateActionsFor: child on: input ].
	
	childrenTokens isEmpty ifTrue: [ ^ ParsecToken new with: aTree for: input ].
	childrenTokens size = 1 ifTrue: [ childrenTokens := childrenTokens first ]. "single token"
	
  ^ 	(aTree rule action keys includes: aTree rightHandIndex)
			ifTrue: [(aTree rule action at: aTree rightHandIndex) value: childrenTokens]
			ifFalse: [^ childrenTokens "with: aTree for: input should be ParsecDerivation already"]. 
