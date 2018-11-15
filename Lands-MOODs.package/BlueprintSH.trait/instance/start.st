accessing
start

	^ super start ==> [ :values | 
			self 
				region: values first 
				color: #green
				emphasis: #bold
				size: 15 
	]