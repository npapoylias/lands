initialization
initialize

	super initialize.

	readingPosition := 0.
	dummyRule := (#gamma --> #start , #Eof) asGammaStart.
	charts := ParsecCharts new.
	logging := false.
	
