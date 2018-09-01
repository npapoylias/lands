action
childrenForest

	"can you optimize to tell when you need to search for multiples ??"
	^ childrenForest ifNil: [childrenForest := self 
		populate: { {  } asOrderedCollection } asOrderedCollection 
		with: (childrenStates at: self from ifAbsent: [ ^ { {  } asOrderedCollection } asOrderedCollection  ])].

