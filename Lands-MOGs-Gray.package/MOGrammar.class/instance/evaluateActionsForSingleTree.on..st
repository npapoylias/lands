accessing
evaluateActionsForSingleTree: aTree  on: input

	|childrenTokens childrenStates |
	
	aTree isEmpty ifTrue: [ ^ nil ].
	
	
	childrenTokens := OrderedCollection new.
	childrenStates := aTree childrenStates.
	childrenStates keys sorted do: [ :pos | |tokens child|
						child := (childrenStates at: pos) first.
						tokens := (self evaluateActionsForSingleTree: child on: input).
						tokens ifNotNil: [ 
							(aTree isSubRule and: [child isSubRule])
						 		ifTrue: [childrenTokens addAll: tokens ]
						 		ifFalse: [ childrenTokens add: tokens ] 
						]
				]. 
	
	childrenTokens isEmpty ifTrue: [ ^ GrayToken new with: aTree for: input ].
	(childrenTokens size = 1 and: [ aTree isSubRule not ])
		ifTrue: [ childrenTokens := childrenTokens first ] "single token"
		"ifFalse: [ aTree isSubRule ifTrue: [ ^ childrenTokens flatten] ]". 
	
  ^ 	(aTree rule action keys includes: aTree rightHandIndex)
			ifTrue: [(aTree rule action at: aTree rightHandIndex) lazyValue: childrenTokens]
			ifFalse: [^ childrenTokens "with: aTree for: input should be GrayDerivation already"]. 
