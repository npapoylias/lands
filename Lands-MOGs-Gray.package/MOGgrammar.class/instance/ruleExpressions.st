accessing
"protocol: accessing"
ruleExpressions

	^ super ruleExpressions ==> [ :tokens | |operands operators opStart ruleTokens|
		tokens size = 2   
			ifTrue: [ ruleTokens := tokens second. opStart := tokens first first ]
			ifFalse: [ ruleTokens := tokens ]. 
		operands := ( 1 to: ruleTokens size by: 2) collect: [ :index | ruleTokens at: index]. "even index are operands" 
		operators := (2 to: ruleTokens size by: 2) collect: [ :index | ruleTokens at: index].
		opStart ifNotNil: [ operators := operators asOrderedCollection addFirst: opStart; yourself ].
		operands  -> operators.
	]  "optionOperand , #('\||/' optionOperand) star" 