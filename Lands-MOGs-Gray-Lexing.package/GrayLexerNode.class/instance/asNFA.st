accessing
asNFA
	|ret endNode|
	ret := self toNFA.
	endNode := GrayNFANode new.
	ret endNode connectTo: endNode.
	ret endNode: endNode.
	^ ret startNode"ensure ending node"