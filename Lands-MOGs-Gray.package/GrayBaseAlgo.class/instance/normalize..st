parsing
normalize: aString 
	"quick fix, revisit and properly handle"
	^ aString asByteArray asString select: [ :c | (c == Character null) not ]