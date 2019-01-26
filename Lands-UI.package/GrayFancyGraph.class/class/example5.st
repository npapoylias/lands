example
example5

	|result|
	result := (GrayLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"') asDFA.
	^ ((GrayFancyGraph new with: result asGraph) viewWithLayoutCoefficient: 4) view 