accessing
"protocol: accessing"
rule

	^ super rule ==> [ :tokens | |r expressions operators|
		"TODO: why not giving tokens the names of the symbols in EPEG ?"
		expressions := tokens third key.
		operators := tokens third value.
		r := (tokens first --> expressions first asArrayIfCollection).
		expressions allButFirst doWithIndex: [ :e :index | 
			r 
				perform: (operators at: index) tokenValue asSymbol
				withArguments: { e asArrayIfCollection } ].
		r 		 
	]
	 
	"'(\n|\r){2}' , '\n|\r' star" "remember space is handled implicitely (See ParseGrammar>>#init))"
	"you can add optimized version for regExpression where you automatically handl lplus, lstar || etc"