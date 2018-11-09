accessing
toNFA

	|graph start end |
	graph := operand toNFA.
	start := GrayNFANode new.
	end := GrayNFANode new.
	start connectTo: graph startNode.
	start connectTo: end.
	graph endNode connectTo: end.
	graph endNode connectTo: graph startNode.
	^ GrayNFAGraph new startNode: start; endNode: end.