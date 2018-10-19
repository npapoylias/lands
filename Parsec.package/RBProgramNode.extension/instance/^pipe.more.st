*Parsec
|> msgs "both for value and message nodes"
	msgs isSymbol ifTrue: [ ^ self |> { msgs msg }  ].
	msgs first isSymbol ifTrue: [ ^ super |> msgs ].
	msgs withoutSemicolons do: [ :msg | msg receiver: self ].
	^ msgs withoutSemicolons size > 1
			ifTrue: [ RBCascadeNode messages: msgs ] "semicolon positions ?"
			ifFalse: [ msgs first ]