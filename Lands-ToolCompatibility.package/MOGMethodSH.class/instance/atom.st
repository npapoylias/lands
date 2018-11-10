accessing
"protocol: accessing"
atom

	^ super atom ==> { "this is good naming convension"
		[ :token | self token: token color: Color green].
		[ :token | self token: token color: Color green ].
		[ :token | self 
			token: token color: Color distinctTenStrongColors fourth;
			token: token emphasis: #italic ]. 
		[ :token | token ].
		[ :tokens | tokens ]. 
		[ :tokens | tokens ].
		[ :tokens | tokens ].
	}.