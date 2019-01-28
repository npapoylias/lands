*Lands-MOGs-Gray
doubleQuote
	
	|o| o := WriteStream on: String new.
	self  do: [ :c | 
		c == $' 
			ifTrue: [ o nextPutAll: '''''' ]  
			ifFalse: [o nextPut: c]
	].
	^ o contents