*Lands-MOGs-Gray
shallowValueCopy
		| newObject |
	newObject := Dictionary basicNew.
	newObject instVarAt: 1 put: (self instVarAt: 1) shallowValueCopy.
	newObject instVarAt: 2 put: (self instVarAt: 2) shallowValueCopy.
	^newObject
	
	"|ret|
	ret := Dictionary new.
	tally = 0 ifTrue: [^ ret].
	1 to: array size do:
		[:i |
		(array at: i) ifNotNil: [ret at: (array at: i) key put: (array at: i) value shallowCopy]].
	^ ret."