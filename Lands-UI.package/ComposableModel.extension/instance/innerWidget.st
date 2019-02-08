*Lands-UI
innerWidget
	|w|
	^ ((w := self widget) isKindOf: Morph)
		ifTrue: [ w ]
		ifFalse: [ w innerWidget ]