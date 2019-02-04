*Lands-UI-Editor
openLandsDoc
	|file assoc|
	file := UIManager default theme
		chooseFileNameIn: UIManager default
		title: 'Open .lands doc'
		extensions: '.lands'
		path: FileSystem workingDirectory
		preview: nil.
		"chooseFullFileNameMatching: nil." 
	"self halt."
	file ifNotNil: [ |shoutStyler|
		assoc := FLMaterializer materializeFromFileNamed: file fullName.
		self textArea model text: assoc key asText.
		shoutStyler := self textArea shoutStyler. 
		shoutStyler 
			ifNotNil: [ shoutStyler styler postStyleActions: assoc value. shoutStyler styler privateStyle: self text ]
			ifNil: [ assoc value do: [ :a | a value: self text ] ]
	]