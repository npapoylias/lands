example
example4

	|result|
	result := (ParsecLexer new parse: '"(a|b)*"') asDFA.
	^ ((ParsecFancyGraph new with: result asGraph) viewWithLayoutCoefficient: 4) view 