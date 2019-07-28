accessing
duplicatesAndSymbolsAsBlocks: globalDict
	|s|
	s := (globalDict collect: [ :a | a key ]) asSet.
	s do: [ :k | |duplicates|
		duplicates := OrderedCollection new.
		globalDict do: [:assoc |  
			assoc value isSymbol ifTrue: [ assoc value: (self globalSelectorAsBlock: assoc value) ].
			assoc key = k ifTrue: [ duplicates add: assoc  ]
		].
		duplicates size > 1
			ifTrue: [  
				globalDict removeAll: duplicates.
				globalDict add: (k -> (self globalSelectorAsBlock: k))	
			]
	]