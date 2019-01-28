accessing
compileManagerOnClass: c for: chapter with: children
	| s |
	s := WriteStream on: String new.
	s
		nextPutAll:
			'tab 
	^ tab ifNil: [ 
		tab := self newTabManager.'.
	children
		do: [ :child | 
			s
				nextPut: Character cr;
				nextPut: Character tab;
				nextPut: Character tab;
				nextPutAll: ('tab addTab: {1} default tab.' format: {(self classNameFor: child)}) ].
	s nextPutAll: ' tab ].'.
	c compileSilently: s contents