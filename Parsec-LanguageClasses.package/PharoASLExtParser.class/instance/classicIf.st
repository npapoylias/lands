Parsec-LanguageClasses
classicIf

	^ super classicIf ==> {
		[:values | values second |> { #ifTrue:. values third . #ifFalse: . values fifth } <-> values ].
		[:values | values second |> { #ifTrue: . values third } <-> values ].
	}