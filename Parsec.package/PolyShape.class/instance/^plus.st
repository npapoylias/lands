accessing
+ anotherShape

	|encompassingBox maxSize|

	RTVerticalLineLayout new gapSize: 0; on: { self shapeElement . anotherShape shapeElement }.
	encompassingBox := RTBox new element. "this should be color transparent"
	encompassingBox color: Color transparent. "this should be color transparent"
	RTNest new on: encompassingBox nest: { self shapeElement . anotherShape shapeElement }.
	^ self class new 
		shapeElement: encompassingBox;
		group: ((self group copy addAll: anotherShape group;yourself) add: encompassingBox; yourself)