accessing
initialize

	|stateRules unarySel keySel validationRules gRule grammar |
	
	self class isAbstract ifTrue: [ ^ self ].
	
	self class recompile. "loading order temporary fix - REDO"
	(self class allSuperclassesIncluding: MOODsDomain) do: [ :c | c recompile ].
	
	unarySel := OrderedCollection new.
	keySel := OrderedCollection new.
	(self class allSelectorsBelow: MOODsMOGRecognizer) do: [:sel |
		(sel isUnary and: [ sel ~= #initialize ]) ifTrue: [ unarySel add: sel ].
		sel isKeyword ifTrue: [ keySel add: sel ]
	].
	grammar := unarySel collect: [ :name | self perform: name].
	stateRules := grammar select: [ :r | r annotated ] thenCollect: [ :r | r name asSymbol ].

	"validationRules := keySel 
		select: [ :sel | (self class >> sel) origin isTrait and: [ (self class >> sel) origin traitComposition allTraits includes: BlueprintActions  ]  ]. 
	validationRules do: [ :name | 
			(validationDictionary at: (self class >> name) origin name ifAbsentPut: [ OrderedCollection new ]) add: name
	]."
	"self generateMetaModel."
	gRule := #stateRules --> stateRules first.
	stateRules allButFirst do: [ :s | gRule / s ].
	self grammar: (MOGrammar 
		new named: self class name; 
		with: (grammar add: gRule; yourself)).