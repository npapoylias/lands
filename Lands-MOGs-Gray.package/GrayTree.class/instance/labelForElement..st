accessing
labelForElement: n
	n class == GrayResult ifTrue: [ ^ 'Tree' ].
	^ n rule isPureTerminal
		ifTrue: [ popUpBlock value: n  ]
		ifFalse: [ n perform: nameSelector.  ]
	"|es s|
	es := elements at: n ifAbsent: [^ n asString].
	s := WriteStream on: String new.
	s nextPutAll: (es first perform: nameSelector).
	es allButFirst do: [ :e | 
		s
			nextPut: Character cr;
			nextPutAll: (e perform: nameSelector) ].
	^ s contents"
		 