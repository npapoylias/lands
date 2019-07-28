*Lands-MOGs-Gray
canUnderstand: selector below: aClass
	"Answer whether the receiver can respond to the message whose selector 
	is the argument."

	^ self
		classAndMethodFor: selector
		do: [ :c :m | 
			c inheritsFrom: aClass 
		]
		ifAbsent: [ false ].