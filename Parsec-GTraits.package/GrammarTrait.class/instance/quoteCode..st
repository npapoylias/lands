compiler
quoteCode: code

	| s o |

	s := code readStream.
	o := String new writeStream. 
	[ s atEnd ] whileFalse: [  
		s peek = $' 
			ifTrue: [ s next. o nextPutAll: #($' $') ]
			ifFalse: [ o nextPut: s next ]	
	].
	
	^ o contents