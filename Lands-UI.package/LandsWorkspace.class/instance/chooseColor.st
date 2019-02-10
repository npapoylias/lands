lands-extentions
chooseColor

	| attribute |	
	attribute := TextColor color: Color white "default".
	UIManager default chooseColor
		ifNotNil: [:nc | attribute color: nc].
	^ attribute
