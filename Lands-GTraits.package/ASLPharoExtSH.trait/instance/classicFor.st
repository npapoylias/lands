accessing
classicFor

	^ super classicFor ==> [ :values | 
		self region: values first color: #orange; region: values first emphasis: #bold.
		self region: values third color: #orange; region: values third emphasis: #bold.
		self region: values fifth color: #orange; region: values fifth emphasis: #bold.
	]