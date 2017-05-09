accessing
rule

	^ rule --> id , '::=' , ruleExpressions
	
	"'(\n|\r){2}' , '\n|\r' star" "remember space is handled implicitely (See ParseGrammar>>#init))"
	"you can add optimized version for regExpression where you automatically handl lplus, lstar || etc"