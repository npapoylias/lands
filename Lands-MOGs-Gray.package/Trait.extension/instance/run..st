*Lands-MOGs-Gray
run: anArray

	self methods 
		detect: [ :m | m selector = #main ]
		ifFound: [ :m | ^ (m valueWithReceiver: nil arguments: #()) valueWithArguments: anArray ]

	