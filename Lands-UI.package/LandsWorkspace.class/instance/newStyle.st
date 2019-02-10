lands-extentions
newStyle

	|style attribute styleName | style := OrderedCollection new.

	self textArea
		openModal: (FontChooser
						openWithWindowTitle: 'Choose a Font'
						for: style
						setSelector: #add:
						getSelector: self fontToUse).
	style at: 1 put: (TextFontReference toFont: (style at: 1)).
	attribute := TextColor color: Color white "default".
	UIManager default chooseColor
		ifNotNil: [:nc | attribute color: nc].
	style add: attribute.
	[ (attribute := self chooseEmphasisOrAlignement) ~= nil  ] 
		whileTrue: [ style add: attribute ].
	styleName := UIManager default
		textEntry: 'Save Style as:' 
		title: 'Style Name' 
		entryText: ''.
	FLSerializer serialize: style toFileNamed: 'styles/' , styleName , '.style'.
	self applyStyle: styleName.

	