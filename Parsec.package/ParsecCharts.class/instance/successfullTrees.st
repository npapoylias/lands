accessing
successfullTrees

	^ (self last detect: [ :state | state isFinal ]) childrenForest