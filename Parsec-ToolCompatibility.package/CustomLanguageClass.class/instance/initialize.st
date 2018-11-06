Parsec-ToolCompatibility
initialize

	self class recompileRecursivelyWithTraits."loading order temporary fix - REDO"
	(self class allSuperclassesIncluding: MOGRecognizer) do: [ :c | 
		c recompileRecursivelyWithTraits ].
	
	
	grammar := ParsecGrammar 
		new named: self class name; 
		with: ((self class allSelectorsBelow: CustomLanguageClass) 
			select: [ :sel | sel isUnary and: [ sel ~= #initialize ] ] 
			thenCollect: [ :name | self perform: name]).