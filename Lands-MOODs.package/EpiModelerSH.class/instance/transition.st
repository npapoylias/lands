accessing
transition

	^ super transition ==> [ :values | 
		self region: values second color: #yellow emphasis: #bold.
		self region: values fourth color: #yellow emphasis: #bold.
		self region: values third color: #green emphasis: #italic.
	]
