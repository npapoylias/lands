instance creation
newFrom: aCollection

	^ (self basicNew initialize: aCollection size) 
		addAll: aCollection; 
		yourself