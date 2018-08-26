accessing
childrenAtForestIndexFor: n
	|children forestIndex|
	forestIndex := self forestIndexFor: n.
	forestIndex=1
		ifTrue: [ children := (n perform: childrenSelector) first]
		ifFalse: [ children := (n perform: forestSelector) at: (self forestIndexFor: n)].
	^ children size = 1 
		ifTrue: [ 
			self updateElementFor: n with: children first. 
			self childrenAtForestIndexFor: children first 
		] ifFalse: [ self updateElementFor: n. "no grouping" children ] 