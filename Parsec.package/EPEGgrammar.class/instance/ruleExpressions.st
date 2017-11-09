accessing
"protocol: accessing"
ruleExpressions

	^ super ruleExpressions ==> [ :tokens | |operands operators|
		operands := (1 to: tokens size by: 2) collect: [ :index | tokens at: index]. "even index are operands" 
		operators := (2 to: tokens size by: 2) collect: [ :index | tokens at: index].
		operands  -> operators 
	]  "optionOperand , #('\||/' optionOperand) star" 