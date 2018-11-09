accessing
"protocol: accessing"
atom

	^ super atom ==> { 
		[ :token | |s name| 
			s := (token string atAll: (2 to: token string size - 1)). 
			((GrayLexer new parseAsString: s) asDFA regExpr: s) asRule.
		].
		[ :token | token string atAll: (2 to: token string size - 1) ].
		[ :token | token ]. "should fix to nil, or use dict ?"
		[ :token | #e ].
		[ :token | token ].
		[ :tokens | {tokens second . tokens third} asArray delimeterStaro ]. "we flipped staro by default syncing"
		[ :tokens | {tokens second . tokens third} asArray delimeterStaro ].
	}.