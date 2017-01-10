filtering
computeFollow

	self isTerminal ifTrue: [ ^ self ].
	
	rightHandSide do: [ :rule | 
		|firstEpsilon lastEpsilon|  
				1 to: rule size do: [ :index | 
					((self flattenFirstsFor: (rule at: index)) anySatisfy: [ :r | r isEmpty ])
						ifTrue: [ firstEpsilon ifNil: [ firstEpsilon := index ]. lastEpsilon := index ]].
		1 to: rule size do: [ :index | 
			|left right|
			left := rule at: index.
			right := rule at: index + 1 ifAbsent: [nil] "last one".
			right ifNotNil: [(self followFor: left) 
				addAll: ((self flattenFirstsFor: right) select: [ :r | ( r isEmpty) not ])].
			((lastEpsilon = rule size and: [ index + 1 >= firstEpsilon ]) or: [ index = rule size ])
				ifTrue: [ (self followFor: left) addAll: self follow ] 
			]
		]			
	