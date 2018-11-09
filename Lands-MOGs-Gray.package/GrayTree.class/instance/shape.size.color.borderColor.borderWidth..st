visual-nodes
shape: shapeClass size: sizeOrNil color: shapeColor borderColor: shapeBorderColor borderWidth: bWidth
	| shape |
	shape := shapeClass new. 
	sizeOrNil ifNotNil: [ shape size: sizeOrNil]. 
	shape	
		color: shapeColor; 
		borderColor: shapeBorderColor;
		borderWidth: bWidth.
	^ shape