filtering
computeFirsts

	firsts := OrderedCollection new.
	rightHandSide do: [ :rule | 
		firsts add: (self firstForRightHandSide: rule)
	].
	canBeEmpty := firsts deepFlatten anySatisfy: [ :r | r isEmpty ].
	^ firsts	
	