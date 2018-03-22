accessing
* anotherShape
	
	RTNest new on: shapeElement nest: anotherShape shapeElement.
	^ self class new 
		shapeElement: shapeElement;
		group: (self group copy addAll: anotherShape group; yourself)