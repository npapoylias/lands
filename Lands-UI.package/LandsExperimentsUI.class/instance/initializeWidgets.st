initialization
initializeWidgets

	self createNavigationPane.
	self createTabArea.
	TOCAnnouncer default "should be one that's shared between ui and pane.."
		subscribe: TOCClick 
		do: [ :announcement | self open: announcement node ]