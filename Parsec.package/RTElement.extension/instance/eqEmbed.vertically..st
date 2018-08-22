*Parsec
eqEmbed: aCollection vertically: spacing
	|maxSize sizes radius maxIndex|
	sizes := aCollection collect: [ :e | e extent ].
	radius := sizes collect: [ :s | s r ].
	maxIndex := radius indexOf: radius max.
	maxSize := sizes at: maxIndex.
	aCollection do: [ :e | e extent: maxSize ].
	RTVerticalLineLayout new gapSize:spacing; on:aCollection.
	RTNest new on: self nest: aCollection