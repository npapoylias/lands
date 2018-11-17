accessing
stats

	^ super stats ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		self region: values fifth emphasis: #bold.
	]