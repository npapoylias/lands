filtering
computeFollow

	self isTerminal ifTrue: [ ^ self ].
	
	rightHandSide do: [ :rule | 
		|firstEpsilon lastEpsilon|  
				1 to: rule size do: [ :index | 
					((self flattenFirstsFor: (rule at: index)) anySatisfy: [ :r | r == #e ])
						ifTrue: [ firstEpsilon ifNil: [ firstEpsilon := index ]. lastEpsilon := index ]].
		1 to: rule size do: [ :index | 
			|left right|
			left := rule at: index.
			right := rule at: index + 1 ifAbsent: [self name] "last one".
			(self followFor: left) 
				addAll: ((self flattenFirstsFor: right) select: [ :r |( r == #e) not ]).
			((lastEpsilon = rule size and: [ index >= firstEpsilon ]) or: [ index = rule size ])
				ifTrue: [ (self followFor: left) addAll: self follow ] 
			]
		]			
	