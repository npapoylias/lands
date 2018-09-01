adding
markFailureFor: aState

	"aState ifNotNil: [
		self do: [ :s | (s state equalTo: aState) ifTrue: [ s failed ] ]
	]"