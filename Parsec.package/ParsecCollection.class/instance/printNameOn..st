accessing
printNameOn: aStream
	
	aStream 
		nextPutAll: 'a Collection [';
		nextPutAll: currentSize asString;
		nextPutAll: ' items';
		nextPutAll: '] ' 