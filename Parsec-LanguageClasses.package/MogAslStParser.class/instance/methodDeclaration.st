grammar
methodDeclaration

	^ super methodDeclaration ==> {   
		[ :token | token dclr ]. "verbatim this will be #(unary) decl etc."
		[ :values | values binDclr ]. 
		[ :values | values keyDclr ]
	} 