as yet unclassified
algoStepOn: state

	logging ifTrue: [ Transcript show: state; cr. ].
	state	isIncomplete
		ifTrue: [   
			state expectingTerminal
				ifTrue: [ self scan: state ]
				ifFalse: [ self predict: state ] 
			]
		ifFalse: [ self complete: state ].
