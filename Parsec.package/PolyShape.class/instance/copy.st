accessing
copy

	|i|
	i := super copy
		shapeElement: self shape copy element;
		group: (self group collect: [ :s | s copy ]).