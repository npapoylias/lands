accessing
specialFrom

	^ super specialForm ==> [:values | 
		self region: values first color: #orange. 
		self region: values first emphasis: #bold
	]