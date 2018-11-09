initialization
initialize

	super initialize.

	readingPosition := 0.
	dummyRule := (#gamma --> #start , #Eof) asGammaStart.
	charts := GrayCharts new.
	logging := false.
	
