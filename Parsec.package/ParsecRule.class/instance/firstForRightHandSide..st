filtering
firstForRightHandSide: rule
	
	|symbolFirsts totalFirsts index ruleRef lastRuleCanBeEmpty|
	
	index := 1.
	totalFirsts := { } asOrderedCollection.
	[symbolFirsts = nil or: [ (ruleRef isNot or: [lastRuleCanBeEmpty]) and: [ index <= rule size ]]]
		whileTrue: [ 
			ruleRef := self grammar at: (rule at: index).
			symbolFirsts := ruleRef firsts.
			lastRuleCanBeEmpty := symbolFirsts anySatisfy: [ :r | r isEmpty ].
			totalFirsts addAll: symbolFirsts. "will return asSet at the end" 
			index := index + 1 
		].
	lastRuleCanBeEmpty ifFalse: [ totalFirsts removeAllSuchThat: [ :r | r isEmpty ] ].
	^ totalFirsts deepFlatten asSet asOrderedCollection
