defaults
open: aFile

	^ self icons at: aFile ifAbsentPut: [ 
		(PNGReadWriter formFromFileNamed: FileSystem disk workingDirectory / (aFile , '.png')) 
	]