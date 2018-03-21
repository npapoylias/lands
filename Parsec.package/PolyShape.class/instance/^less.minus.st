accessing
<- anotherShape

	shapeElement shape width: anotherShape shape width + 5.
	shapeElement shape height: anotherShape shape height + 5. "embed = size + center"
	^ self class new 
		shapeElement:(shapeElement shape + anotherShape shape) element "no layout"
