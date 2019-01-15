accessing
merge: roots

	|d|

	d := roots first childrenStates.
	roots allButFirst do: [ :r | 
		r childrenStates keysAndValuesDo: [ :key :value |
			(d at: key ifAbsentPut: [ GrayCollection new ])
				addAll: value 
		]	
	].

	^ roots first