accessing
toNFA

	| last subGraph ret|
	ret := GrayNFAGraph new.
	ret startNode: GrayNFANode new.
	ret endNode: GrayNFANode new.
	1 to: self options size do: [:i |
		subGraph := (self options at: i) toNFA.
		ret startNode connectTo: subGraph startNode. 
		subGraph endNode connectTo: ret endNode.
	].
	^ ret