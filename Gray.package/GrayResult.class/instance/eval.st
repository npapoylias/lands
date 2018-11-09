accessing
eval

	^ self results collect: [ :r | 
		r isBlock 
			ifTrue: [ r value ]
			ifFalse: [ r collect: [ :i | i value ] ] 
	] 