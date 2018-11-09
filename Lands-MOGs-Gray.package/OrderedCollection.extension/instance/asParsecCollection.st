*Lands-MOGs-Gray
asParsecCollection

	|pCollection|
	pCollection := GrayCollection new.
	self do: [ :item | pCollection add: item ].
	^ pCollection