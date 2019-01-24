accessing
table

	^ super table ==> [ :values | 
		self region: values first color: #green emphasis: #bold.
		self region: values last color: #green emphasis: #bold.
	]
