initialization
example
	|c p|
	c := Color wheel: 100.
	p := SpecPager items: ((1 to: 100) asArray collect: [:i |	PanelMorph new color: (c at: i); 
		"extent: 800@600;" "hResizing: #spaceFill; vResizing: #spaceFill;" yourself ]).
	p openWithSpec.
	p.

	p add: (PanelMorph new color: Color blue; "hResizing: #spaceFill; vResizing: #spaceFill;" "extent: 800@600;" yourself).