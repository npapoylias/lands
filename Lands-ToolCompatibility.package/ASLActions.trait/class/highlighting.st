accessing
highlighting
	|t tName tPClass|
	tName := self name, 'Colors'.
	t := Trait named: tName uses: {  } category: self category.
	tPClass := WriteStream on: String new.
	tPClass 
		nextPutAll: 'syntaxHighlighting';
		nextPut: Character cr;
		nextPut: Character cr;
		nextPut: Character tab;
		nextPutAll: '^ ';
		nextPutAll: self name.
	t classTrait compile: tPClass contents.
	Smalltalk globals at: tName asSymbol put: t.
	^ t