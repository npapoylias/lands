accessing
ownership

	^ super ownership ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		self region: values last color: #green emphasis: #italic.
		self region: values second emphasis: #bold.
	]