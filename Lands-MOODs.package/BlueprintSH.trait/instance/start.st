accessing
start

	^ super start ==> [ :values | 
			self 
				token: values first color: #green;
				token: values first emphasis: #bold;
				token: values first size: 15 
	]