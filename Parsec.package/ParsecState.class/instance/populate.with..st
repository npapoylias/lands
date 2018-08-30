action
populate: aForest with: childOrChildren 

	childOrChildren isCollection 
		ifFalse: [ 
			| recurseWith |
			childOrChildren rule isTerminal ifFalse: [
				childOrChildren childrenForest size > 1 ifTrue: [
					^ self 
						populate: aForest 
						with: (childOrChildren childrenForest collect: [ :tree | 
							childOrChildren shallowCopy mimicSingleTreeAndMemoize: { tree } asOrderedCollection ])
				]. "recurse in depth"
			].
			aForest do: [ :tree | tree add: childOrChildren].
			recurseWith := (childrenStates at: childOrChildren to ifAbsent: [{} asOrderedCollection]) copy select: [:cState | cState isEmpty not].
			recurseWith isEmpty ifTrue: [ ^ aForest ]. 
			self populate: aForest with: recurseWith.
		]
		ifTrue: [ 
			|newForests |
			newForests := childOrChildren allButFirst
				 collect: [ :child | 
							self 
								populate: (aForest collect: [:tree | tree copy]) 
								with: child
						].
			self populate: aForest with: childOrChildren first.
			newForests do: [:forest | aForest addAll: forest].
		].
	
	^ aForest