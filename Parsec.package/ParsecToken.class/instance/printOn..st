instance creation
printOn: aStream

	aStream 
		nextPutAll: self printString"; 
		nextPutAll: ' @ ('; 
		nextPutAll: (parsecState from + 1) asString; 
		nextPutAll: ',';
		nextPutAll: (parsecState to) asString;
		nextPutAll: ')'"