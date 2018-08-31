accessing
successfullTrees

	^ (self successfullRoots collect: [ :root | root childrenForest]) flatten