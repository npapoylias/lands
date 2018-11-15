accessing
row

	^ super row ==> [ :values | 
		self region: values first color: #green emphasis: #bold.
		self region: values last color: #green emphasis: #bold.
		self region: values allButFirst allButLast emphasis: #bold.
		self region: values allButFirst allButLast emphasis: #italic.
	]
