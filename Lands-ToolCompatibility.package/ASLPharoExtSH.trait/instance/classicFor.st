accessing
classicFor

	^ super classicFor ==> [ :values | 
		self token: values first color: #orange; token: values first emphasis: #bold.
		self token: values third color: #orange; token: values third emphasis: #bold.
		self token: values fifth color: #orange; token: values fifth emphasis: #bold.
	]