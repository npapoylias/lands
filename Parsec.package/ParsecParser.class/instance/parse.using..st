parsing
parse: aString using: algoInst
	|charts|
	charts := (algoInst  parse: aString using: grammar). 

	self halt.

	^ ParsecResult new
		 charts: charts;
		 value: charts successfullTrees