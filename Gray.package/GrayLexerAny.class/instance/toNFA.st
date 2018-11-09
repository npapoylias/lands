accessing
toNFA

	| op |
	op := GrayNFANodeAny new. 
	^ GrayNFAGraph new startNode: op startNode; endNode: op endNode.
	