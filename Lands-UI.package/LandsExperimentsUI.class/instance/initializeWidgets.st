initialization
initializeWidgets

	self createNavigationPane.
	self createTabArea.
	announcer ":= TOCAnnouncer new 
		"subscribe: TOCClick 
		do: [ :announcement | self open: announcement node ].
	navigationPane widget model selectNodePath:		
			navigationPane widget model rootNodes first path.
	navigationPane widget selectNodePath: 
		navigationPane widget roots first complexContents path.
