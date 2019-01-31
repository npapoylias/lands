initialization
initializeWidgets
	
	initialMorph := morph.
	morph := morph asSpecAdapter.
	self whenBuiltDo: [
		initialMorph color: Color darkGray.
		(initialMorph allMorphs select: [ :s | s class = PanelMorph ]) do: [ :s | s color: Color darkGray ].
		initialMorph borderColor: Color darkGray
	]