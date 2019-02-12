accessing
"protocol: accessing"
rule

	^ "rule --> id , '::=' , ruleExpressions " super rule ==> [ :tokens | 
			self 
				region: tokens first color: Color lightBlue emphasis: #bold. 
			self 
				region: tokens second color: Color orange emphasis: #bold.
	] 