private
privateStyle: aText

	classOrMetaClass ifNil: [ ^ super privateStyle: aText ].

	^ (classOrMetaClass class methodDictionary keys includes: #syntaxHighlighting)
			ifFalse: [  super privateStyle: aText ]
			ifTrue: [ aText makeAllColor: Color green. "classOrMetaClass syntaxHighlighting highlightSyntaxOn: aText" ] "pass from the syntax and see other
			attributes (ie foreground, background, bold, links etc -- to go back to the syntax rule)"