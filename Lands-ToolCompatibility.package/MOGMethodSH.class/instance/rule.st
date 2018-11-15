accessing
"protocol: accessing"
rule

	^ "rule --> id , '::=' , ruleExpressions " super rule ==> [ :tokens | 
			self 
				region: tokens first color: Color distinctTenStrongColors fifth; 
				region: tokens first emphasis: #bold.
			self 
				region: tokens second color: Color white; 
				region: tokens second emphasis: #bold.
	] 