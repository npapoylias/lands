recursive-ordering-api
lastSeenAt: aName
	^ self lastSeenIndex at: aName ifAbsent: [ nil ] 