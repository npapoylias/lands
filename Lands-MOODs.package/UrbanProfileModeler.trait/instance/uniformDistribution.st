accessing
uniformDistribution

	^ super uniformDistribution ==> [ :values |  
			Interval from: (values at: 3) number to: (values at: 5) number	
		]