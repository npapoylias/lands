accessing
icon

	^ self name isEmpty 
		ifTrue: [self class image: item y]
		ifFalse: [ self class icon: item y ]
