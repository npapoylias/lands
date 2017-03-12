action
value: input withRoot: aRoot peeking: alternatives

	"optimize by treating alternatives as a special case 
	(ie flag the presense of alternatives and recompute values approprietly)"

	| tokens newAlternatives |
	
	newAlternatives := alternatives.
	
	(alternativeSelf isNotNil and: [ alternatives isNotNil ]) ifTrue: [ 
		(alternativeSelf difference: alternatives) 
			do: [:alternative | aRoot valueRoot: input withAlternatives: (alternatives copy add: alternative; yourself). newAlternatives := nil. ].
		(alternatives intersection: self alternativeSelf) 
			do: [ :alternative |  ^ alternative value: input withRoot: aRoot peeking: nil ].	
	]. 
		"nil flags that a parent alternative has alrady been taken"
			
	self rule isPureTerminal
		ifTrue: [ tokens := ParsecToken new with: self for: input ]
		ifFalse: [ 
			tokens := ParsecCollection new.
			1 to: childrenStates size do: [ :i | 
				| s |
				s := childrenStates at: i. 
				s rule isEmptyOrEof
					ifFalse: [ tokens add: (s value: input withRoot: aRoot peeking: newAlternatives) ] ].
			tokens size == 1 ifTrue: [ tokens := tokens first ].
		].
	^ self action
		ifNil: [ tokens ]
		ifNotNil: [ self action value: tokens ]