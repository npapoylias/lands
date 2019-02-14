initialization
remove: anItem
	|index| index := self currentPage.
	self items: (items remove: anItem).
	self currentPage: index -1.