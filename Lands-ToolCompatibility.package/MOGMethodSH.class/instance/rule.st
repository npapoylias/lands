accessing
"protocol: accessing"
rule

	^ "rule --> id , '::=' , ruleExpressions " super rule ==> [ :tokens | 
			self 
				region: tokens first color: Color green emphasis: #bold. 
			self 
				region: tokens second color: Color yellow emphasis: #bold.
	] 