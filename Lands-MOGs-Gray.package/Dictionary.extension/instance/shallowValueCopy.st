*Lands-MOGs-Gray
shallowValueCopy
	| newObject index |
	newObject := Dictionary basicNew.
	index := 2.
	[index > 0]
		whileTrue: 
			[newObject instVarAt: index put: (self instVarAt: index) shallowValueCopy.
			index := index - 1].
	^newObject
	"|ret|
	ret := Dictionary new.
	tally = 0 ifTrue: [^ ret].
	1 to: array size do:
		[:i |
		(array at: i) ifNotNil: [ret at: (array at: i) key put: (array at: i) value shallowCopy]].
	^ ret."