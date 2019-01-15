accessing
memoizedChildrenForestTraversingTempsAsSet
	"polymorphic with GrayState use the result as root"
	^ memoizedChildrenForestTraversingTempsAsSet 
		ifNil: [
			memoizedChildrenForestTraversingTempsAsSet := 
			self memoizedChildrenForestTraversingTemps asSet asGrayCollection
		] "return start without the EOF"