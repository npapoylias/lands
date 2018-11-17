accessing
uniformDistribution

	^ super uniformDistribution ==> [ :values | 
		self region: values first color: #green emphasis: #bold.
	]