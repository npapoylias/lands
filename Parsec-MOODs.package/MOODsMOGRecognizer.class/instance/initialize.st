initialization
initialize

	|stateRules unarySel binarySel validationRules stateDictionary validationDictionary gRule |
	self class recompile. "loading order temporary fix - REDO"
	(self class allSuperclassesIncluding: MOODsDomain) do: [ :c | c recompile ].
	
	unarySel := OrderedCollection new.
	binarySel := OrderedCollection new.
	(self class allSelectorsBelow: MOODsMOGRecognizer) do: [:sel |
		(sel isUnary and: [ sel ~= #initialize ]) ifTrue: [ unarySel add: sel ].
		self isBinary ifTrue: [ binarySel add: sel ]
	].
	
	stateRules := grammar values select: [ :r | r annotated ] thenCollect: [ :r | r name ].
	stateDictionary := Dictionary new.
	validationDictionary := Dictionary new.
	stateRules do: [ :name | 
		(stateDictionary at: (self class >> name) origin name ifAbsentPut: [ OrderedCollection new ]) add: name.	 
	].
	validationRules := binarySel 
		select: [ :sel | (self class >> sel) isTrait and: [ (self class >> sel) traitComposition allTraits includes: BlueprintActions  ]  ]. 
	validationRules do: [ :name | 
			(validationDictionary at: (self class >> self) origin name ifAbsentPut: [ OrderedCollection new ]) add: name
	].
	gRule := #stateRules --> stateRules first.
	stateRules allButFirst do: [ :s | gRule / s ].
	grammar := ParsecGrammar 
		new named: self class name; 
		with: ((unarySel collect: [ :name | self perform: name]) add: gRule; yourself)