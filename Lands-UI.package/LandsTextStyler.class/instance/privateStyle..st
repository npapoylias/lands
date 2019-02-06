private
privateStyle: aText
	|ret|
	self stylingActive ifFalse: [ ^ false ].
	classOrMetaClass ifNil: [ ret := super privateStyle: aText ].
	ret := (classOrMetaClass class canUnderstand: #syntaxHighlighting)
		ifFalse: [ super privateStyle: aText ]
		ifTrue: [ "pass from the syntax and see other
			attributes (ie foreground, background, bold, links etc -- to go back to the syntax rule)"
			classOrMetaClass syntaxHighlighting
				ifNil: [ super privateStyle: aText ]
				ifNotNil: [ :sh | sh new highlightSyntaxOn: aText ] ].
	postStyleActions ifNotNil: [ "eval post-actions / if moved remove"
		postStyleActions removeAll: (postStyleActions select: [ :a | (a value: aText) = false ]) 
	].
	^ ret