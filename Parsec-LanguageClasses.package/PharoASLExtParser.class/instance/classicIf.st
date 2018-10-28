Parsec-LanguageClasses
classicIf

	^ super classicIf ==> [:values | 
		values size = 3
			ifTrue: [ values second |> { #ifTrue: . values third }]
			ifFalse:[ values second |> { #ifTrue:ifFalse: . values third . values fifth } ]  
	]