accessing
childrenAtForestIndexFor: n
	|children|
	children := (n perform: childrenSelector) at: (self forestIndexFor: n).
	^ children size = 1 
		ifTrue: [ 
			self updateElementFor: n with: children first. 
			self childrenAtForestIndexFor: children first 
		] ifFalse: [ self updateElementFor: n. "no grouping" children ] 