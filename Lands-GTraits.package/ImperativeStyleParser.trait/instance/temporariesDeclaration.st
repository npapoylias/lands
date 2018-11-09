accessing
temporariesDeclaration

	^ super temporariesDeclaration ==> {
		[ :values | values temps ].
		[ :values | { values vars temps. values stmts } ]
	}