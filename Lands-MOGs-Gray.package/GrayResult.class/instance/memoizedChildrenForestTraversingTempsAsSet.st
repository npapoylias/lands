accessing
memoizedChildrenForestTraversingTempsAsSet
	"polymorphic with GrayState use the result as root"
	^ memoizedChildrenForestTraversingTempsAsSet 
		ifNil: [
			memoizedChildrenForestTraversingTempsAsSet := 
			self memoizedChildrenForestTraversingTemps asSet asOrderedCollection
		] "return start without the EOF"