action
populate: aForest with: childOrChildren 

	childOrChildren isCollection 
		ifFalse: [ 
			childOrChildren rule isTerminal ifFalse: [ .
				childOrChildren childrenForest size > 1 ifTrue: [
					^ self 
						populate: aForest 
						with: (childOrChildren childrenForest collect: [ :tree | 
							childOrChildren shallowCopy childrenForest: { tree } asOrderedCollection ])
				]. "recurse in depth"
			].
			aForest do: [ :tree | tree add: childOrChildren ].
			childOrChildren rule isEof ifTrue: [ ^ aForest ].
			self populate: aForest with: (childrenStates at: childOrChildren to ifAbsent: [^ aForest]).
		]
		ifTrue: [ 
			|newForests| 
			newForests := childOrChildren allButFirst
				 collect: [ :child | 
					self 
						populate: (aForest collect: [:tree | tree copy]) 
						with: child].
			self populate: aForest with: childOrChildren first.
			newForests do: [:forest | aForest addAll: forest].
		].
	
	^ aForest