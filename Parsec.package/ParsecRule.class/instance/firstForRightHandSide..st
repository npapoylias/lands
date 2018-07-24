filtering
firstForRightHandSide: rule
	
	|symbolFirsts totalFirsts index ruleRef|
	
	index := 1.
	totalFirsts := { } asOrderedCollection.
	[symbolFirsts = nil or: [ ruleRef isNot or: [(symbolFirsts includes: #e) and: [ index <= rule size ]]]]
		whileTrue: [ 
			ruleRef := self grammar at: (rule at: index).
			symbolFirsts := ruleRef firsts.
			totalFirsts addAll: symbolFirsts. "will return asSet at the end" 
			index := index + 1 
		].
	
	^ totalFirsts deepFlatten asSet asOrderedCollection
