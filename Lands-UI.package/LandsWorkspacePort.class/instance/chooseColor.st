lands-extentions
chooseColor

	| attribute |	
	attribute := TextColor color: Color black "default".
	UIManager default chooseColor
		ifNotNil: [:nc | attribute color: nc].
	^ attribute
