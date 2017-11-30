Parsec-LanguageClasses
conditional

	^ super conditional ==> [ :tokens | [
			tokens third value
				ifTrue: [ tokens sixth do: [ :stmt | stmt value ] ] "if and optional else"
				ifFalse: [ tokens size > 7 ifTrue: [ (tokens at: 10) do: [:stmt | stmt value ] ] ]
		] ]
	