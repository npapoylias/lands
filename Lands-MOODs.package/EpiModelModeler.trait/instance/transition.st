accessing
"protocol: #accessing"

transition

	^ super transition ==> [ :values | 
		values first symbol -> (values last symbol -> values third symbol)
	]