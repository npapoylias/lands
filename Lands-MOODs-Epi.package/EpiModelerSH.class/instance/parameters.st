accessing
parameters

	^ super parameters ==> [ :values | 
		self region: values first color: #orange emphasis: #bold.
		values allButFirst odds do: [ :i | self region: i color: #green ]
	]
