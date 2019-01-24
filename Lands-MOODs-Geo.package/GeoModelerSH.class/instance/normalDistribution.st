accessing
normalDistribution

	^ super normalDistribution ==> [ :values | 
		self region: values first color: #green emphasis: #bold.
		self region: values third color: #cyan emphasis: #italic.
		self region: values seventh color: #cyan emphasis: #italic.
		self region: (values at: 11) color: #cyan emphasis: #italic.
	]