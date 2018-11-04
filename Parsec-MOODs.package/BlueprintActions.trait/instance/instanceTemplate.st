accessing
instanceTemplate

	^ super instanceTemplate ==> [ :values | 
		values size = 5
			ifTrue: [ values fourth ]
			ifFalse: [ values sixth ] "extends"	
	]