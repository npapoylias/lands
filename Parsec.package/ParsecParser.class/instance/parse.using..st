parsing
parse: aString using: algoInst
	|charts|
	charts := (algoInst  parse: aString using: grammar). 

	^ ParsecResult new
		 charts: charts;
		 trees: charts successfullTrees