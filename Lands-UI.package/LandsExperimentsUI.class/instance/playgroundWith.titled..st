accessing
playgroundWith: aString titled: aTitle
	|pg|
	pg := GlamourPresentationModel new.
	pg 
		presentationClass: GTPlayground 
		startOn: (GTPlayPage new saveContent: aString; title: aTitle).
	^ pg