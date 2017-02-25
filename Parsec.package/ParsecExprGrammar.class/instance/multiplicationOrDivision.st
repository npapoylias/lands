accessing
multiplicationOrDivision

	^ multiplicationOrDivision --> 
		expression , '\*|/' , expression ==> [ :tokens | 
			tokens first perform: tokens second value asSymbol withArguments: {tokens third} ].