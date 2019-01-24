accessing
impVarDeclaration

	^ super impVarDeclaration ==> {
		[ :values | 
			self region: values first color: #orange; region: values first emphasis: #bold.
			self region: values third emphasis: #bold.
		].
		[ :values | self region: values first color: #orange; region: values first emphasis: #bold ].
	}