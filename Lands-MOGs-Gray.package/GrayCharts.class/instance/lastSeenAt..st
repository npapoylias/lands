recursive-ordering-api
lastSeenAt: aName
	^ self lastSeenIndex ifNotNil: [:top | top at: aName ifAbsent: [ nil ] ]