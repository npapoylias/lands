private
privateStyle: aText

	[self highlighter highlightSyntaxOn: aText] on: Error do: [self halt]. "browser does not seem to mind .. check why"
	postStyleActions ifNotNil: [ "eval post-actions / if moved remove"
		postStyleActions removeAll: (postStyleActions select: [ :a | (a value: aText) = false ]) 
	].
	^ true
	