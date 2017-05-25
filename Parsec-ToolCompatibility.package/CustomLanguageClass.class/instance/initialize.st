Parsec-ToolCompatibility
initialize
	
	self class recompile. "loading order temporary fix"
	
	grammar := ParsecGrammar 
		new named: self class name; 
		with: ((self class allSelectorsBelow: CustomLanguageClass) collect: 
			[ :name | self perform: name]).