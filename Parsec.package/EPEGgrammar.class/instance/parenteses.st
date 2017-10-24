accessing
"protocol: accessing"
parenteses

	^ super parenteses ==> [:tokens | "as with rule compute subrule of parenthesis" 
		|r expressions operators|
		"TODO: why not giving tokens the names of the symbols in EPEG ?"
		expressions := tokens second key.
		operators := tokens second value.
		r := ('t' , expressions hash asString) asSymbol --|> expressions first asArrayIfCollection. "temp rule"
		expressions allButFirst doWithIndex: [ :e :index | 
			r 
				perform: (operators at: index) tokenValue asSymbol
				withArguments: { e asArrayIfCollection } ].
		r
	]