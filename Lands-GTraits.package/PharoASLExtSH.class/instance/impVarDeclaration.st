accessing
impVarDeclaration

	^ super impVarDeclaration ==> [ :values | self token: values first color: #orange; token: values first emphasis: #bold ]