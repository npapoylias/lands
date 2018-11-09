*Lands-MOGs-Gray
asArrayIfCollection

	^ self size = 1 ifTrue: [ ^ self first ] ifFalse: [ self asArray ]
	"^ self asArray"