initialization
items: aList
	
	model rootItems: 
		((items := aList asOrderedCollection) collect: [:m | 
			PanelMorph new addMorph: m]).
	model updateList."lastPage".
	"self update"