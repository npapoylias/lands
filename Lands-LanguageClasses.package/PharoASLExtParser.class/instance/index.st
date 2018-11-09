as yet unclassified
index

	^ super index ==> [ :values | 
		values size > 3  
			ifTrue: [ values second -> values fourth ] "slice"
			ifFalse: [ values second ]
		]