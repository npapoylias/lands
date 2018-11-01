accessing
"protocol: accessing"
rule

	^ "rule --> id , '::=' , ruleExpressions " super rule ==> [ :tokens | 
			self highlight: tokens first with: (TextColor color: Color orange).
			self highlight: tokens second with: (TextColor color: Color lightRed).
	]