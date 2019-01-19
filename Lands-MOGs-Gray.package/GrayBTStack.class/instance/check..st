adding
check: anItem
	|f|
	anItem ifNil: [ ^ nil ].
	f:= (failures at: anItem fromTerminal + 1 ifAbsent: [ ^ nil ]).
	1 to: f size do: [:i | (anItem equalTo: (f at: i)) ifTrue: [ ^ (f at: i) ] ].
	^ nil