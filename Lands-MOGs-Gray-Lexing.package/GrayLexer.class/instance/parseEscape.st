parsing
parseEscape

	|escape|
	stream next.
	escape := stream next.
	^ GrayLexerEscape new with: 
		([self escapeChars at: escape] on: NotFound do: [escape])