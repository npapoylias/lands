parsing
evaluateActionsFor: aTree on: input

	|childrenTokens|
	
	aTree isEmpty ifTrue: [ ^ nil ].
	
	childrenTokens := OrderedCollection new.
	
	aTree childrenForest first "forests have been seperated already"
			do: [ :child | |tokens|
						tokens := (self evaluateActionsFor: child on: input).
						tokens ifNotNil: [ 
							(aTree isSubRule and: [child isSubRule])
						 		ifTrue: [childrenTokens addAll: tokens ]
						 		ifFalse: [ childrenTokens add: tokens ] 
						]
				]. 
	
	childrenTokens isEmpty ifTrue: [ ^ ParsecToken new with: aTree for: input ].
	(childrenTokens size = 1 and: [ aTree isSubRule not ])
		ifTrue: [ childrenTokens := childrenTokens first ] "single token"
		"ifFalse: [ aTree isSubRule ifTrue: [^ childrenTokens flatten] ]". 
	
  ^ 	(aTree rule action keys includes: aTree rightHandIndex)
			ifTrue: [(aTree rule action at: aTree rightHandIndex) lazyValue: childrenTokens]
			ifFalse: [^ childrenTokens "with: aTree for: input should be ParsecDerivation already"]. 
