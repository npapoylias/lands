accessing
menu: menu shifted: b 
	"Set up the menu to apply to the receiver's, 
	honoring the #shifted boolean"
	self selectedNode ifNotNil: [:current | 
		menu
			add: 'Expand all' 
			target: self
			selector: #expandAll.
		menu
			add: 'Edit' 
			target: self
			selector: #editItem.
	].
	^ menu