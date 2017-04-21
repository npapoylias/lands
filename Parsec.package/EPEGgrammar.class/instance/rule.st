accessing
rule

	rule --> id , '::=' , optionOperand , ('\||/' optionOperand) star , ';'"'(\n|\r){2}' , '\n|\r' star" "remember space is handled implicitely"
	"you can add optimized version for regExpression where you automatically handl lplus, lstar || etc"