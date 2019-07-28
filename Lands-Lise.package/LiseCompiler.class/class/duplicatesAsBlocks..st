accessing
duplicatesAsBlocks: globalDict
	|s|
	s := (globalDict collect: [ :a | a key ]) asSet.
	s do: [ :k | |duplicates|
		duplicates := OrderedCollection new.
		globalDict do: [:assoc |  
			assoc key = k ifTrue: [ duplicates add: assoc  ]
		].
		duplicates size > 1
			ifTrue: [  
				globalDict removeAll: duplicates.
				globalDict add: (k -> (self globalSelectorAsBlock: k))	
			]
	]