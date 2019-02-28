accessing
newTabManager

	|tm| tm := super newTabManager.
	tm whenBuiltDo: [ tm widget widget kmDispatcher reset ].
	^ tm