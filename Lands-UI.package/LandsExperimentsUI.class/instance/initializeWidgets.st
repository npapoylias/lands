initialization
initializeWidgets

	self createNavigationPane.
	self createTabArea.
	TOCAnnouncer default subscribe: TOCDoubleClick do: [ :announcement | self halt: announcement asString ]