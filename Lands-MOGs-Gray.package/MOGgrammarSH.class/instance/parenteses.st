accessing
"protocol: accessing"
parenteses

	"^ parentheses --> '\(' , ruleExpressions , '\)'"
	 
	^ super parenteses ==> [ :tokens |  
			self highlight: tokens first with: (TextColor color: Color lightRed).
			self highlight: tokens third with: (TextColor color: Color lightRed).
	]