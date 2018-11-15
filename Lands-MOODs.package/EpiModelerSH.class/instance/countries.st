accessing
countries

	^ super countries ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		self region: values second emphasis: #bold.
		values odds allButFirst do: [ :i | 
			self region: i emphasis: #bold.
			self region: i emphasis: #italic 
		]
	]
