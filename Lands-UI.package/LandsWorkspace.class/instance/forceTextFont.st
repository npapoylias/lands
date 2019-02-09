lands-extentions
forceTextFont

	"Present a menu of available fonts, and if one is chosen, apply it to the current selection."

	"| textArea |
	textArea"
		"forceCursorVisibleWhile: [ "
			| hadFocus textArea |
			hadFocus := self textArea hasFocus.
			self textArea
				openModal:
					(FontChooser
						openWithWindowTitle: 'Choose a Font'
						for: self
						setSelector: #forceFontAttribute:
						getSelector: self fontToUse).
			hadFocus
				ifTrue: [ self textArea takeKeyboardFocus ] "]"