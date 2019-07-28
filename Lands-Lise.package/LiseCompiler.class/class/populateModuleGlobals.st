accessing
populateModuleGlobals
	
	self globals associationsDo: [ :assoc |
		LiseGlobals compile: 
			((WriteStream on: String new) 
				nextPutAll: (assoc key asString copyReplaceAll: ':' with: '');
				nextPut: Character cr;
				nextPut: Character cr;
				nextPut: Character tab;
				nextPutAll: '^ ';
				nextPutAll: assoc value printString;
				yourself) contents		
	]