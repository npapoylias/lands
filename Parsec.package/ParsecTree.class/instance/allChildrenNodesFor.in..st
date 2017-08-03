accessing
allChildrenNodesFor: aNode in: aSet

	(self childrenAtForestIndexFor: aNode)
		do: [ :c | 
			(aSet includes: c) 
				ifFalse: [
					aSet add: c. 
					self allChildrenNodesFor: c in: aSet 
				]
		].
	
	^ aSet