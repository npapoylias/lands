example
example4

	|result|
	result := (GrayLexer new parse: '"(a|b)*"') asDFA.
	^ ((GrayFancyGraph new with: result asGraph) viewWithLayoutCoefficient: 4) view 