accessing
normalDistribution

	^ super normalDistribution ==> [ :values |  
		|median sigma minim maxim|
		median := (values at: 5) number.
		sigma := (values at:  9) number.
		minim := (values at: 13) number.
		maxim := (values at: 15) number.
		{ median . sigma } -> (Interval from: minim to: maxim)
	]