*Lands-MOGs-Gray
toNFA

	|lastNode firstNode|

	self do: [ :c |  
		lastNode 
			ifNil: [ firstNode := lastNode := c toNFA ]
			ifNotNil: [ |newNode| lastNode connectTo: (newNode := c toNFA). lastNode := newNode ]	
	].

	^ GrayNFAGraph new startNode: firstNode; endNode: lastNode