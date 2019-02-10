accessing
highlighter

	^ highlighter ifNil: [highlighter := PharoSH new]
	