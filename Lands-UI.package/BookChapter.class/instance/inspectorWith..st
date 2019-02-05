accessing
inspectorWith: anObject
	|pg|
	pg := GlamourPresentationModel new.
	pg 
		presentationClass: GTInspector
		startOn: anObject.
	^ pg