parsing
parse: aString
	|algoInst |
	algo ifNil: [  algo := self class algoDefaultClass ].
	algoInst := self class log 
		ifTrue: [ algo new log ]
		ifFalse: [ algo new ].
		
	^ self parse: aString using: algoInst