*Lands-MOGs-Gray
allNestedElements

	^ self nestedElements copy 
		addAll: (self nestedElements collect: [:i | i allElements ]) deepFlatten;
		yourself