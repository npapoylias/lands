accessing
duplicatesAsBlocks: globalDict
	|s|
	s := globalDict keys asSet.
	s do: [ :k | |duplicates|
		duplicates := OrderedCollection new.
		globalDict associationsDo: [:assoc |  
			assoc key = k ifTrue: [ duplicates add: assoc value ]
		].
		duplicates size > 1
			ifTrue: [  
				globalDict removeAll: duplicates.
				globalDict add: (k -> (self globalSelectorAsBlock: k))	
			]
	]