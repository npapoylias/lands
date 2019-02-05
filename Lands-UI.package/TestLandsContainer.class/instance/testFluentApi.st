tests
testFluentApi

	self assert: (
	{
		(1 to: 10) collect: [ :i | ButtonModel new label: i asString, '_Button' ].
		[(1 to: 5) collect: [ :i | ButtonModel new label: i asString, '_Button' ]]
	} ui isKindOf: LandsContainer) "openWithSpec"