accessing
"protocol: accessing"
ruleExpressions

	^ super ruleExpressions ==> [ :tokens | 
		(1 to: tokens size by: 2) collect: [ :index | tokens at: index]. "even index are operands" 
	]  "optionOperand , #('\||/' optionOperand) star" 