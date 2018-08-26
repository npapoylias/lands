accessing
childrenAtForestIndexFor: n
	|children forest|
	forest := n perform: forestSelector.
	forest size=1
		ifTrue: [ children := (n perform: childrenSelector) first]
		ifFalse: [ children := forest at: (self forestIndexFor: n)].
	^ children size = 1 
		ifTrue: [ 
			self updateElementFor: n with: children first. 
			self childrenAtForestIndexFor: children first 
		] ifFalse: [ self updateElementFor: n. "no grouping" children ] 