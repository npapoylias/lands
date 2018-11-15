accessing
variable

	^ super variable ==> { 
		[ :token | self region: token color: #cyan; region: token emphasis: #bold ].
		[ :token | self region: token color: #cyan ].
	}