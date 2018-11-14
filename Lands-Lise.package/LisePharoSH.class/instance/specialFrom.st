accessing
specialFrom

	^ super specialForm ==> [:values | 
		self token: values first color: #orange. 
		self token: values first emphasis: #bold
	]