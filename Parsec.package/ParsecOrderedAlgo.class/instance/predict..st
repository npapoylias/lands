as yet unclassified
predict: aState

	|alter alterIndex|
	(aState expectingAnd or: [ aState expectingNot ]) 
		ifTrue: [ ^ self forkToHandle: aState ].
	
	alter := self recursiveAlternativesFor: aState.
	alter isEmpty ifTrue: [ ^ self ]. "this normally can only happen through TFOAlgo -- fix
	see with the non-peg example"
	(charts currentAdd: alter first)
		ifTrue: [ alterIndex := 1."could be duplicate"alter size to: 2 by: -1  do: [:i| |a| a := (alter at: i). self backTrackAdd: a for: aState]] 
		ifFalse: [  
			|added toStack|
			toStack := OrderedCollection new.
			toStack addFirst:	alter first.
			2 to: alter size do: [ :i | |a|
				a := alter at: i. 
				added ifNotNil: [ toStack add: a ]
						ifNil: [ (charts currentAdd: a) 
										ifTrue: [ alterIndex := i. added := a ]  
										ifFalse: [  toStack addFirst: a ]
								]
				].
			added ifNotNil: [ 
				ruleToAlternativeIndex at: added rule put: alterIndex.
				1 to: toStack size do: [ :i | self backTrackAdd: (toStack at: i) for: aState ]. 
			].
		]. "duplicate"
