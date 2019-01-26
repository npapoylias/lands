accessing
sizeForElement: e
	"|children childrenAlternatives sum esize|"
	^ (e perform: forestSelector) * 50.
	"children := self childrenAtForestIndexFor: e.
	childrenAlternatives := children collect: [ :c | c perform: sizeSelector ].
	sum := childrenAlternatives isEmpty ifTrue: [ 0 ] ifFalse: [ childrenAlternatives sum ].
	^  sum < (esize := (e perform: sizeSelector))
		ifTrue: [ esize * 50 ]
		ifFalse: [ 50 ]"