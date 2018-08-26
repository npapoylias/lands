accessing
memoizedChildrenForestTraversingTempsAsSet
	"polymorphic with ParsecState use the result as root"
	^ memoizedChildrenForestTraversingTempsAsSet 
		ifNil: [
			memoizedChildrenForestTraversingTempsAsSet := 
			self memoizedChildrenForestTraversingTemps asSet asOrderedCollection
		] "return start without the EOF"