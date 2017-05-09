action
childrenForest

	"can you optimize to tell when you need to search for multiples ??"

	^ childrenForest ifNil: [childrenForest := self 
		populate: { {  } asOrderedCollection } asOrderedCollection " (ParsecDerivation new add: ParsecDerivation new; yourself)"
		with: (childrenStates at: self from ifAbsent: [ ^ "ParsecDerivation new add: ParsecDerivation new; yourself"{ {  } asOrderedCollection } asOrderedCollection  ])].

