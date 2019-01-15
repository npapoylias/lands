action
forested: child
	| forested |
	forested := GrayCollection new.
	child childrenForest
		do: [ :tree | 
			(self shouldPrun: tree of: child) ifFalse: [
						forested add: (child shallowCopy mimicSingleTreeAndMemoize: {tree} asGrayCollection)
				] 
		].
	^ forested