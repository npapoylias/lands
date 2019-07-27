compiling
default

	^ self propertyAt: #default
		ifAbsent: [ self propertyAt: #default put: self new ]


	