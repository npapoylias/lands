action
mimicSingleTreeAndMemoize: singleTreeForest

	memoizedChildrenForest 
		ifNil: [ memoizedChildrenForest:= childrenForest ];
		ifNotNil: [ memoizedChildrenForest addAll: childrenForest ].
	childrenForest := singleTreeForest
