*Lands-MOGs-Gray
shallowValueCopy
	
	| newObject |
	newObject := Stack basicNew.
	newObject instVarAt: 1 put: (self instVarAt: 1).
	newObject instVarAt: 2 put: (self instVarAt: 2).
	^newObject