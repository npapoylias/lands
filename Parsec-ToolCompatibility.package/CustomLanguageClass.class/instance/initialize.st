Parsec-ToolCompatibility
initialize

	self class recompile. self class traits do: [ :t | t recompile ]."loading order temporary fix - REDO"
	(self class allSuperclassesIncluding: MOGRecognizer) do: [ :c | 
		self halt.
		c recompile. c traits do: [ :t | t recompile ] ].
	
	
	grammar := ParsecGrammar 
		new named: self class name; 
		with: ((self class allSelectorsBelow: CustomLanguageClass) 
			select: [ :sel | sel isUnary and: [ sel ~= #initialize ] ] 
			thenCollect: [ :name | self perform: name]).