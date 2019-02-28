accessing
literal

	^ super literal ==> {
		[ :token | self region: token color: Color yellow ].
		[ :token | self region: token color: Color lightBrown ].
		[ :token | self region: token color: Color lightBrown ].
		[ :token | token "self region: token color: Color yellow" ].
		[ :token | token "self region: token color: Color yellow" ].
		[ :token | token ].
		[ :token | self region: token color: Color green emphasis: #bold ].
		[ :token | self region: token color: Color green emphasis: #bold ].
		[ :token | self region: token color: Color green emphasis: #bold ].
	}