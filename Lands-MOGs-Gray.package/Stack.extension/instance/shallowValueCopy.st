*Lands-MOGs-Gray
shallowValueCopy
	
	| newObject index |
	newObject := Stack basicNew.
	index := 2.
	[index > 0]
		whileTrue: 
			[newObject instVarAt: index put: (self instVarAt: index).
			index := index - 1].
	^newObject