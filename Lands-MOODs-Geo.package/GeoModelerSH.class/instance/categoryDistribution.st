accessing
categoryDistribution

	^ super categoryDistribution ==> [ :values | 
		2 to: values size by: 4 do: [ :i |
			self region: (values at: i) color: #green emphasis: #italic	
		]
	]