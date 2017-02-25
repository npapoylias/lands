parsing
parse: aString using: algoInst
	|charts|
	charts := (algoInst  parse: aString using: grammar). 

	^ ParsecResult new
		 charts: charts;
		 value: (charts successfullTrees first valueRoot: aString withAlternatives: OrderedCollection new)