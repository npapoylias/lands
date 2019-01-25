initialization
initialize
	| stateRules unarySel keySel validationRules gRule |
	self class isAbstract
		ifTrue: [ ^ self ].
	self class recompileRecursivelyWithTraits.	"loading order temporary fix - REDO"
			(self class allSuperclassesIncluding: MOGRecognizer) do: [ :c | c recompileRecursivelyWithTraits ].
	unarySel := OrderedCollection new.
	keySel := OrderedCollection new.
	(self class allSelectorsBelow: MOODsMOGRecognizer)
		do: [ :sel | 
			(sel isUnary and: [ sel ~= #initialize ])
				ifTrue: [ unarySel add: sel ].
			sel isKeyword
				ifTrue: [ keySel add: sel ] ].
	grammar := unarySel collect: [ :name | self perform: name ].
	stateRules := grammar select: [ :r | r annotated ] thenCollect: [ :r | r name asSymbol ].
	stateDictionary := Dictionary new.
	validationDictionary := Dictionary new.
	stateRules do: [ :name | (stateDictionary at: (self class >> name) origin name ifAbsentPut: [ OrderedCollection new ]) add: name ].
	validationRules := keySel select: [ :sel | (self class >> sel) origin isTrait and: [ (self class >> sel) origin traitComposition allTraits includes: BlueprintActions ] ].
	validationRules do: [ :name | (validationDictionary at: (self class >> name) origin name ifAbsentPut: [ OrderedCollection new ]) add: name ].
	self generateMetaModel.
	gRule := #stateRules --> stateRules first.
	stateRules allButFirst do: [ :s | gRule / s ].
	grammar := MOGrammar new
		named: self class name;
		with:
			(grammar
				add: gRule;
				yourself)