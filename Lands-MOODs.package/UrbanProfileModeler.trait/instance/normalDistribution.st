accessing
normalDistribution

	^ super normalDistribution ==> [ :values |  
		|median sigma minim maxim|
		median := values at: 5.
		sigma := values at:  9.
		minim := values at: 13.
		maxim := values at: 15.
		{ median . sigma } -> (Interval from: minim to: maxim)
	]