compiling
balance: aString with: anotherString

	|diff|

	diff := aString size - anotherString size.
	^ (diff < 0)
		 ifTrue: [ aString , (String new: diff abs withAll: Character space) asString ]
		 ifFalse: [ aString ]
	
	