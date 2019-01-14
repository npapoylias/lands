*Lands-MOGs-Gray
shallowValueCopy

	| newObject  index |
	newObject := Association basicNew.
	index := 2.
	[index > 0]
		whileTrue: 
			[newObject instVarAt: index put: (self instVarAt: index) shallowValueCopy.
			index := index - 1].
	^newObject
	