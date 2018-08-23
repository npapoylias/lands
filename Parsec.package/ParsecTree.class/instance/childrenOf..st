querying
childrenOf: n
	|children|
	children := (n perform: childrenSelector) at: (self forestIndexFor: n).
	^ children size = 1 
		ifTrue: [
			self childrenOf: children first.
		] ifFalse: [ "no grouping" children ] 