initialization
add: anItem
	anItem extent: morph extent.
	self items: (items add: anItem; yourself).
	morph pager nextPage: items size.