*Lands-MOGs-Gray
deepValue: aCollection

	^ aCollection collect: [ :item | 
		item isCollection
			ifTrue: [ self deepValue: item ]
			ifFalse: [ item value ]	
	]