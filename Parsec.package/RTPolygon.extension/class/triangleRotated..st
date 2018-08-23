*Parsec
triangleRotated: angle
	^ self new
		vertices: (self generateUnitNgonPointsFitToSquare: 3 rotation: angle);
		yourself