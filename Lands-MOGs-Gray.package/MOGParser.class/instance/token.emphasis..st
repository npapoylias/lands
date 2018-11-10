parsing
token: token emphasis: aSymbol
	"bold, italic, narrow, normal, strucOut, underlined"
	^ self token: token has: (TextEmphasis perform: aSymbol)