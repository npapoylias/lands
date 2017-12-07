filtering
computeFirsts

	firsts := OrderedCollection new.
	rightHandSide do: [ :rule | firsts add: (self firstForRightHandSide: rule)]. "recursive rules need a second pass"
	"test for mutual recursion"
	rightHandSide doWithIndex: [ :rule :index | firsts at: index put: (self firstForRightHandSide: rule)].
	canBeEmpty := firsts deepFlatten anySatisfy: [ :r | r isEmpty ].
	^ firsts := firsts	asParsecCollection.
	