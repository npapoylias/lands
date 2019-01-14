*Lands-MOGs-Gray
shallowValueCopy

	| newObject |
	newObject := Association basicNew.
	newObject instVarAt: 1 put: (self instVarAt: 1) shallowValueCopy.
	newObject instVarAt: 2 put: (self instVarAt: 2) shallowValueCopy.
	^newObject
	