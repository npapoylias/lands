as yet unclassified
predict: aState

	|alter|
	
	(aState expectingAnd or: [ aState expectingNot ]) 
		ifTrue: [ ^ self forkToHandle: aState ].
	
	alter := self alternativesFor: aState.
	alter isEmpty ifTrue: [ ^ self ]. "this normally can only happen through TFOAlgo -- fix
	see with the non-peg example"
	(charts currentAdd: alter first)
		ifTrue: [ "could be duplicate"2 to: alter size  do: [:i| |a| a := (alter at: i). self backTrackAdd: a]
		] ifFalse: [  
			|added|
			2 to: alter size do: [ :i | |a|
				a := alter at: i. 
				added ifNotNil: [ self backTrackAdd: a ]
						ifNil: [ (charts currentAdd: a) 
										ifTrue: [ added := a ]  
										ifFalse: [  self backTrackAdd: a ]
								]
				]
		] "duplicate"
	