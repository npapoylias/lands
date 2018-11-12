accessing
default

	^ default ifNil: [ default := self basicNew initialize] 