accessing
detect: aBlock ifNone: anotherBlock

	1 to: currentSize do: [:i | (aBlock value: (self at: i)) ifTrue: [ ^ (self at: i) ] ].
	^ anotherBlock value