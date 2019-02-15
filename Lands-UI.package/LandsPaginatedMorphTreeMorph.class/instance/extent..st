geometry
extent: newExtent

	super extent: newExtent.
	self model ifNotNil: [ :mod | 
		mod rootItems ifNotNil: [ :morphs | "only one child for rootItems panelMorphs"
			morphs do: [:m | m extent: self extent. "m submorphsDo: [:s| s extent: self extent]"] 
		]
	]