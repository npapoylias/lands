accessing
"protocol: recursive-ordering-api"
lastSeenAt: aName
	|last|
	last :=  self lastSeenIndex. 
	^ last ifNotNil: [last at: aName ifAbsent: [ nil ]] "return index not position"