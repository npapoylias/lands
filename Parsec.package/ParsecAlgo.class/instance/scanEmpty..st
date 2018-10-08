as yet unclassified
scanEmpty: aState

	charts nextAdd: 
		(aState asScannerStateFrom: aState to upTo: aState to ending: aState to withIndex: 1).
		
	^ true
	
