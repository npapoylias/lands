accessing
highlighter

	^ "highlighter ifNil: [ highlighter :=" classOrMetaClass syntaxHighlighting new "]"