instance creation
printOn: aStream

	aStream 
		nextPutAll: self printString"; 
		nextPutAll: ' @ ('; 
		nextPutAll: (grayState from + 1) asString; 
		nextPutAll: ',';
		nextPutAll: (grayState to) asString;
		nextPutAll: ')'"