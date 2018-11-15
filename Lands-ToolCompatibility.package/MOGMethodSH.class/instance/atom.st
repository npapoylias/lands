accessing
"protocol: accessing"
atom

	^ super atom ==> { "this is good naming convension"
		[ :token | self region: token color: Color green].
		[ :token | self region: token color: Color green ].
		[ :token | self 
			region: token color: Color distinctTenStrongColors fourth;
			region: token emphasis: #italic ]. 
		[ :token | token ].
		[ :tokens | tokens ]. 
		[ :tokens | tokens ].
		[ :tokens | tokens ].
	}.