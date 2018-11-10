accessing
parse: aString using: algoInst

	|charts|

	"put a timeout by default for debugging purposes"

	charts := (algoInst  parse: aString using: self "timeout: 5"). 

	^ GrayResult new
		 for: aString;
		 charts: charts;
		 trees: charts successfullTrees;
		 results: (charts successfullTrees collect: [ :tree | self evaluateActionsFor: tree first on: aString "send start rule without EOF" ])