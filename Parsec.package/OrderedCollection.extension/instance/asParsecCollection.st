*Parsec
asParsecCollection

	|pCollection|
	pCollection := ParsecCollection new.
	self do: [ :item | pCollection add: item ].
	^ pCollection