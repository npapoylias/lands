lands-extentions
applyStyle: aStyleName

	|style|
	"(FileSystem disk workingDirectory / 'styles' / (aStyleName , '.style')) asFileReference readStream upToEnd"
	style := FLMaterializer materializeFromFileNamed: (Smalltalk imageDirectory / 'styles' / (aStyleName , '.style')) asFileReference pathString.
	style do: [ :a | self forceAttribute: a ].