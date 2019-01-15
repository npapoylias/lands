action
memoizedChildrenForestTraversingTempsAsSet

	^ memoizedChildrenForestTraversingTempsAsSet
		ifNil: [
			memoizedChildrenForestTraversingTempsAsSet := 
				self memoizedChildrenForestTraversingTemps asSet asGrayCollection
		]