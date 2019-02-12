accessing
ruleLiteral
 
	^ super ruleLiteral ==> [ :value | 
		value isNode ifTrue: [ value ] ifFalse: [ value lit] 
	]