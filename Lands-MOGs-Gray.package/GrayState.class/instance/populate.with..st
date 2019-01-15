action
populate: aForest with: childOrChildren

	childOrChildren isCollection
		ifFalse: [ | recurseWith |
			(self isValidChild: childOrChildren) ifFalse: [ ^ aForest ].
			childOrChildren rule isTerminal
				ifFalse: [ 
					childOrChildren childrenForest size > 1
						ifTrue: [ ^ self populate: aForest with: (self forested: childOrChildren) ] ].
			aForest do: [ :tree | tree add: childOrChildren ].
			recurseWith := (childrenStates
				at: childOrChildren to
				ifAbsent: [ {} asGrayCollection ]) copy
				select: [ :cState | cState isEmpty not ].
			recurseWith isEmpty
				ifTrue: [ ^ aForest ].
			self populate: aForest with: recurseWith ]
		ifTrue: [ | newForests |
			newForests := childOrChildren allButFirst
				collect:
					[ :child | self populate: (aForest collect: [ :tree | tree copy ]) with: child ].
			self populate: aForest with: childOrChildren first.
			newForests do: [ :forest | aForest addAll: forest ] ].
	^ aForest