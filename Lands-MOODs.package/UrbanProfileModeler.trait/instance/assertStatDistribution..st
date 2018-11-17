accessing
assertStatDistribution: statDist

	statDist isInterval
		ifTrue: [ self assert: statDist from <= statDist to ]
		ifFalse: [ |avg sigma interval|
			avg := statDist key first.
			sigma := statDist key second.
			interval := statDist value.
			self assertStatDistribution: interval.
			self assert: interval includes: avg.
			self assert: sigma > 0	
		]