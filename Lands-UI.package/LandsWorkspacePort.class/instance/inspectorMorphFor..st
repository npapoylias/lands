lands-extentions
inspectorMorphFor: anObject
	"self new inspectorMorphFor: 42"
	| ins rnd |
	ins := Smalltalk tools inspector new.
	rnd := ins defaultRenderer.
	ins startOn: anObject.
	^ (((GLMMorphicWindowRenderer render: ins from: rnd) extent: 800@600) 
		allMorphs select: [ :m | m class = LazyTabGroupMorph ]) first extent: 800@600.