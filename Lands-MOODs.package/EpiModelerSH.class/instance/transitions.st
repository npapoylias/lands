accessing
transitions

	^ super transitions ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
	]
