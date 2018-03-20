accessing
labelForElement: n

	|es s|
	es := (elements at: n). 
	s := WriteStream on: String new.
	s nextPutAll: (es first perform: nameSelector).
	es allButFirst do: [ :e | 
		s
			nextPut: Character cr;
			nextPutAll: (e perform: nameSelector) ].
	^ s contents
		 