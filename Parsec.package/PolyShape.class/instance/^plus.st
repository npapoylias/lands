accessing
+ anotherShape

	|encompassingBox|
	RTVerticalLineLayout new on: { self shapeElement . anotherShape shapeElement }.
	encompassingBox := RTBox new element. "this should be color transparent"
	RTNest new on: encompassingBox nest: { self shapeElement . anotherShape shapeElement }.
	^ self class new 
		shapeElement: encompassingBox;
		group: ((self group copy addAll: anotherShape group;yourself) add: encompassingBox; yourself)