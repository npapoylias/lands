parsing
parseGroup

	stream next.	
	^ stream peek == $^ "not"
		ifTrue: [ stream next. GrayLexerNotGroup new with: self parseGroupExpression ] "should return a lexer option"
		ifFalse: [ GrayLexerGroup new with: self parseGroupExpression ]