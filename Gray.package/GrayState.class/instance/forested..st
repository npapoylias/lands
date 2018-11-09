action
forested: child
	| forested |
	forested := OrderedCollection new.
	child childrenForest
		do: [ :tree | 
			(self shouldPrun: tree of: child) ifFalse: [
						forested add: (child shallowCopy mimicSingleTreeAndMemoize: {tree} asOrderedCollection)
				] 
		].
	^ forested