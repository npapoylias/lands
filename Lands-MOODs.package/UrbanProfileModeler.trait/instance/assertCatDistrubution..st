accessing
assertCatDistrubution: assoc
	
	assoc do: [ :a | self assert: (a value values sum closeTo: 100.0) ] "float precision"