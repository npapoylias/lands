initialization
items: aList
	
	model rootItems: 
		((items := aList asOrderedCollection) collect: [:m | 
			PanelMorph new 
				changeTableLayout;
				listDirection: #bottomToTop;
				addMorph: (m "hResizing: #spaceFill; vResizing: #spaceFill; "yourself)]).
	model updateList."lastPage".
	"self update"