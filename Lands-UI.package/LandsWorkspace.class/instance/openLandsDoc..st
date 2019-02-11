lands-extentions
openLandsDoc: file

	file ifNotNil: [ |shoutStyler assoc|
		assoc := FLMaterializer materializeFromFileNamed: file "fullName".
		"self textArea model setText: assoc key asText from: self."
		self editor replace: (1 to: self text size)  with: assoc key asText and: [].
		"pluggableTextMorph setText: assoc key asText. "
		shoutStyler := self textArea shoutStyler. 
		shoutStyler 
			ifNotNil: [ shoutStyler styler postStyleActions: assoc value. shoutStyler styler privateStyle: self text ]
			ifNil: [ assoc value do: [ :a | a value: self text ] ]
	].
	self style