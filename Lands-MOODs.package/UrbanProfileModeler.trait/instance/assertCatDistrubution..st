accessing
assertCatDistrubution: aDict
	
	self assert: (aDict values sum closeTo: 100.0) "float precision"