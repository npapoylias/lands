accessing
indexOf: anElement ifAbsent: exceptionBlock

	1 to: self size do:
		[:index |
		(self at: index) = anElement ifTrue: [^ index]].
	^ exceptionBlock value