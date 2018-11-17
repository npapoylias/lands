accessing
time

	^ super time ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		self region: values last color: #green emphasis: #italic.
		self region: values fifth emphasis: #bold.
	]