adding
markFor: aState

	aState ifNotNil: [
		self do: [ :s | (s state equalTo: aState) ifTrue: [ s seen ] ]
	]