accessing
uniformDistribution

	^ super uniformDistribution ==> [ :values |  
			Interval from: (values at: 3) to: (values at: 5)	
		]