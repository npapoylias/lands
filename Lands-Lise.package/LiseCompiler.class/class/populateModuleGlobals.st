accessing
populateModuleGlobals
	
	self globals associationsDo: [ :assoc |
		LiseGlobals compile: 
			((WriteStream on: String new) 
				nextPutAll: '(define ';
				nextPutAll: ((assoc key "isBinary 
									ifTrue: [ assoc key , ' b' ] ifFalse: [ assoc key ]")
									asString copyReplaceAll: ':' with: '');
				nextPutAll: ' (:';
				nextPut: Character cr;
				nextPut: Character cr;
				nextPut: Character tab;
				"nextPutAll: '^ ';"
				nextPutAll: assoc value printString;
				nextPutAll: '))';
				yourself) contents		
	]