accessing
toNFA

	| graph new|
	graph := super toNFA. 
	new := GrayNFANodeNot new.
	graph startNode out do: [:n | new of: n ].
	graph startNode: new.
	^ graph