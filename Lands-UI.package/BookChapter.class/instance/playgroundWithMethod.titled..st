accessing
playgroundWithMethod: aSymbol titled: aTitle
	
	^ self playgroundWith: (self methodSource: aSymbol) titled: aTitle 