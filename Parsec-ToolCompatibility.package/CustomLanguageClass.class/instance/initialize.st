Parsec-ToolCompatibility
initialize
	
	self recompile. "loading order fix"
	
	grammar := ParsecGrammar 
		new named: self class name; 
		with: ((self class allSelectorsBelow: CustomLanguageClass) collect: 
			[ :name | self perform: name]).