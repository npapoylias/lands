*Parsec
|> msgs "both for value and message nodes"
	msgs isSymbol ifTrue: [ ^ self |> { msgs msg }  ].
	msgs first isSymbol ifTrue: [ ^ super |> msgs ].
	msgs do: [ :msg | msg receiver: self ].
	^ msgs size > 1
			ifTrue: [ RBCascadeNode messages: msgs ] "semicolon positions ?"
			ifFalse: [ msgs first ]