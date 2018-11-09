example
example2

	|result|
	result := (GrayLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	^ (GrayFancyGraph new with: result asGraph) viewWithLayoutCoefficient: 2