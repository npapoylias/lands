action
populate: aForest with: childOrChildren 

	childOrChildren isCollection 
		ifFalse: [ 
			aForest do: [ :tree | tree add: childOrChildren ].
			self populate: aForest with: (childrenStates at: childOrChildren to ifAbsent: [^ aForest]).
		]
		ifTrue: [ 
			|newForest| 
			newForest := childOrChildren allButFirst
				 collect: [ :child | self populate: aForest copy with: child].
			aForest do: [ :tree | tree add: childOrChildren first].
			aForest addAll: newForest deepFlatten.
		].
	
	^ aForest