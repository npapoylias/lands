accessing
"protocol: accessing"
atom

	^ super atom ==> { "this is good naming convension"
		[ :token | self region: token color: Color yellow emphasis: #bold].
		[ :token | self region: token color: Color yellow emphasis: #bold ].
		[ :token | self 
			region: token color: Color cyan;
			region: token emphasis: #italic ]. 
		[ :token | token ].
		[ :tokens | tokens ]. 
		[ :tokens | tokens ].
		[ :tokens | tokens ].
	}.