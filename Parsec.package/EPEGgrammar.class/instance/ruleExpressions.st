accessing
ruleExpressions

	^ ruleExpressions --> #(optionOperand '\||/') delimeterStar "optionOperand , #('\||/' optionOperand) star" 