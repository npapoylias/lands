accessing
* anotherShape
	anotherShape shape width isNumber
		ifTrue: [ 
			shapeElement shape width: anotherShape shape width + 5.
			shapeElement shape height: anotherShape shape height + 5. "embed = size + center"
		] ifFalse: [  
			shapeElement shape width: [:e | (anotherShape shape width value: anotherShape shapeElement) + 5].
			shapeElement shape height: [:e | (anotherShape shape height value: anotherShape shapeElement) + 5]. "embed = size + center"
		].
	^ self class new 
		shapeElement:(shapeElement shape + anotherShape shape) element "no layout"