accessing
transitions

	^ super transitions ==> [ :values | |assocs| 
		assocs := values allButFirst odds. "ie this will create a 2D tr[S][I]=param" 
		((assocs collect: #key) asSet
			collect: [ :key | 
				key -> (assocs select: [ :a | a key = key ] thenCollect: #value) asDictionary 
			]) asDictionary 
		]

	