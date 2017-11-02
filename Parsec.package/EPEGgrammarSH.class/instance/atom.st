accessing
"protocol: accessing"
atom

	^ super atom ==> { "this is good naming convension"
		[ :token | self highlight: token with: (TextColor color: Color green) ].
		[ :token | self highlight: token with: (TextColor color: Color lightBlue) ].
		[ :token | self highlight: token with: (TextColor color: Color yellow) ]. 
		[ :token | token ].
		[ :tokens | tokens ].
		[ :tokens | tokens ].
		[ :tokens | tokens ].
	}.