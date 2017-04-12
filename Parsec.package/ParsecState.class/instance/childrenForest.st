action
childrenForest

	^ childrenForest ifNil: [childrenForest := self 
		populate: { {  } asOrderedCollection } asOrderedCollection 
		with: (childrenStates at: self from ifAbsent: [ ^ { {  } asOrderedCollection } asOrderedCollection  ])].

