accessing
rule

	rule --> id , '::=' , optionOperand , ('\||\\' optionOperand) star , #('==>' , action) opt , '\n\r' plus "remember space is handled implicitely"
	"you can add optimized version for regExpression where you automatically handl lplus, lstar || etc"