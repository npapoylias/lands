*Lands-MOGs-Gray
shallowValueCopy
	| newObject index |

			index := self basicSize.
			newObject := Array basicNew: index.
			[index > 0]
				whileTrue: 
					[newObject basicAt: index put: (self basicAt: index) shallowValueCopy.
					index := index - 1].
			
	^newObject
	"|ret|
	ret := Dictionary new.
	tally = 0 ifTrue: [^ ret].
	1 to: array size do:
		[:i |
		(array at: i) ifNotNil: [ret at: (array at: i) key put: (array at: i) value shallowCopy]].
	^ ret."