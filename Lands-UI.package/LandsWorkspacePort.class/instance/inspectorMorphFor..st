lands-extentions
inspectorMorphFor: anObject
	"self new inspectorMorphFor: 42"
	| ins rnd morph |
	ins := Smalltalk tools inspector new.
	rnd := ins defaultRenderer.
	ins startOn: anObject.
	morph :=  (((GLMMorphicWindowRenderer render: ins from: rnd) extent: 800@600) 
		allMorphs select: [ :m | m class = LazyTabGroupMorph ]) first extent: 800@600"; color: Color darkGray".
	morph allMorphsDo: [ :m |  m color: (Color r: 0.13 g: 0.13 b: 0.13 alpha: 1.0) ].
	^ morph