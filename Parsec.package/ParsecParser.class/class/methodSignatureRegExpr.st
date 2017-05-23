Parsec-ToolCompatibility
methodSignatureRegExpr
	"binaryCharacter ::=
			'!' | '%' | '&' | '*' | '+' | ','' | '/' | '<' | '=' | '>' | '?' | '@' | '\' | '~' | '|' | '-'
		binarySelector ::= binaryCharacter+"
	^ '[a-zA-Z0-9]+' asParsecRegex asDFA