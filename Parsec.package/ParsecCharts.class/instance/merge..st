accessing
merge: roots

	|dict|

	dict := roots first childrenStates.
	roots allButFirst do: [ :r | 
		r childrenStates keysAndValuesDo: [ :key :value |
			(dict at: key ifAbsentPut: [ OrderedCollection new ])
				addAll: value 
		]	
	].

	^ roots first