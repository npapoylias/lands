as yet unclassified
start

	
	^ super start ==> [ :tokens | env := Dictionary new. env -> (tokens collect: [:t | t value]) ] 