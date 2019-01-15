accessing
= otherCollection 
	|s|
	self == otherCollection ifTrue: [^ true].
	otherCollection isCollection ifFalse: [ ^ false ].
	(s := self size) = otherCollection size ifFalse: [^ false].
	1 to: s do:
		[:index |
		(self at: index) = (otherCollection at: index) ifFalse: [^ false]].
	^ true