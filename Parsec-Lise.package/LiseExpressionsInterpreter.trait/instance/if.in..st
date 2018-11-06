primitives
if: aList in: anEnvironment

	^	(self eval: aList second in: anEnvironment)
			ifTrue: [ self eval: aList third in: anEnvironment ]
			ifFalse: [ self eval: aList fourth in: anEnvironment ]									
	
