initialization
initializeWidgets

	self createNavigationPane.
	self createTabArea.
	announcer ":= TOCAnnouncer new 
		"subscribe: TOCSelect 
		do: [ :announcement | self open: announcement node ].
	announcer subscribe: TOCEdit do: [ :announcment | 
		(self classFor: announcment node item) browse ]. 
	navigationPane widget model selectNodePath:		
			navigationPane widget model rootNodes first path.
	navigationPane widget selectNodePath: 
		navigationPane widget roots first complexContents path.
