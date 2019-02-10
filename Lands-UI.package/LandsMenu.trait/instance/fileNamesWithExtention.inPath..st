lands-extentions
fileNamesWithExtention: anExtention inPath: aPath

	"FileSystem disk workingDirectory" 
	^ aPath entries 
		select: [ :e | e extension = anExtention ] 
		thenCollect: [ :e | e reference basenameWithoutExtension ]