accessing
"protocol: accessing"
rule

	^ "rule --> id , '::=' , ruleExpressions " super rule ==> [ :tokens | 
			self 
				token: tokens first color: Color distinctTenStrongColors fifth; 
				token: tokens first emphasis: #bold.
			self 
				token: tokens second color: Color white; 
				token: tokens second emphasis: #bold.
	] 