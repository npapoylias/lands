initialization
for: input with: terminal at: position

	"^ terminal 
		terminalMatchForInput: input 
		atPosition: position" 

	^ (terminalPosToNextPos optAt: terminal ifAbsentPut: [ Dictionary new ])
			optAt: position ifAbsentPut: [ 
				terminal 
					terminalMatchForInput: input 
					atPosition: position 
			]