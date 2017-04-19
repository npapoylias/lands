parsing
parse: aString using: algoInst

	|charts|

	charts := (algoInst  parse: aString using: grammar). 

	^ ParsecResult new
		 charts: charts;
		 trees: charts successfullTrees;
		 results: (charts successfullTrees collect: [ :tree | self evaluateActionsFor: tree first on: aString "send start rule without EOF" ])