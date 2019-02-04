*Lands-UI-Editor
inspectorMorphFor: anObject

	| ins rnd |
	ins := Smalltalk tools inspector new.
	rnd := ins defaultRenderer.
	ins startOn: anObject.
	^ GLMMorphicWindowRenderer render: ins from: rnd.