accessing
"protocol: accessing"
atom

	^ super atom ==> { 
		[ :token | |s name| 
			s := (token tokenValue atAll: (2 to: token tokenValue size - 1)). 
			((ParsecLexer new parseAsString: s) asDFA regExpr: s) asRule.
		].
		[ :token | token tokenValue atAll: (2 to: token tokenValue size - 1) ].
		[ :token | token ]. "should fix to nil, or use dict ?"
		[ :token | #e ].
		[ :token | token ].
		[ :tokens | tokens second delimeterStar ].
		[ :tokens | tokens second delimeterStaro ].
	}.