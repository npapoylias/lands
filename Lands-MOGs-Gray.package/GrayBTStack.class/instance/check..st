adding
check: anItem
	|f|
	anItem ifNil: [ ^ nil ].
	f:= (failures at: anItem fromTerminal + 1 ifAbsent: [ ^ nil ]).
	f := f at: anItem rule name ifAbsent: [ ^ nil ].
	^ (f includes: anItem) ifTrue: [ anItem ] ifFalse: [ nil ].
	"1 to: f size do: [:i | (anItem equalTo: (f at: i)) ifTrue: [ ^ (f at: i) ] ].
	^ nil"