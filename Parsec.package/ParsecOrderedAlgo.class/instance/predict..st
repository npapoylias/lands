as yet unclassified
predict: aState

	|alter|
	
	(aState expectingAnd or: [ aState expectingNot ]) 
		ifTrue: [ ^ self forkToHandle: aState ].
	
	alter := self alternativesFor: aState.
	alter isEmpty ifTrue: [ ^ self ]. "this normally can only happen through TFOAlgo -- fix
	see with the non-peg example"
	(charts currentAdd: alter first)
		ifTrue: [ "could be duplicate"2 to: alter size  do: [:i| |a| a := (alter at: i). self backTrackAdd: a for: aState]
		] ifFalse: [  
			|added toStack|
			toStack := ParsecCollection new.
			toStack add:	alter first.
			2 to: alter size do: [ :i | |a|
				a := alter at: i. 
				added ifNotNil: [ toStack add: a ]
						ifNil: [ (charts currentAdd: a) 
										ifTrue: [ added := a ]  
										ifFalse: [  toStack add: a ]
								]
				].
			added ifNotNil: [ 1 to: toStack size do: [ :i | self backTrackAdd: (toStack at: i) for: aState ] ].
		]. "duplicate"
