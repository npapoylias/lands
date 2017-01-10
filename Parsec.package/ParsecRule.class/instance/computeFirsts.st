filtering
computeFirsts

	firsts := OrderedCollection new.
	rightHandSide do: [ :rule | 
		firsts add: (self firstForRightHandSide: rule)
	].
	canBeEmpty := firsts anySatisfy: [ :r | r isEmpty ].
	^ firsts	
	