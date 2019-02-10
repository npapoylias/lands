lands-extentions
applyStyle: aStyleName

	|style|
	"(FileSystem disk workingDirectory / 'styles' / (aStyleName , '.style')) asFileReference readStream upToEnd"
	style := FLMaterializer materializeFromFileNamed: 'styles/' , aStyleName , '.style'.
	style do: [ :a | self forceAttribute: a ].