private
privateStyle: aText

	self highlighter highlightSyntaxOn: aText.
	postStyleActions ifNotNil: [ "eval post-actions / if moved remove"
		postStyleActions removeAll: (postStyleActions select: [ :a | (a value: aText) = false ]) 
	].
	^ true
	