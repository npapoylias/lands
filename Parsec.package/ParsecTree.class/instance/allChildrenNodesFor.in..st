accessing
allChildrenNodesFor: aNode in: aSet

	((aNode perform: childrenSelector) at: (self forestIndexFor: aNode))
		do: [ :c | 
			(aSet includes: aNode) 
				ifFalse: [
					aSet add: aNode. 
					self allChildrenNodesFor: c in: aSet 
				]
		].
	
	^ aSet