initialization
initializeWidgets
	
	initialMorph := morph.
	morph := morph asSpecAdapter.
	self whenBuiltDo: [
		initialMorph color: Color darkGray.
		(initialMorph allMorphs select: [ :s | s class = PanelMorph ]) do: [ :s | s color: Color darkGray ].
		(initialMorph submorphs select: [ :s | s class ~= PanelMorph and: [ s class ~= FTPluggableIconListMorphAdaptor ] ])
			do: [:m | initialMorph removeMorph: m].
		initialMorph borderColor: Color darkGray
	]