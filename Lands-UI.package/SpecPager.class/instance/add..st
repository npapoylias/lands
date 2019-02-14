initialization
add: anItem

	self items: (items add: anItem; yourself).
	morph pager nextPage: items size.