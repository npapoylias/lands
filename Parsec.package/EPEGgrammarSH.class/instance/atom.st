accessing
atom

	^ super atom ==> { "this is good naming convension"
		[ :token | self highlight: token with: (TextColor color: Color green) ].
		[ :token | self highlight: token with: (TextColor color: Color blue) ].
		[ :token | self highlight: token with: (TextColor color: Color yellow) ]. 
		[ :token | token ].
		[ :tokens | tokens ].
		[ :tokens | tokens ].
		[ :tokens | tokens ].
	}.