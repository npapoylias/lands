accessing
toNFA

	| op |
	op := GrayNFARangeNode new with: operand. 
	^ GrayNFAGraph new startNode: op startNode; endNode: op endNode.
