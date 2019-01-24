accessing
borders

	^ super borders ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		self region: values second emphasis: #bold.
	]
