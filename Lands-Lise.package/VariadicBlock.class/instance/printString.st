accessing
printString

	^ initialBlock argumentCount = 1
		ifTrue: [ initialBlock printString ]
		ifFalse: [ '[ :args | args reduceLeft: ' , initialBlock printString , ' ] ' ]