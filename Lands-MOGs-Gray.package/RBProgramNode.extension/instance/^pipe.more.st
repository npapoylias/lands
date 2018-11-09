*Lands-MOGs-Gray
|> msgs "both for value and message nodes"
	|ret|
	(msgs isSymbol or: [ msgs isToken ]) ifTrue: [ ^ self |> { msgs msg }  ].
	(msgs first isSymbol or: [ msgs first isToken ]) 
		ifTrue: [ ^ msgs size = 1 ifTrue: [ super |> msgs first] ifFalse: [ super |> msgs ] ].
	ret := msgs withoutSemicolons collect: [ :msg | (msg isNode ifTrue: [ msg ] ifFalse: [ self |> msg ]) receiver: self ].
	^ ret withoutSemicolons size > 1
			ifTrue: [ RBCascadeNode messages: ret ] "semicolon positions ?"
			ifFalse: [ ret first ]