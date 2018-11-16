accessing
"protocol: accessing"
parenteses

	"^ parentheses --> '\(' , ruleExpressions , '\)'"
	 
	^ super parenteses ==> [ :tokens |   
			self region: tokens first color: Color white emphasis: #bold.
			self region: tokens last color: Color white emphasis: #bold.
	]