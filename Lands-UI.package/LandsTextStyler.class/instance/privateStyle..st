private
privateStyle: aText

	classOrMetaClass ifNil: [ ^ super privateStyle: aText ].
	^ (classOrMetaClass class canUnderstand: #syntaxHighlighting)
		ifFalse: [ super privateStyle: aText ]
		ifTrue: [ "pass from the syntax and see other
			attributes (ie foreground, background, bold, links etc -- to go back to the syntax rule)"
			classOrMetaClass syntaxHighlighting
				ifNil: [ super privateStyle: aText ]
				ifNotNil: [ :sh | sh new highlightSyntaxOn: aText ] ]