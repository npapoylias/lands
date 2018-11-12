accessing
variable

	^ super variable ==> { 
		[ :token | self token: token color: #cyan; token: token emphasis: #bold ].
		[ :token | self token: token color: #cyan ].
	}