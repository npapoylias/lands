accessing
openImage: aFile

	^ PNGReadWriter formFromFileNamed: FileSystem disk workingDirectory / (aFile , '.png')