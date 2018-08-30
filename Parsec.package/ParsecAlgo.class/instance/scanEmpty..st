as yet unclassified
scanEmpty: aState

	charts nextAdd: 
		(aState asScannerStateFrom: aState to to: aState to withIndex: 1).
		
	^ true
	
