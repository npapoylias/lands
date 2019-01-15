action
childrenForest

	"can you optimize to tell when you need to search for multiples ??"
	^ childrenForest ifNil: [childrenForest := self 
		populate: { {  } asGrayCollection } asGrayCollection 
		with: (childrenStates at: self from ifAbsent: [ ^ { {  } asGrayCollection } asGrayCollection  ])].

