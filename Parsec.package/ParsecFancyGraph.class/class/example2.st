example
example2

	|result|
	result := (ParsecLexer new parse: '"(\\[\\/"bfnrt]|\\u[0-9a-fA-F]{4}|[^\\"])*"').
	^ (ParsecFancyGraph new with: result asGraph) viewWithLayoutCoefficient: 2