accessing
category

	^ super category ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		self region: values last color: #green emphasis: #italic.
		self region: values third color: #cyan emphasis: #italic.
		self region: values second emphasis: #bold.
	]