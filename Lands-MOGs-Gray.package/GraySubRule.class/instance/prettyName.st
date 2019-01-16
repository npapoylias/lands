testing
prettyName

	^ isTerminalChoice ifNil: [
		(directRefs anySatisfy: [ :a | a size > 1 or: [a first isTerminal not ]]) not 
	 		ifTrue: [ isTerminalChoice := WriteStream on: String new.
							isTerminalChoice nextPut: $(.
							1 to: directRefs size - 1 do: [ :i | isTerminalChoice nextPutAll: (directRefs at: i) first prettyName. isTerminalChoice nextPut: $| ].
							isTerminalChoice nextPutAll: directRefs last first prettyName.
							isTerminalChoice nextPut: $).
						isTerminalChoice := isTerminalChoice contents
			]
			ifFalse: [ isTerminalChoice := super prettyName ]
		]
