lands-extentions
applyStyle: aStyleName

	|style|
	style := FLMaterializer materializeFromFileNamed: 'styles/' , aStyleName , '.style'.
	style do: [ :a | self forceAttribute: a ].