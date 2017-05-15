accessing
rule

	^ rule --> id , '::=' , ruleExpressions ==> [ :tokens | |r expressions|
		"TODO: why not giving tokens the names of the symbols in EPEG ?"
		expressions := tokens third.
		r := (tokens first --> expressions first asArray).
		expressions allButFirst do: [ :e | r | e asArray ].
		r 		
	]
	
	"'(\n|\r){2}' , '\n|\r' star" "remember space is handled implicitely (See ParseGrammar>>#init))"
	"you can add optimized version for regExpression where you automatically handl lplus, lstar || etc"