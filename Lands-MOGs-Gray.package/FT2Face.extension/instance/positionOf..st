*Lands-MOGs-Gray
positionOf: file
	|asArray|
	asArray := (1 to: file path size) collect: [ :i | file path at: i ].
	^ Smalltalk imageDirectory / (Path withAll: (((asArray indexOf: 'fonts') to: file path size) collect: [ :i | file path at: i ])) fullName.