accessing
syntax
	|t tName tPClass|
	tName := self name, 'Syntax'.
	t := Trait named: tName uses: {  } category: self category.
	tPClass := WriteStream on: String new.
	tPClass 
		nextPutAll: 'parserClass';
		nextPut: Character cr;
		nextPut: Character cr;
		nextPut: Character tab;
		nextPutAll: '^ ';
		nextPutAll: self name.
	t classTrait compile: tPClass contents.
	Smalltalk globals at: tName asSymbol put: t.
	^ t