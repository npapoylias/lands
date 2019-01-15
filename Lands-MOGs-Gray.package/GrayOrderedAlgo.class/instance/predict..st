as yet unclassified
predict: aState

	|alter added|
	(aState expectingAnd or: [ aState expectingNot ]) 
		ifTrue: [ ^ self forkToHandle: aState ].
	
	alter := (self computeAlternativesFor: aState) select: [ :s | s isNotNil ].
	alter isEmpty ifTrue: [ ^ self ]. "this normally can only happen through TFOAlgo -- fix
	see with the non-peg example"
	(charts currentAdd: alter first)
		ifTrue: [ added := alter first."could be duplicate"alter size to: 2 by: -1 "2 to: alter size" do: [:i| |a| a := (alter at: i). self backTrackAdd: a for: aState]] 
		ifFalse: [  
			| toStack|
			toStack := GrayCollection new.
			toStack add:	alter first.
			2 to: alter size do: [ :i | |a|
				a := alter at: i. 
				added ifNotNil: [ toStack add: a ]
						ifNil: [ (charts currentAdd: a) 
										ifTrue: [ added := a ]  
										ifFalse: [  toStack add: a ]
								]
				].
			added ifNotNil: [ 
				toStack size to: 1 by: -1 do: [ :i | self backTrackAdd: (toStack at: i) for: aState ]. 
			].
		]. "duplicate"
	
	^ added
