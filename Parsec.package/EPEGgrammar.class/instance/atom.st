accessing
"protocol: accessing"
atom

	^ super atom ==> { 
		[ :token | |s|
			s := (token value atAll: (2 to: token value size - 1)). 
			(ParsecLexer new parseAsString: s) asDFA regExpr: token value.
		].
		[ :token | token value atAll: (2 to: token value size - 1) ].
		[ :token | token ]. "should fix to nil, or use dict ?"
		[ :token | #e ].
		[ :tokens | tokens second ].
		[ :tokens | tokens second delimeterStar ].
		[ :tokens | tokens second delimeterStaro ].
	}.