accessing
parse: aString using: algoInst

	|charts trees |

	"put a timeout by default for debugging purposes"

	charts := (algoInst  parse: aString using: self "timeout: 5"). 

	^ GrayResult new
		 for: aString;
		 charts: charts;
		 trees: (trees := charts successfullTrees);
		 results: (trees collect: [ :tree | 
			charts ambiguous 
				ifFalse: [ self evaluateActionsForSingleTree: tree first on: aString  ]
				ifTrue: [self evaluateActionsFor: tree first on: aString]  
		])