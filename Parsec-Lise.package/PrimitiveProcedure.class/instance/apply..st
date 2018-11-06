as yet unclassified
apply: aList

	"optimize for : in keyword arguments and for multiple operands"

	^ symbol ifNotNil: [  
			aList first perform: symbol 
				withArguments: aList allButFirst asArray
		] ifNil: [  
			block value: aList 
		]