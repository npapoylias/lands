initialization
initialize

	super initialize.
	
	grammar := ParsecGrammar 
		new named: self class name; 
		with: ((self class allSelectorsBelow: CustomLanguageClass) collect: 
			[ :name | self perform: name]).