Parsec-LanguageClasses
msgSend

	<msgSend> ::= <msgSend> ";" <cascadeMsgSend> +
		| <keywordMsgSend>
		| <binaryMsgSend>
		| <unaryMsgSend>
		