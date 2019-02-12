initialization
initializeWidgets
	
	initialMorph := morph.
	morph := morph asSpecAdapter.
	self whenBuiltDo: [
		initialMorph color: Color darkGray.
		initialMorph allMorphs do: [ :s |
			s class = PanelMorph ifTrue: [s color: Color darkGray].
			s class = RubScrolledTextMorph ifTrue: [ s textMorph allowsKeymapping: false ]
		].
		"(initialMorph submorphs select: [ :s | s class ~= PanelMorph and: [ s class ~= FTPluggableIconListMorphAdaptor ] ])
			do: [:m | initialMorph removeMorph: m]."
		initialMorph borderColor: Color darkGray
	]