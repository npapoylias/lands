accessing
variable

	^ super variable ==> { 
		[ :token | self region: token color: #cyan; region: token emphasis: #bold ].
		[ :token | token string first isUppercase 
			ifTrue: [ self region: token color: #cyan; region: token emphasis: #bold ]
			ifFalse: [ self region: token color: #cyan]
		]
	}