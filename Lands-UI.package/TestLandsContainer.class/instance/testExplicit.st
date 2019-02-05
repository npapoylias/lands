tests
testExplicit

	self assert: (LandsContainer with: ((1 to: 10) 
		collect: [ :i | ButtonModel new label: i asString, '_Button' ])
		using: SpecColumnLayout) widgets value size = 10
		"openWithSpec".
	
	(LandsContainer with: ((1 to: 10) 
		collect: [ :i | ButtonModel new label: i asString, '_Button' ])
		using: SpecRowLayout) widgets value size = 10
		"openWithSpec".