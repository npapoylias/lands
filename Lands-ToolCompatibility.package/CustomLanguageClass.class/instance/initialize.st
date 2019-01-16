Parsec-ToolCompatibility
initialize

	self class recompileRecursivelyWithTraits."loading order temporary fix - REDO"
	(self class allSuperclassesIncluding: MOGRecognizer) do: [ :c | 
		c recompileRecursivelyWithTraits ].
	
	
	grammar := MOGrammar 
		new named: self class name; 
		sanitize; "messes with value actions semantics.. for + * delimeter"
		with: ((self class allSelectorsBelow: CustomLanguageClass) 
			select: [ :sel | sel isUnary and: [ sel ~= #initialize ] ] 
			thenCollect: [ :name | self perform: name]).