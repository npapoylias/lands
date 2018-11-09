as yet unclassified
parseval: aString assert: aBlock 
 
	|result|
   
	result := (LiseInterpreter parseval: aString).
   self assert: (aBlock value: result).
	