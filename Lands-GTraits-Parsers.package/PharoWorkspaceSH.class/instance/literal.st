accessing
literal

	^ super literal ==> {
		[ :token | self region: token color: Color yellow ].
		[ :token | self region: token color: Color lightBrown ].
		[ :token | self region: token color: Color yellow ].
		[ :token | self region: token color: Color yellow ].
		[ :token | self region: token color: Color yellow ].
		[ :token | self region: token color: Color yellow ].
		[ :value | value ]. "passthrough mog rule"
		[ :token | self region: token color: Color yellow ].
		[ :token | self region: token color: Color yellow ].
		[ :token | self region: token color: Color yellow ].
	}