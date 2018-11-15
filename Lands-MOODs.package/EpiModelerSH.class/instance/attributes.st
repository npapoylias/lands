accessing
attributes

	^ super attributes ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		self region: values second color: #magenta emphasis: #italic. 
		self region: values second emphasis: #bold. 
	]
