lands-extentions
openString: aString

	self editor replace: (1 to: self text size)  with: aString asText and: [].
	self style.