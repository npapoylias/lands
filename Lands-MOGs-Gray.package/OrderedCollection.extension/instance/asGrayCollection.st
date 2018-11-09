*Lands-MOGs-Gray
asGrayCollection

	|pCollection|
	pCollection := GrayCollection new.
	self do: [ :item | pCollection add: item ].
	^ pCollection