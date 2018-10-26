Parsec-ToolCompatibility
initialize

	self class recompile. "loading order temporary fix - REDO"
	(self class allSuperclassesIncluding: MOGrammar) do: [ :c | c recompile ].
	
	
	grammar := ParsecGrammar 
		new named: self class name; 
		with: ((self class allSelectorsBelow: CustomLanguageClass) collect: 
			[ :name | self perform: name]).