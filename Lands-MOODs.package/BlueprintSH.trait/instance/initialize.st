accessing
initialize

	|unarySel keySel|
	
	self class isAbstract ifTrue: [ ^ self ].
	
	self class recompile. "loading order temporary fix - REDO"
	(self class allSuperclassesIncluding: MOODsDomain) do: [ :c | c recompile ].
	
	unarySel := OrderedCollection new.
	keySel := OrderedCollection new.
	(self class allSelectorsBelow: MOODsMOGRecognizer) do: [:sel |
		(sel isUnary and: [ sel ~= #initialize ]) ifTrue: [ unarySel add: sel ].
		sel isKeyword ifTrue: [ keySel add: sel ]
	].
	self grammar: (MOGrammar 
		new named: self class name; 
		with: (unarySel collect: [ :name | self perform: name])).