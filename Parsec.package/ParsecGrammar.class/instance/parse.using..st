accessing
parse: aString using: algoInst

	|charts|

	charts := (algoInst  parse: aString using: self). 

	^ ParsecResult new
		 for: aString;
		 charts: charts;
		 trees: charts successfullTrees;
		 results: (charts successfullTrees collect: [ :tree | self evaluateActionsFor: tree first on: aString "send start rule without EOF" ])