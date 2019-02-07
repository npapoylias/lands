lands-extentions
saveLandsDoc
	|file |
	file := UIManager default theme
		fileSaveIn: UIManager default
		title: 'Save .lands doc'
		extensions: {'lands'}
		path: FileSystem workingDirectory
		"preview: nil".
		"chooseFullFileNameMatching: nil." 
	"self halt."
	file ifNotNil: [ |shoutStyler actions|
		shoutStyler := self textArea shoutStyler. 
		shoutStyler 
			ifNotNil: [ actions := shoutStyler styler postStyleActions ]
			ifNil: [ actions := self textArea model text runs asOrderedCollection flatten ].
		FLSerializer serialize: self textArea model text string -> actions toFileNamed: file fullName.
	]