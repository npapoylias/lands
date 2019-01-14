adding
check: anItem
	anItem ifNil: [ ^ nil ].
	^ (failures at: anItem fromTerminal ifAbsent: [ ^ nil ])
		 detect: [ :state | state equalTo: anItem  ] ifNone: [ nil ]