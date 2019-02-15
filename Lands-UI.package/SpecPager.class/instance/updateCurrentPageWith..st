initialization
updateCurrentPageWith: anItem
	
	items at: self currentPage put: anItem.
	self items: items