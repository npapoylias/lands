example
example3

	|result|
	result := (GrayLexer new parse: '"(a|b)*"') asNFA.
	^ ((GrayFancyGraph new with: result asGraph) viewWithLayoutCoefficient: 3) view 