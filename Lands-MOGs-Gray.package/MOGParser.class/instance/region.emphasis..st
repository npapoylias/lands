parsing
region: token emphasis: aSymbol
	"bold, italic, narrow, normal, strucOut, underlined"
	^ self region: token has: (TextEmphasis perform: aSymbol)