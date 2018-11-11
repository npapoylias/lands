accessing
impVarDeclaration

	^ super impVarDeclaration ==> {
		[ :values | 
			self token: values first color: #orange; token: values first emphasis: #bold.
			self token: values third emphasis: #bold.
		].
		[ :values | self token: values first color: #orange; token: values first emphasis: #bold ].
	}