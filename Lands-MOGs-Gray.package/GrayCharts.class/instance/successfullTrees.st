accessing
successfullTrees

	^ ambiguous 
		ifTrue: [self successfullRoots childrenForest]
		ifFalse: [ {{self successfullRoots}} ]