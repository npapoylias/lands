accessing
detect: aBlock ifFound: anotherBlock

	1 to: currentSize do: [:i | 
		(aBlock value: (self at: i)) ifTrue: [ ^ anotherBlock value: (self at: i) ] 
	].