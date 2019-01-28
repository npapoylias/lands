accessing
icon

	^ self name first = $* 
		ifTrue: [self class image: item y]
		ifFalse: [ self class icon: item y ]
