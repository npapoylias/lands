recursive-ordering-api
lastSeenAt: aName
	^ self lastSeenIndex
		ifNotNil: [ :top | "return index not position" top at: aName ifAbsent: [ nil ] ]