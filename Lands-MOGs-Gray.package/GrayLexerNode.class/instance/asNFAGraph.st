accessing
asNFAGraph
	|ret endNode|
	ret := self toNFA.
	endNode := GrayNFANode new.
	ret endNode connectTo: endNode.
	ret endNode: endNode.
	^ ret "ensure ending node"